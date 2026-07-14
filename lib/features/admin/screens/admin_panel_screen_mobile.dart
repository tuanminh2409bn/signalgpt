// lib/features/admin/screens/admin_panel_screen_mobile.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:minvest_forex_app/features/admin/services/admin_service.dart';
import 'package:minvest_forex_app/features/admin/screens/affiliate_management_view.dart';

class AdminPanelScreen extends StatefulWidget {
  const AdminPanelScreen({super.key});

  @override
  State<AdminPanelScreen> createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  final AdminService _adminService = AdminService();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  final ScrollController _scrollController = ScrollController();
  final List<DocumentSnapshot> _users = [];
  bool _isLoading = false;
  bool _hasMore = true;
  DocumentSnapshot? _lastDoc;
  final int _limit = 50;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _fetchUsers(refresh: true);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200 && !_isLoading && _hasMore) {
      _fetchUsers();
    }
  }

  Future<void> _fetchUsers({bool refresh = false}) async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
      if (refresh) {
        _users.clear();
        _lastDoc = null;
        _hasMore = true;
      }
    });

    try {
      Query query = FirebaseFirestore.instance.collection('users');

      if (_searchQuery.isEmpty) {
        query = query.orderBy('createdAt', descending: true);
      } else {
        query = query
            .where('email', isGreaterThanOrEqualTo: _searchQuery)
            .where('email', isLessThanOrEqualTo: '$_searchQuery\uf8ff')
            // Firestore requires ordering by the field used in inequality filter first.
            // Since we are searching, we order by email.
            .orderBy('email'); 
      }

      query = query.limit(_limit);

      if (_lastDoc != null) {
        query = query.startAfterDocument(_lastDoc!);
      }

      final snapshot = await query.get();

      if (snapshot.docs.isNotEmpty) {
        _lastDoc = snapshot.docs.last;
        _users.addAll(snapshot.docs);
      }
      
      if (snapshot.docs.length < _limit) {
        _hasMore = false;
      }
    } catch (e) {
      debugPrint('Error fetching users: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Lỗi tải danh sách người dùng')));
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  // Helper to format dates
  String _formatDate(dynamic date) {
    if (date == null) return 'N/A';
    if (date is Timestamp) return DateFormat('dd/MM/yy').format(date.toDate());
    return 'N/A';
  }

  // Robust helper to get package date
  dynamic _getPackageDate(Map<String, dynamic> userData, String fieldPrefix, String packageKey) {
    final nested = userData[fieldPrefix];
    if (nested is Map<String, dynamic>) {
      final lowerKey = packageKey.toLowerCase();
      for (final k in nested.keys) {
        if (k.toLowerCase() == lowerKey) return nested[k];
      }
    }
    return null;
  }

  // --- UPDATE ACTIONS ---
  Future<void> _updateTokenBalance(String userId, int currentBalance) async {
    final controller = TextEditingController(text: currentBalance.toString());
    final newBalance = await showDialog<int>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cập nhật Token'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: const InputDecoration(labelText: 'Số lượng Token'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Hủy')),
          FilledButton(
            onPressed: () => Navigator.pop(context, int.tryParse(controller.text)),
            child: const Text('Lưu'),
          ),
        ],
      ),
    );

    if (newBalance != null && newBalance != currentBalance) {
      await FirebaseFirestore.instance.collection('users').doc(userId).update({'tokenBalance': newBalance});
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Đã cập nhật token!')));
    }
  }

  Future<void> _updatePackageDates(String userId, String packageKey, Timestamp? currentStart, Timestamp? currentExpiry) async {
    final DateTime? startDate = await showDatePicker(
      context: context,
      initialDate: currentStart?.toDate() ?? DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 365 * 2)),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
      helpText: 'Ngày BẮT ĐẦU gói ${packageKey.toUpperCase()}',
      cancelText: 'Hủy Gói',
    );

    if (!mounted) return;

    if (startDate != null) {
      final DateTime? expiryDate = await showDatePicker(
        context: context,
        initialDate: currentExpiry?.toDate() ?? startDate.add(const Duration(days: 30)),
        firstDate: startDate,
        lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
        helpText: 'Ngày HẾT HẠN gói ${packageKey.toUpperCase()}',
      );

      if (!mounted || expiryDate == null) return;

      final Map<String, dynamic> updates = {
        'subscriptionsStart.$packageKey': Timestamp.fromDate(startDate),
        'subscriptionsExpiry.$packageKey': Timestamp.fromDate(expiryDate),
        'activeSubscriptions': FieldValue.arrayUnion([packageKey]),
      };

      if (packageKey == 'elite') {
        updates['subscriptionTier'] = 'elite';
        updates['subscriptionExpiryDate'] = Timestamp.fromDate(expiryDate);
        updates['activeSubscriptions'] = FieldValue.arrayUnion(['elite', 'gold', 'forex', 'crypto']);
      }

      await FirebaseFirestore.instance.collection('users').doc(userId).update(updates);
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Đã cập nhật gói ${packageKey.toUpperCase()}!')));
      }
    } else {
      if (currentStart != null || currentExpiry != null) {
        final confirmDelete = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Xóa gói ${packageKey.toUpperCase()}?'),
            content: const Text('Người dùng sẽ mất quyền truy cập vào gói này.'),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Hủy')),
              TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Xóa', style: TextStyle(color: Colors.red))),
            ],
          ),
        );

        if (confirmDelete == true) {
          final Map<String, dynamic> updates = {
            'subscriptionsStart.$packageKey': FieldValue.delete(),
            'subscriptionsExpiry.$packageKey': FieldValue.delete(),
            'activeSubscriptions': FieldValue.arrayRemove([packageKey]),
          };

          if (packageKey == 'elite') {
            updates['subscriptionTier'] = 'free';
            updates['subscriptionExpiryDate'] = FieldValue.delete();
            updates['activeSubscriptions'] = FieldValue.arrayRemove(['elite', 'gold', 'forex', 'crypto']);
          }

          await FirebaseFirestore.instance.collection('users').doc(userId).update(updates);
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Đã xóa gói ${packageKey.toUpperCase()}!')));
        }
      }
    }
  }

  void _handleTierUpdate(String userId, String currentTier) {
    showDialog(
      context: context,
      builder: (context) => _UpdateUserTierDialog(
        initialTier: currentTier,
        onConfirm: (tier, reason) async {
          final message = await _adminService.updateUserSubscriptionTier(
            userIds: [userId],
            tier: tier,
            reason: reason,
          );
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quản lý Người dùng'),
        actions: [
          IconButton(
            icon: const Icon(Icons.people_alt_outlined, color: Colors.blue),
            tooltip: 'Quản lý Affiliate',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AffiliateManagementView()),
            ),
          ),
          const SizedBox(width: 8),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Tìm theo Email...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty 
                  ? IconButton(icon: const Icon(Icons.clear), onPressed: () {
                      _searchController.clear();
                      _searchQuery = '';
                      _fetchUsers(refresh: true);
                    })
                  : null,
                filled: true,
                fillColor: Colors.white.withOpacity(0.05),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              onChanged: (value) {
                _searchQuery = value.trim().toLowerCase();
                _fetchUsers(refresh: true);
              },
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => _fetchUsers(refresh: true),
        child: _users.isEmpty && _isLoading
            ? const Center(child: CircularProgressIndicator())
            : _users.isEmpty
                ? const Center(child: Text('Không tìm thấy người dùng.'))
                : ListView.builder(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: _users.length + (_hasMore ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == _users.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      
                      final doc = _users[index];
                      final userData = doc.data() as Map<String, dynamic>;
                      final userId = doc.id;
                      final role = userData['role'] ?? 'user';
                      final tier = (userData['subscriptionTier'] as String?)?.toLowerCase() ?? 'free';
                      
                      // Ưu tiên hiển thị Affiliate nếu role là affiliate
                      final displayStatus = role == 'affiliate' ? 'affiliate' : tier;
                      
                      final tokens = userData['tokenBalance'] ?? 0;
                      final activeSubs = List<String>.from(userData['activeSubscriptions'] ?? []);

                      return Card(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        color: const Color(0xFF161616),
                        child: ExpansionTile(
                          leading: CircleAvatar(
                            backgroundColor: _getTierColor(displayStatus).withOpacity(0.2),
                            child: Text(displayStatus[0].toUpperCase(), style: TextStyle(color: _getTierColor(displayStatus))),
                          ),
                          title: Text(userData['displayName'] ?? 'No Name', style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(userData['email'] ?? 'No Email', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  _buildActionRow('Tier (Role)', displayStatus.toUpperCase(), _getTierColor(displayStatus), () => _handleTierUpdate(userId, displayStatus)),
                                  const Divider(height: 24),
                                  _buildActionRow('Token Balance', tokens.toString(), Colors.blue, () => _updateTokenBalance(userId, tokens is int ? tokens : 0)),
                                  const Divider(height: 24),
                                  _buildPackageRow(userId, 'ELITE PLAN', 
                                    _getPackageDate(userData, 'subscriptionsStart', 'elite'), 
                                    _getPackageDate(userData, 'subscriptionsExpiry', 'elite'), 
                                    activeSubs.contains('elite')),
                                  const SizedBox(height: 8),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('Registered: ${_formatDate(userData['createdAt'])}', style: const TextStyle(fontSize: 11, color: Colors.grey)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
      ),
    );
  }

  Widget _buildActionRow(String label, String value, Color color, VoidCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: color.withOpacity(0.5)),
            ),
            child: Row(
              children: [
                Text(value, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
                const SizedBox(width: 8),
                const Icon(Icons.edit, size: 14, color: Colors.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPackageRow(String userId, String name, dynamic start, dynamic expiry, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: isActive ? Colors.green : Colors.grey)),
            const SizedBox(height: 4),
            Text('Start: ${_formatDate(start)}', style: const TextStyle(fontSize: 11, color: Colors.grey)),
            Text('Expiry: ${_formatDate(expiry)}', style: TextStyle(fontSize: 11, color: isActive ? Colors.redAccent : Colors.grey)),
          ],
        ),
        IconButton(
          onPressed: () => _updatePackageDates(userId, name.toLowerCase(), start as Timestamp?, expiry as Timestamp?),
          icon: const Icon(Icons.calendar_month, size: 20, color: Colors.blue),
        ),
      ],
    );
  }

  Color _getTierColor(String tier) {
    switch (tier) {
      case 'elite': return Colors.purple;
      case 'affiliate': return Colors.green;
      case 'free': return Colors.grey;
      default: return Colors.grey;
    }
  }
}

class _UpdateUserTierDialog extends StatefulWidget {
  final String? initialTier;
  final Function(String tier, String reason) onConfirm;

  const _UpdateUserTierDialog({this.initialTier, required this.onConfirm});

  @override
  State<_UpdateUserTierDialog> createState() => __UpdateUserTierDialogState();
}

class __UpdateUserTierDialogState extends State<_UpdateUserTierDialog> {
  late String _selectedTier;

  @override
  void initState() {
    super.initState();
    _selectedTier = widget.initialTier ?? 'free';
    if (!['free', 'elite', 'affiliate'].contains(_selectedTier)) _selectedTier = 'free';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Cập nhật Role'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownButtonFormField<String>(
            value: _selectedTier,
            decoration: const InputDecoration(labelText: 'Chọn Role', border: OutlineInputBorder()),
            items: ['free', 'elite', 'affiliate'].map((t) => DropdownMenuItem(value: t, child: Text(t.toUpperCase()))).toList(),
            onChanged: (v) => setState(() => _selectedTier = v!),
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Hủy')),
        FilledButton(onPressed: () {
          widget.onConfirm(_selectedTier, "Admin Update");
          Navigator.pop(context);
        }, child: const Text('Xác nhận')),
      ],
    );
  }
}
