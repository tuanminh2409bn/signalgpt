// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get accountUpgradedSuccessfully => 'AKUN BERHASIL DIPERBARUI';

  @override
  String get lotPerWeek => 'Lot/minggu';

  @override
  String get tableValueFull => 'penuh';

  @override
  String get tableValueFulltime => 'penuh waktu';

  @override
  String get packageTitle => 'PAKET';

  @override
  String get duration1Month => '1 bulan';

  @override
  String get duration12Months => '12 bulan';

  @override
  String get featureReceiveAllSignals => 'Terima semua sinyal hari ini';

  @override
  String get featureAnalyzeReason => 'Analisis alasan entri pesanan';

  @override
  String get featureHighPrecisionAI => 'Sinyal AI presisi tinggi';

  @override
  String get iapStoreNotAvailable => 'Toko tidak tersedia di perangkat ini.';

  @override
  String iapErrorLoadingProducts(Object message) {
    return 'Gagal memuat produk: $message';
  }

  @override
  String get iapNoProductsFound =>
      'Produk tidak ditemukan. Silakan periksa konfigurasi toko Anda.';

  @override
  String iapTransactionError(Object message) {
    return 'Kesalahan transaksi: $message';
  }

  @override
  String iapVerificationError(Object message) {
    return 'Kesalahan verifikasi: $message';
  }

  @override
  String iapUnknownError(Object error) {
    return 'Terjadi kesalahan yang tidak diketahui: $error';
  }

  @override
  String get iapProcessingTransaction => 'Memproses transaksi...';

  @override
  String get orderInfo1Month => 'Pembayaran untuk paket Elite 1 bulan';

  @override
  String get orderInfo12Months => 'Pembayaran untuk paket Elite 12 bulan';

  @override
  String get iapNotSupportedOnWeb =>
      'Pembelian dalam aplikasi tidak didukung pada versi web.';

  @override
  String get vnpayPaymentTitle => 'PEMBAYARAN VNPAY';

  @override
  String get creatingOrderWait => 'Membuat pesanan, harap tunggu...';

  @override
  String errorWithMessage(Object message) {
    return 'Kesalahan: $message';
  }

  @override
  String get cannotConnectToServer =>
      'Tidak dapat terhubung ke server. Silakan coba lagi.';

  @override
  String get transactionCancelledOrFailed =>
      'Transaksi telah dibatalkan atau gagal.';

  @override
  String get cannotCreatePaymentLink =>
      'Tidak dapat membuat tautan pembayaran.\nCoba lagi.';

  @override
  String get retry => 'Coba Lagi';

  @override
  String serverErrorRetry(Object message) {
    return 'Kesalahan server: $message. Silakan coba lagi.';
  }

  @override
  String get redirectingToPayment => 'Mengalihkan ke halaman pembayaran...';

  @override
  String get invalidPaymentUrl =>
      'URL pembayaran tidak valid diterima dari server.';

  @override
  String get processingYourAccount => 'Memproses akun Anda...';

  @override
  String get verificationFailed => 'Verifikasi Gagal!';

  @override
  String get reuploadImage => 'Unggah Ulang Gambar';

  @override
  String get accountNotLinked => 'Akun Tidak Tertaut ke Signal GPT';

  @override
  String get accountNotLinkedDesc =>
      'Untuk mendapatkan sinyal eksklusif, akun Exness Anda harus terdaftar melalui tautan mitra Signal GPT. Silakan buat akun baru menggunakan tautan di bawah ini.';

  @override
  String get registerExnessViaSignalGPT => 'Daftar Exness via Signal GPT';

  @override
  String get iHaveRegisteredReupload => 'Saya sudah mendaftar, unggah ulang';

  @override
  String couldNotLaunch(Object url) {
    return 'Tidak dapat meluncurkan $url';
  }

  @override
  String get status => 'Status';

  @override
  String get sentOn => 'Dikirim pada';

  @override
  String get entryPrice => 'Harga masuk';

  @override
  String get stopLossFull => 'Stop loss';

  @override
  String get takeProfitFull1 => 'Take profit 1';

  @override
  String get takeProfitFull2 => 'Take profit 2';

  @override
  String get takeProfitFull3 => 'Take profit 3';

  @override
  String get noReasonProvided =>
      'Tidak ada alasan yang diberikan untuk sinyal ini.';

  @override
  String get upgradeToViewReason =>
      'Tingkatkan akun Anda ke Elite untuk melihat analisis.';

  @override
  String get upgradeToViewFullAnalysis =>
      'Tingkatkan untuk Melihat Analisis Lengkap';

  @override
  String get loginWithoutAccount => 'Masuk tanpa akun';

  @override
  String get welcomeTo => 'Selamat datang di';

  @override
  String get appSlogan => 'Tingkatkan perdagangan Anda dengan sinyal cerdas.';

  @override
  String get signIn => 'Masuk';

  @override
  String get continueByGoogle => 'Lanjutkan dengan Google';

  @override
  String get continueByFacebook => 'Lanjutkan dengan Facebook';

  @override
  String get continueByApple => 'Lanjutkan dengan Apple';

  @override
  String get loginSuccess => 'Login berhasil!';

  @override
  String get live => 'LANGSUNG';

  @override
  String get end => 'SELESAI';

  @override
  String get symbol => 'SIMBOL';

  @override
  String get aiSignal => 'Sinyal AI';

  @override
  String get ruleSignal => 'SINYAL ATURAN';

  @override
  String get all => 'SEMUA';

  @override
  String get upgradeToSeeMore => 'Tingkatkan untuk melihat lebih banyak';

  @override
  String get seeDetails => 'lihat detail';

  @override
  String get notMatched => 'TIDAK COCOK';

  @override
  String get matched => 'COCOK';

  @override
  String get entry => 'Masuk';

  @override
  String get stopLoss => 'SL';

  @override
  String get takeProfit1 => 'TP1';

  @override
  String get takeProfit2 => 'TP2';

  @override
  String get takeProfit3 => 'TP3';

  @override
  String get upgrade => 'Tingkatkan';

  @override
  String get upgradeAccount => 'TINGKATKAN AKUN';

  @override
  String get compareTiers => 'BANDINGKAN TINGKAT';

  @override
  String get feature => 'Fitur';

  @override
  String get tierDemo => 'Demo';

  @override
  String get tierVIP => 'VIP';

  @override
  String get tierElite => 'Elite';

  @override
  String get balance => 'Saldo';

  @override
  String get signalTime => 'Waktu sinyal';

  @override
  String get signalQty => 'Jml Sinyal';

  @override
  String get analysis => 'Analisis';

  @override
  String get openExnessAccount => 'Buka akun Exness!';

  @override
  String get accountVerificationWithExness => 'Verifikasi akun dengan Exness';

  @override
  String get payInAppToUpgrade => 'Bayar di aplikasi untuk meningkatkan';

  @override
  String get bankTransferToUpgrade => 'Transfer Bank untuk Meningkatkan';

  @override
  String get accountVerification => 'VERIFIKASI AKUN';

  @override
  String get accountVerificationPrompt =>
      'Harap unggah tangkapan layar akun Exness Anda untuk diotorisasi (akun Anda harus dibuka di bawah tautan Exness Signal GPT)';

  @override
  String get selectPhotoFromLibrary => 'Pilih foto dari perpustakaan';

  @override
  String get send => 'Kirim';

  @override
  String get accountInfo => 'Informasi Akun';

  @override
  String get accountVerifiedSuccessfully => 'AKUN BERHASIL DIVERIFIKASI';

  @override
  String get yourAccountIs => 'Akun Anda adalah';

  @override
  String get returnToHomePage => 'Kembali ke beranda';

  @override
  String get upgradeFailed => 'Peningkatan gagal! Silakan unggah ulang gambar';

  @override
  String get package => 'PAKET';

  @override
  String get startNow => 'Dapatkan Sinyal Sekarang';

  @override
  String get bankTransfer => 'TRANSFER BANK';

  @override
  String get transferInformation => 'INFORMASI TRANSFER';

  @override
  String get scanForFastTransfer => 'Pindai untuk transfer cepat';

  @override
  String get contactUs247 => 'Hubungi Kami 24/7';

  @override
  String get newAnnouncement => 'PENGUMUMAN BARU';

  @override
  String get profile => 'Profil';

  @override
  String get upgradeNow => 'Tingkatkan Sekarang';

  @override
  String get followSignalGPT => 'Ikuti Signal GPT';

  @override
  String get tabSignal => 'Sinyal';

  @override
  String get tabChart => 'Grafik';

  @override
  String get tabProfile => 'Profil';

  @override
  String get reason => 'ALASAN';

  @override
  String get error => 'Kesalahan';

  @override
  String get noSignalsAvailable => 'Tidak ada sinyal tersedia.';

  @override
  String get outOfGoldenHours => 'Di Luar Jam Emas';

  @override
  String get outOfGoldenHoursVipDesc =>
      'Sinyal VIP tersedia dari pukul 08:00 hingga 17:00 (GMT+7).\nTingkatkan ke Elite untuk mendapatkan sinyal 24/24!';

  @override
  String get outOfGoldenHoursDemoDesc =>
      'Sinyal Demo tersedia dari pukul 08:00 hingga 17:00 (GMT+7).\nTingkatkan akun Anda untuk manfaat lebih!';

  @override
  String get yourName => 'Nama Anda';

  @override
  String get yourEmail => 'email.anda@contoh.com';

  @override
  String get adminPanel => 'Panel Admin';

  @override
  String get logout => 'Keluar';

  @override
  String get confirmLogout => 'Konfirmasi Keluar';

  @override
  String get confirmLogoutMessage => 'Apakah Anda yakin ingin keluar?';

  @override
  String get cancel => 'Batal';

  @override
  String get upgradeCardTitle => 'TINGKATKAN AKUN ANDA';

  @override
  String get upgradeCardSubtitle => 'Untuk mengakses lebih banyak sumber daya';

  @override
  String get upgradeCardSubtitleWeb =>
      'Untuk membuka sinyal premium dan dukungan penuh waktu';

  @override
  String get subscriptionDetails => 'Detail Langganan';

  @override
  String get notifications => 'Pemberitahuan';

  @override
  String get continueAsGuest => 'Lanjutkan sebagai Tamu';

  @override
  String get deleteAccount => 'Hapus Akun';

  @override
  String get deleteAccountWarning =>
      'Apakah Anda yakin ingin menghapus akun Anda? Semua data Anda akan dihapus secara permanen dan tidak dapat dipulihkan.';

  @override
  String get delete => 'Hapus';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get termsOfService => 'Syarat Layanan';

  @override
  String get signalStatusMatched => 'COCOK';

  @override
  String get signalStatusNotMatched => 'TIDAK COCOK';

  @override
  String get signalStatusCancelled => 'DIBATALKAN';

  @override
  String get signalStatusSlHit => 'SL TERCAPAI';

  @override
  String get signalStatusTp1Hit => 'TP1 TERCAPAI';

  @override
  String get signalStatusTp2Hit => 'TP2 TERCAPAI';

  @override
  String get signalStatusTp3Hit => 'TP3 TERCAPAI';

  @override
  String get signalStatusRunning => 'BERJALAN';

  @override
  String get signalStatusClosed => 'DITUTUP';

  @override
  String get contactUs => 'Hubungi Kami';

  @override
  String get tabChat => 'Obrolan';

  @override
  String get exnessUpgradeNoteForIos =>
      'Bagi pelanggan yang telah mendaftarkan akun Exness melalui Signal GPT, silakan klik hubungi kami agar akun Anda ditingkatkan.';

  @override
  String get chatWelcomeTitle => '👋 Selamat datang di Signal GPT!';

  @override
  String get chatWelcomeBody1 =>
      'Silakan tinggalkan pesan, tim kami akan merespons sesegera mungkin.';

  @override
  String get chatWelcomeBody2 =>
      'Atau hubungi kami langsung via Zalo/WhatsApp: ';

  @override
  String get chatWelcomeBody3 => ' untuk dukungan lebih cepat!';

  @override
  String get chatLoginPrompt => 'Silakan masuk untuk menggunakan fitur ini';

  @override
  String get chatStartConversation => 'Mulai percakapan Anda';

  @override
  String get chatNoMessages => 'Belum ada pesan.';

  @override
  String get chatTypeMessage => 'Ketik pesan...';

  @override
  String get chatSupportIsTyping => 'Dukungan sedang mengetik...';

  @override
  String chatUserIsTyping(Object userName) {
    return '$userName sedang mengetik...';
  }

  @override
  String get chatSeen => 'Dilihat';

  @override
  String get chatDefaultUserName => 'Pengguna';

  @override
  String get chatDefaultSupportName => 'Dukungan';

  @override
  String get signalEntry => 'Masuk';

  @override
  String get price1Month => '\$11.99';

  @override
  String get price12Months => '\$89.00';

  @override
  String get price12MonthsOld => '\$178.00';

  @override
  String get foreignTraderSupport =>
      'Untuk pedagang asing, silakan hubungi kami via WhatsApp (Signal GPT) untuk dukungan';

  @override
  String get signalSl => 'SL';

  @override
  String get upgradeToSeeDetails => 'Tingkatkan untuk melihat detail sinyal...';

  @override
  String get buy => 'BELI';

  @override
  String get sell => 'JUAL';

  @override
  String get logoutDialogTitle => 'Sesi Berakhir';

  @override
  String get logoutDialogDefaultReason =>
      'Akun Anda telah masuk di perangkat lain.';

  @override
  String get ok => 'OKE';

  @override
  String get contactToUpgrade => 'Hubungi untuk meningkatkan';

  @override
  String get noNotificationsYet => 'Belum ada pemberitahuan.';

  @override
  String get markAllRead => 'Tandai semua sudah dibaca';

  @override
  String daysAgo(int count) {
    return '$count hari yang lalu';
  }

  @override
  String hoursAgo(int count) {
    return '$count jam yang lalu';
  }

  @override
  String minutesAgo(int count) {
    return '$count menit yang lalu';
  }

  @override
  String get justNow => 'Baru saja';

  @override
  String get getSignalsNow => 'Dapatkan Sinyal Sekarang';

  @override
  String get freeTrial => 'Uji Coba Gratis';

  @override
  String get heroTitle => 'Membimbing Pedagang & Mengembangkan Portofolio';

  @override
  String get heroSubtitle => 'Mesin AI Terbaik – Dirancang oleh Pedagang Ahli';

  @override
  String get globalAiInnovationTitle =>
      'Inovasi AI Global untuk Generasi Kecerdasan Perdagangan Berikutnya';

  @override
  String get globalAiInnovationDesc =>
      'Mengubah perdagangan tradisional dengan sinyal AI bertenaga cloud — adaptif terhadap berita dan tren pasar real-time\nuntuk kinerja yang lebih cepat, lebih presisi, dan bebas emosi.';

  @override
  String get liveTradingSignalsTitle => 'LANGSUNG – Sinyal Perdagangan AI 24/7';

  @override
  String get liveTradingSignalsDesc =>
      'Analitik cloud real-time memberikan strategi mengikuti tren probabilitas tinggi dengan presisi adaptif dan eksekusi bebas emosi.';

  @override
  String get trendFollowing => 'Mengikuti Tren';

  @override
  String get realtime => 'Real-time';

  @override
  String get orderExplanationEngineTitle => 'Mesin Penjelasan Pesanan';

  @override
  String get orderExplanationEngineDesc =>
      'Menjelaskan pengaturan perdagangan dalam istilah sederhana — menunjukkan bagaimana pertemuan terbentuk, mengapa entri dilakukan, dan membantu pedagang belajar dari setiap keputusan.';

  @override
  String get transparent => 'Transparan';

  @override
  String get educational => 'Edukasi';

  @override
  String get logical => 'Logis';

  @override
  String get transparentRealPerformanceTitle => 'Transparan - Kinerja Nyata';

  @override
  String get transparentRealPerformanceDesc =>
      'Lihat data nyata tentang akurasi sinyal, tingkat keberhasilan, dan profitabilitas — terverifikasi dan dapat dilacak di setiap perdagangan';

  @override
  String get results => 'Hasil';

  @override
  String get performanceTracking => 'Pelacakan Kinerja';

  @override
  String get accurate => 'Akurat';

  @override
  String get predictiveAccuracy => 'Akurasi Prediktif';

  @override
  String get improvementInProfitability => 'Peningkatan Profitabilitas';

  @override
  String get improvedRiskManagement => 'Manajemen Risiko yang Ditingkatkan';

  @override
  String get signalsPerformanceTitle => 'Kinerja Sinyal';

  @override
  String get riskToRewardRatio => 'Rasio Risiko-terhadap-Imbalan';

  @override
  String get howRiskComparesToReward =>
      'Bagaimana risiko dibandingkan dengan imbalan';

  @override
  String get profitLossOverview => 'Ikhtisar Laba/Rugi';

  @override
  String get netGainVsLoss => 'Keuntungan bersih vs kerugian';

  @override
  String get winRate => 'Tingkat Kemenangan';

  @override
  String get percentageOfWinningTrades => 'Persentase perdagangan yang menang';

  @override
  String get accuracyRate => 'Tingkat Akurasi';

  @override
  String get howPreciseOurSignalsAre => 'Seberapa presisi sinyal kami';

  @override
  String get realtimeMarketAnalysis => 'Analisis Pasar Real-Time';

  @override
  String get realtimeMarketAnalysisDesc =>
      'AI kami memantau pasar terus menerus, mengidentifikasi zona konvergensi teknis dan titik penembusan yang andal sehingga Anda dapat memasuki perdagangan pada saat yang tepat.';

  @override
  String get saveTimeOnAnalysis => 'Hemat Waktu Analisis';

  @override
  String get saveTimeOnAnalysisDesc =>
      'Tidak ada lagi jam yang dihabiskan untuk membaca grafik. Terima strategi investasi yang disesuaikan hanya dalam beberapa menit sehari.';

  @override
  String get minimizeEmotionalTrading => 'Minimalkan Perdagangan Emosional';

  @override
  String get minimizeEmotionalTradingDesc =>
      'Dengan peringatan cerdas, deteksi risiko, dan sinyal berbasis data bukan emosi Anda tetap disiplin dan mengendalikan setiap keputusan.';

  @override
  String get seizeEveryOpportunity => 'Raih Setiap Peluang';

  @override
  String get seizeEveryOpportunityDesc =>
      'Pembaruan strategi tepat waktu yang dikirim langsung ke kotak masuk Anda memastikan Anda mengikuti tren pasar pada waktu yang tepat.';

  @override
  String get minvestAiCoreValueTitle => 'Signal GPT - Nilai Inti';

  @override
  String get minvestAiCoreValueDesc =>
      'AI menganalisis data pasar real-time terus menerus, memfilter wawasan untuk mengidentifikasi peluang investasi yang cepat dan akurat';

  @override
  String get frequentlyAskedQuestions =>
      'Pertanyaan yang Sering Diajukan (FAQ)';

  @override
  String get faqSubtitle =>
      'Semua pertanyaan Anda — dari cara bergabung, manfaatnya, hingga cara kerja AI kami — dijawab tepat di bawah ini. Jika Anda masih ragu, jangan ragu untuk mengirim pesan kepada kami di Whatsapp';

  @override
  String get maximizeResultsTitle =>
      'Maksimalkan hasil Anda dengan Signal GPT\nanalisis pasar tingkat lanjut dan sinyal yang difilter dengan presisi';

  @override
  String get elevateTradingWithAiStrategies =>
      'Tingkatkan perdagangan Anda dengan strategi yang ditingkatkan AI yang dibuat untuk konsistensi dan kejelasan';

  @override
  String get winMoreWithAiSignalsTitle =>
      'Menangkan Lebih Banyak dengan Sinyal Bertenaga AI\ndi Setiap Pasar';

  @override
  String get winMoreWithAiSignalsDesc =>
      'AI multi-pasar kami memindai Currency pair, Kripto, dan Logam secara real-time,\nmemberikan sinyal perdagangan yang divalidasi ahli —\ndengan level entri, stop-loss, dan take-profit yang jelas';

  @override
  String get buyLimit => 'Batas beli';

  @override
  String get sellLimit => 'Batas jual';

  @override
  String get smarterToolsTitle => 'Alat Lebih Cerdas - Investasi Lebih Baik';

  @override
  String get smarterToolsDesc =>
      'Temukan fitur yang membantu Anda meminimalkan risiko, memanfaatkan peluang, dan menumbuhkan kekayaan Anda';

  @override
  String get performanceOverviewTitle => 'Ikhtisar Kinerja';

  @override
  String get performanceOverviewDesc =>
      'AI multi-pasar kami memindai Currency pair, Kripto, dan Logam secara real-time, memberikan sinyal perdagangan yang divalidasi ahli - dengan level entri, stop-loss, dan take-profit yang jelas';

  @override
  String get totalProfit => 'Total Keuntungan';

  @override
  String get completionSignal => 'Sinyal penyelesaian';

  @override
  String get onDemandFinancialExpertTitle =>
      'Ahli Keuangan Sesuai Permintaan Anda';

  @override
  String get onDemandFinancialExpertDesc =>
      'Platform AI menyarankan sinyal perdagangan - belajar sendiri, menganalisis pasar 24/7, tidak terpengaruh oleh emosi. Signal GPT telah mendukung lebih dari 10.000 analis keuangan dalam perjalanan mereka untuk menemukan sinyal yang akurat, stabil, dan mudah diterapkan';

  @override
  String get aiPoweredSignalPlatform =>
      'Platform Sinyal Perdagangan Bertenaga AI';

  @override
  String get selfLearningSystems =>
      'Sistem Belajar Sendiri, Wawasan Lebih Tajam, Perdagangan Lebih Kuat';

  @override
  String get emotionlessExecution =>
      'Eksekusi Tanpa Emosi Untuk Perdagangan yang Lebih Cerdas dan Disiplin';

  @override
  String get analysingMarket247 => 'Menganalisis pasar 24/7';

  @override
  String get maximizeResultsFeaturesTitle =>
      'Maksimalkan hasil Anda dengan Signal GPT\nanalisis pasar tingkat lanjut dan sinyal yang difilter dengan presisi';

  @override
  String get minvestAiRegistrationDesc =>
      'Pendaftaran Signal GPT sekarang dibuka — tempat mungkin segera ditutup karena kami meninjau dan menyetujui anggota baru';

  @override
  String get currencyPairs => 'Komoditas';

  @override
  String get allCurrencyPairs => 'Semua Pasangan Mata Uang';

  @override
  String get allCommodities => 'Semua Komoditas';

  @override
  String get allCryptoPairs => 'Semua Pasangan Kripto';

  @override
  String get dateRange => 'Rentang Tanggal';

  @override
  String get selectDateRange => 'Pilih Rentang Tanggal';

  @override
  String get allAssets => 'Semua Aset';

  @override
  String get asset => 'Aset';

  @override
  String get tokenExpired => 'Token kedaluwarsa';

  @override
  String get tokenLimitReachedDesc =>
      'Anda telah menggunakan 10 token gratis Anda hari ini. Tingkatkan paket Anda untuk melihat lebih banyak sinyal.';

  @override
  String get later => 'Nanti';

  @override
  String get created => 'Dibuat';

  @override
  String get detail => 'Detail';

  @override
  String get performanceOverview => 'Ikhtisar Kinerja';

  @override
  String get totalProfitPips => 'Total Keuntungan (Pips)';

  @override
  String get winRatePercent => 'Tingkat Kemenangan (%)';

  @override
  String get comingSoon => 'Segera hadir';

  @override
  String get errorLoadingHistory => 'Kesalahan memuat riwayat';

  @override
  String get noHistoryAvailable => 'Tidak ada riwayat sinyal tersedia';

  @override
  String get previous => 'Sebelumnya';

  @override
  String get page => 'Halaman';

  @override
  String get next => 'Berikutnya';

  @override
  String get date => 'Tanggal';

  @override
  String get timeGmt7 => 'Waktu';

  @override
  String get orders => 'Pesanan';

  @override
  String get pips => 'Pips';

  @override
  String get smallScreenRotationHint =>
      'Layar kecil: putar lanskap atau gulir horizontal untuk melihat tabel lengkap.';

  @override
  String get history => 'Riwayat';

  @override
  String get signalsWillAppearHere =>
      'Sinyal akan muncul di sini saat tersedia';

  @override
  String get pricing => 'Harga';

  @override
  String get choosePlanSubtitle => 'Pilih rencana yang cocok untuk Anda';

  @override
  String get financialNewsHub => 'Pusat Berita Keuangan';

  @override
  String get financialNewsHubDesc =>
      'Pembaruan penting. Reaksi pasar. Tidak ada gangguan – hanya apa yang perlu diketahui investor.';

  @override
  String get newsTabAllArticles => 'Semua Artikel';

  @override
  String get newsTabInvestor => 'Investor';

  @override
  String get newsTabKnowledge => 'Pengetahuan';

  @override
  String get newsTabTechnicalAnalysis => 'Analisis Teknis';

  @override
  String noArticlesForCategory(Object category) {
    return 'Tidak ada artikel untuk kategori $category';
  }

  @override
  String get mostPopular => 'Paling populer';

  @override
  String get noPosts => 'Tidak ada postingan';

  @override
  String get relatedArticles => 'Artikel terkait';

  @override
  String get contactInfoSentSuccess => 'Informasi kontak berhasil dikirim.';

  @override
  String contactInfoSentFailed(Object error) {
    return 'Gagal mengirim informasi: $error';
  }

  @override
  String get contactPageSubtitle =>
      'Punya pertanyaan atau butuh solusi AI? Beri tahu kami dengan mengisi formulir, dan kami akan menghubungi Anda!';

  @override
  String get phone => 'Telepon';

  @override
  String get firstName => 'Nama Depan';

  @override
  String get enterFirstName => 'Masukkan Nama Depan';

  @override
  String get lastName => 'Nama Belakang';

  @override
  String get enterLastName => 'Masukkan Nama Belakang';

  @override
  String get whatAreYourConcerns => 'Apa Kekhawatiran Anda?';

  @override
  String get writeConcernsHere => 'Tulis Kekhawatiran Di Sini...';

  @override
  String pleaseEnter(Object field) {
    return 'Silakan masukkan $field';
  }

  @override
  String get faqQuestion1 =>
      'Apakah sinyal memastikan tingkat keberhasilan 100%?';

  @override
  String get faqAnswer1 =>
      'Meskipun tidak ada sinyal yang dapat dijamin 100%, Signal GPT berusaha untuk mempertahankan tingkat keberhasilan stabil 60–80%, didukung oleh analisis terperinci dan manajemen risiko sehingga Anda dapat membuat keputusan akhir dengan lebih percaya diri.';

  @override
  String get faqQuestion2 =>
      'Jika saya tidak ingin deposit segera, bisakah saya tetap menerima saran sinyal?';

  @override
  String get faqAnswer2 =>
      'Saat membuka akun, sistem akan memberi Anda 10 token gratis, setara dengan 10 tampilan sinyal terperinci. Setelah itu, Anda akan menerima 1 token tambahan setiap hari untuk digunakan. Jika Anda meningkatkan ke akun VIP, Anda akan membuka banyak fitur canggih dan melacak jumlah pesanan yang tidak terbatas.';

  @override
  String get faqQuestion3 =>
      'Jika saya sudah mendaftar tetapi belum menerima sinyal apa pun, langkah apa yang harus saya ambil?';

  @override
  String get faqAnswer3 =>
      'Pemrosesan biasanya otomatis. Jika Anda masih tidak melihat saran sinyal, silakan hubungi kami via Whatsapp untuk bantuan instan.';

  @override
  String get faqQuestion4 =>
      'Berapa banyak sinyal yang akan saya terima per hari saat meningkatkan ke akun VIP?';

  @override
  String get faqAnswer4 =>
      'Saat meningkatkan ke akun VIP, Anda akan menerima sinyal perdagangan tanpa batas setiap hari. Jumlah sinyal tidak tetap tetapi bergantung sepenuhnya pada analisis pasar. Kapan pun titik masuk berkualitas tinggi dan probabilitas tinggi muncul, tim analisis akan segera mengirimkan sinyal kepada Anda.';

  @override
  String get priceLevels => 'Level Harga';

  @override
  String get capitalManagement => 'Manajemen Modal';

  @override
  String freeSignalsLeft(Object count) {
    return '$count sinyal gratis tersisa';
  }

  @override
  String get unlimitedSignals => 'Sinyal tanpa batas';

  @override
  String get goBack => 'Kembali';

  @override
  String get goldPlan => 'Rencana Emas';

  @override
  String get perMonth => '/ bulan';

  @override
  String get continuouslyUpdating => 'Terus memperbarui data pasar 24/7';

  @override
  String get providingBestSignals =>
      'Menyediakan sinyal terbaik secara real time';

  @override
  String get includesEntrySlTp => 'Termasuk Entri, SL, TP';

  @override
  String get detailedAnalysis =>
      'Analisis dan evaluasi terperinci dari setiap sinyal';

  @override
  String get realTimeNotifications => 'Pemberitahuan real-time via email';

  @override
  String get signalPerformanceStats => 'Statistik kinerja sinyal';

  @override
  String get companyName => 'Signal GPT';

  @override
  String get enterpriseCodeDetails => 'Nomor Registrasi Bisnis: Signal GPT';

  @override
  String get addressDetails => 'Alamat: Signal GPT';

  @override
  String get pagesTitle => 'Halaman';

  @override
  String get legalRegulatoryTitle => 'Hukum & Peraturan';

  @override
  String get termsOfRegistration => 'Syarat Pendaftaran';

  @override
  String get operatingPrinciples => 'Prinsip Operasional';

  @override
  String get termsConditions => 'Syarat & Ketentuan';

  @override
  String get contactTitle => 'Kontak';

  @override
  String get navFeatures => 'Fitur';

  @override
  String get navNews => 'Berita';

  @override
  String get tp1Hit => 'TP1 Tercapai';

  @override
  String get tp2Hit => 'TP2 Tercapai';

  @override
  String get tp3Hit => 'TP3 Tercapai';

  @override
  String get slHit => 'SL Tercapai';

  @override
  String get cancelled => 'Dibatalkan';

  @override
  String get exitedByAdmin => 'Dikeluarkan oleh Admin';

  @override
  String get signalClosed => 'Ditutup';

  @override
  String get errorLoadingPackages => 'Kesalahan Memuat Paket';

  @override
  String get monthly => 'Bulanan';

  @override
  String get annually => 'Tahunan';

  @override
  String get whatsIncluded => 'Apa yang disertakan:';

  @override
  String get chooseThisPlan => 'Pilih rencana ini';

  @override
  String get bestPricesForPremiumAccess => 'Harga Terbaik untuk Akses Premium';

  @override
  String get choosePlanFitsNeeds =>
      'Pilih rencana yang sesuai dengan kebutuhan bisnis Anda dan mulailah mengotomatisasi dengan AI';

  @override
  String get save50Percent => 'HEMAT 50%';

  @override
  String get save40Percent => 'HEMAT 40%';

  @override
  String get save65Percent => 'HEMAT 65%';

  @override
  String get tryDemo => 'Coba demo';

  @override
  String get pleaseEnterEmailPassword =>
      'Silakan masukkan email dan kata sandi';

  @override
  String loginFailed(String error) {
    return 'Login gagal: $error';
  }

  @override
  String get welcomeBack => 'Selamat Datang Kembali';

  @override
  String get signInToContinue => 'Masuk ke akun Anda untuk melanjutkan';

  @override
  String get or => 'atau';

  @override
  String get email => 'Email';

  @override
  String get emailHint => 'contoh123@gmail.com';

  @override
  String get password => 'Kata Sandi';

  @override
  String get enterPassword => 'Masukkan Kata Sandi';

  @override
  String get forgotPassword => 'Lupa kata sandi Anda?';

  @override
  String get createNewAccount => 'Buat akun baru di sini!';

  @override
  String get signUp => 'Daftar';

  @override
  String get signUpAccount => 'Daftar Akun';

  @override
  String get enterPersonalData =>
      'Masukkan data pribadi Anda untuk membuat akun Anda';

  @override
  String get nameLabel => 'Nama *';

  @override
  String get enterNameHint => 'Masukkan Nama';

  @override
  String get emailLabel => 'Email *';

  @override
  String get passwordLabel => 'Kata Sandi *';

  @override
  String get phoneLabel => 'Telepon';

  @override
  String get continueButton => 'Lanjutkan';

  @override
  String get fillAllFields => 'Harap isi semua bidang yang wajib diisi.';

  @override
  String get accountCreatedSuccess => 'Akun berhasil dibuat.';

  @override
  String signUpFailed(String error) {
    return 'Pendaftaran gagal: $error';
  }

  @override
  String get nationality => 'Kewarganegaraan:';

  @override
  String get overview => 'Ikhtisar';

  @override
  String get setting => 'Pengaturan';

  @override
  String get paymentHistory => 'Riwayat Pembayaran';

  @override
  String get signalsPlan => 'Rencana Sinyal';

  @override
  String get aiSignalGPT => 'AI Signal GPT';

  @override
  String get yourTokens => 'Token Anda';

  @override
  String get emailNotificationPreferences => 'Preferensi Pemberitahuan Email';

  @override
  String get chooseSignalNotificationTypes =>
      'Pilih jenis pemberitahuan sinyal yang ingin Anda terima via email';

  @override
  String get allSignalNotifications => 'Semua Pemberitahuan Sinyal';

  @override
  String get cryptoSignals => 'Sinyal Kripto';

  @override
  String get forexSignals => 'Sinyal Currency pair';

  @override
  String get goldSignals => 'Sinyal Emas';

  @override
  String get updatePasswordSecure =>
      'Perbarui kata sandi Anda untuk menjaga keamanan akun Anda';

  @override
  String get searchLabel => 'Cari:';

  @override
  String get filterBy => 'Filter berdasarkan:';

  @override
  String get allTime => 'Sepanjang Waktu';

  @override
  String get startDate => 'Tanggal Mulai:';

  @override
  String get endDate => 'Tanggal Akhir:';

  @override
  String get deactivate => 'Nonaktifkan';

  @override
  String get unlimited => 'Tak Terbatas';

  @override
  String get tenLeft => 'tersisa 10';

  @override
  String get termsOfRegistrationContent =>
      'Please read all the terms and agreements below carefully before proceeding with the next steps in our system.\nBy registering an account on the Signal GPT system, you confirm and understand that you have read and fully agreed to all the terms stated in these Terms and Conditions.\n\n1. Introduction and Scope of Application\n\nThis policy regulates the collection, use, sharing, and protection of users’ personal information when accessing and using the products and services of the Signal GPT system – a technology and artificial intelligence platform owned and operated by Signal GPT (hereinafter referred to as “we” or “us”).\nBy registering an account or using Signal GPT’s products, you agree that such action constitutes a legally binding commitment between you and us, equivalent to an electronic contract.\n\n2. Account Registration\n\nTo access and use certain services on Signal GPT, you must register a valid account.\nWhen registering, you are required to provide complete and accurate personal information, including your full name, email address, phone number, or any other information as requested.\nAfter registration, you must confirm your email to activate the account. All notifications about your account, promotions, or system updates will be sent to this email address.\nIf the information you provide is inaccurate or incomplete, you will be solely responsible for any incidents or damages arising from it.\n\n3. Terms of Use\n\nWhen participating in the Signal GPT system, you are obligated to comply with all of the following:\nThe operating principles of the platform;\nPayment terms;\nPersonal data privacy policy;\nRelevant laws and regulations in effect.\nIn the event of a violation, Signal GPT reserves the right to temporarily suspend or permanently delete your account, and may transfer the case to competent authorities if necessary.\n\n4. Personal Data Privacy Policy\n\n4.1. Purpose and Scope of ... [truncated]';

  @override
  String get operatingPrinciplesContent =>
      'Please read all terms and agreements below carefully before proceeding with the next steps in our system. \nBy registering an account on the Signal GPT system, you confirm and understand that you have read and fully agreed to all the terms stated in these Terms and Conditions.\n\nOPERATING RULES\n\n1. Legal Information\n\nSystem Owner:\nSignal GPT\nAddress: Signal GPT\nBusiness/Tax Code: Signal GPT\nPhone: Signal GPT\n\n2. Scope of Application\n\nThese Operating Principles apply to all users, learners, partners, and collaborators who participate in or use the products and services within the Signal GPT system, including websites, applications, training platforms, and other online channels managed by Signal GPT.\nBy registering an account or using the services of Signal GPT, users are deemed to have read, understood, and agreed to all the terms set forth in these regulations.\n\n3. Definitions\n\n“Signal GPT” refers to the technology and artificial intelligence platform owned by Signal GPT.\n“Customer” / “User” / “Learner” refers to any individual or organization that registers, accesses, or uses the services and products on the Signal GPT system.\n“We” / “Administration” refers to the management team representing Signal GPT, responsible for operating and managing the system.\n“Products” / “Services” include learning packages, analytical newsletters, AI trading signals, analytical tools, or any digital content provided by Signal GPT.\n\n4. Usage Rules and Information Security\n\nUsers must provide accurate and complete information when registering an account.\nSignal GPT is committed to protecting personal information and will not disclose it to third parties unless required by competent authorities.\nUsers are responsible for maintaining the confidentiality of their account and pa... [truncated]';

  @override
  String get termsAndConditionsContent =>
      'By registering an account to participate in the Signal GPT system, you confirm that you have read, understood, and agreed to all the contents of these Account Opening Terms and Conditions.\nThe latest updates (if any) will be published here, and Signal GPT will not send separate notifications to each customer. Therefore, please visit this page regularly to stay informed about the most recent policies.\n\n1. General Agreement\n\nSignal GPT is a technology and artificial intelligence platform owned by Signal GPT. By opening an account on this system, you agree to participate in and use the services and products provided by Signal GPT.\nAccount registration and activation are considered an electronic contract between you and Signal GPT, which has the same legal validity as a civil contract under the laws of Vietnam.\n\n2. Personal Account Information and Privacy\n\n2.1. Purpose and Scope of Information Collection\n\nTo access and use certain Signal GPT services, you must provide basic personal information, including:\nFull name;\nEmail address;\nContact phone number;\nOther information (if any) necessary for verification, support, or access authorization.\nAll information provided must be accurate, truthful, and lawful. Signal GPT shall not be responsible for any losses or disputes arising from false, missing, or fraudulent information provided by the user.\nAdditionally, the system may automatically collect certain technical data, such as:\nIP address, browser type, and language used;\nAccess time and pages viewed within the system.\nThis information helps Signal GPT improve performance, enhance security, and optimize user experience.\n\n2.2. Scope of Information Use\n\nYour personal information is collected and used for legitimate purposes, including:\nManaging accounts, verifying users, and maintaining services;\nSending notifications related to services, accounts, promotions, or policy changes;\nProv... [truncated]';

  @override
  String get performance => 'Kinerja';

  @override
  String get minvestSupport => 'Signal GPT Support';

  @override
  String get leaveMessagePart1 =>
      'Silakan tinggalkan pesan, tim kami akan merespons sesegera mungkin. Anda juga dapat menghubungi ';

  @override
  String get chatWhatsApp => 'WhatsApp';

  @override
  String get leaveMessagePart2 => ' Signal GPT untuk dukungan cepat.';

  @override
  String get currentPlan => 'Paket Saat Ini';

  @override
  String get standard => 'STANDARD';

  @override
  String get availableTokens => 'Token Tersedia';

  @override
  String get subscriptions => 'Langganan';

  @override
  String get usesTokenPerView => 'Menggunakan 1 Token per tampilan';

  @override
  String get unlimitedAccess => 'Akses Tak Terbatas';

  @override
  String get activeElite => 'Aktif (Elite)';

  @override
  String get active => 'Aktif';

  @override
  String get inactive => 'Tidak Aktif';

  @override
  String get transactionHistory => 'Riwayat Transaksi';

  @override
  String get noTransactionsFound => 'Tidak ada transaksi ditemukan.';

  @override
  String get colDate => 'Tanggal';

  @override
  String get colProduct => 'Produk';

  @override
  String get colAmount => 'Jumlah';

  @override
  String get colMethod => 'Metode';

  @override
  String get colStatus => 'Status';

  @override
  String get statusSuccess => 'Berhasil';

  @override
  String get featureForVipOnly =>
      'Fitur ini hanya untuk pelanggan VIP, silakan tingkatkan untuk menerima pemberitahuan.';

  @override
  String get changePassword => 'Ubah Kata Sandi';

  @override
  String get currentPassword => 'Kata Sandi Saat Ini';

  @override
  String get newPassword => 'Kata Sandi Baru';

  @override
  String get confirmNewPassword => 'Konfirmasi Kata Sandi Baru';

  @override
  String get passwordsDoNotMatch => 'Kata sandi tidak cocok';

  @override
  String get passwordUpdateSuccess => 'Kata sandi berhasil diperbarui';

  @override
  String passwordUpdateFailed(String error) {
    return 'Gagal memperbarui kata sandi:$error';
  }

  @override
  String get reauthFailed => 'Kata sandi saat ini salah';

  @override
  String get signInRequired => 'Diperlukan Masuk';

  @override
  String get signInToExploreSignal =>
      'Masuk untuk menjelajahi sinyal perdagangan ini!';

  @override
  String get activeMember => 'Anggota Aktif';

  @override
  String get last7Days => '7 hari terakhir';

  @override
  String get last14Days => '14 hari terakhir';

  @override
  String get last30Days => '30 hari terakhir';

  @override
  String get last90Days => '90 hari terakhir';

  @override
  String get profitStatistics => 'Statistik Keuntungan';

  @override
  String get winrateOfAllSignals => 'Tingkat kemenangan semua sinyal';

  @override
  String get daily => 'Harian';

  @override
  String get weekly => 'Mingguan';

  @override
  String get lossRate => 'Tingkat kerugian';

  @override
  String get signalProgress => 'Progres Sinyal';

  @override
  String get statusHistory => 'Riwayat Status';

  @override
  String get signalCreated => 'Sinyal Dibuat';

  @override
  String get signalMatched => 'Sinyal Cocok';

  @override
  String get targetReached => 'Target tercapai';

  @override
  String get freeSignalsInfo => 'Info Sinyal Gratis';

  @override
  String get freeSignalsInfoDesc =>
      'Anda akan menerima 1 sinyal gratis per hari.\nSinyal yang tidak terpakai akan diakumulasi ke hari berikutnya.';

  @override
  String freeSignalsCount(int count) {
    return '$count Sinyal Gratis';
  }

  @override
  String get close => 'Tutup';

  @override
  String validUntil(String date) {
    return 'Berlaku hingga $date';
  }

  @override
  String get wins => 'Menang';

  @override
  String get losses => 'Kalah';

  @override
  String totalOrdersCount(int count) {
    return 'Total: $count pesanan';
  }

  @override
  String get passwordResetEmailSent =>
      'Email reset kata sandi telah dikirim! Silakan periksa kotak masuk Anda.';

  @override
  String get pageOf => '/';

  @override
  String get keyFindings => 'Temuan Utama';

  @override
  String get filterStatusLabel => 'Status';

  @override
  String get filterStatusAll => 'Semua Status';

  @override
  String get filterStatusTp1 => 'TP1 HIT';

  @override
  String get filterStatusTp2 => 'TP2 HIT';

  @override
  String get filterStatusTp3 => 'TP3 HIT';

  @override
  String get filterStatusSl => 'SL HIT';

  @override
  String get filterStatusCancelled => 'DIBATALKAN';

  @override
  String get filterStatusExitByAdmin => 'KELUAR OLEH ADMIN';

  @override
  String get popupMasterMarket => 'Ingin menguasai pasar?';

  @override
  String get popupLoginExplore =>
      'Masuk untuk menjelajahi buletin perdagangan ini!';

  @override
  String get disclaimer => 'Penafian';

  @override
  String get disclaimerContent =>
      'Informasi di signalgpt.ai hanya untuk tujuan referensi dan berbagi pengetahuan, dan bukan merupakan saran investasi. Pengguna bertanggung jawab sepenuhnya atas keputusan perdagangan mereka sendiri.';

  @override
  String get openTradingAccount => 'Buka Akun Perdagangan';

  @override
  String get supportUs => 'Dukung Kami';

  @override
  String get rateApp => 'Nilai Aplikasi';

  @override
  String get shareApp => 'Bagikan Aplikasi';

  @override
  String get accountDetails => 'Detail Akun';

  @override
  String get language => 'Bahasa';

  @override
  String get termsOfUse => 'Syarat Penggunaan';

  @override
  String get accounts => 'Akun';

  @override
  String get accessExchange => 'Akses Bursa';

  @override
  String get onlineSupport => 'Dukungan Online';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get left => 'tersisa';

  @override
  String get upgradeToPro => 'Tingkatkan ke Pro';

  @override
  String get assetGold => 'Emas';

  @override
  String get assetCrypto => 'Kripto';

  @override
  String get assetForex => 'PASANGAN MATA UANG';

  @override
  String get tokens => 'Token';

  @override
  String get noForexAssets => 'Tidak ada aset PASANGAN MATA UANG tersedia';

  @override
  String openApp(String appName) {
    return 'Buka $appName';
  }

  @override
  String get signalStatus => 'Status';

  @override
  String get signalEntryLabel => 'MASUK';

  @override
  String get signalSlLabel => 'SL';

  @override
  String get signalTp1Label => 'TP1';

  @override
  String get signalTp2Label => 'TP2';

  @override
  String get signalTp3Label => 'TP3';

  @override
  String get analyze => 'Analisis';

  @override
  String get useTokenToView => 'Gunakan Token untuk melihat Sinyal';

  @override
  String get viewNow => 'Lihat Sekarang';

  @override
  String get waitingNewSignals => 'Menunggu sinyal baru...';

  @override
  String get failedUnlockSignal => 'Gagal membuka sinyal';

  @override
  String get notEnoughTokens => 'Token tidak cukup';

  @override
  String get newSignalUploaded => 'Sinyal baru diunggah';

  @override
  String newSymbolSignalUploaded(String symbol) {
    return 'Sinyal $symbol baru telah diunggah!';
  }

  @override
  String get upgradeToViewSignalBanner => 'Tingkatkan untuk Melihat Sinyal';

  @override
  String get signalHistory => 'Riwayat Sinyal';

  @override
  String get allStatus => 'SEMUA';

  @override
  String get selectDate => 'Pilih Tanggal';

  @override
  String get noHistoryFound => 'Tidak ada riwayat ditemukan';

  @override
  String get filterDate => 'Tanggal';

  @override
  String get marketChart => 'GRAFIK PASAR';

  @override
  String get analysisExplanation => 'Analisis & Penjelasan';

  @override
  String get noDetailedAnalysis =>
      'Tidak ada analisis terperinci tersedia untuk sinyal ini.';

  @override
  String get affiliateDashboard => 'Dasbor Afiliasi';

  @override
  String get referralLink => 'Tautan Referral';

  @override
  String get copyLink => 'Salin Tautan';

  @override
  String get referralCount => 'Jumlah Referral';

  @override
  String get totalEarnings => 'Total Pendapatan';

  @override
  String get pendingCommission => 'Komisi Tertunda';

  @override
  String get latestReferrals => 'Referral Terbaru';

  @override
  String get noReferralsYet => 'Belum ada referral.';

  @override
  String get affiliateRoleRequired =>
      'Peran afiliasi diperlukan. Silakan hubungi admin.';

  @override
  String get affiliateCodeNotAssigned =>
      'Kode afiliasi belum ditetapkan. Silakan hubungi admin.';

  @override
  String get referralLinkDescription =>
      'Gunakan tautan ini untuk merujuk pengguna dan dapatkan komisi seumur hidup 40%.';

  @override
  String get linkCopied => 'Tautan disalin ke clipboard!';

  @override
  String get enterReferralCode => 'Masukkan Kode Referral';

  @override
  String get referralCodeDescription =>
      'Enter referral code to receive exclusive offers from our partners.';

  @override
  String get referralCode => 'Kode Referral';

  @override
  String get submit => 'Kirim';

  @override
  String get invalidReferralCode => 'Kode referral tidak valid.';

  @override
  String get referralCodeApplied => 'Kode referral berhasil diterapkan!';

  @override
  String get getTheAppForBestExperience =>
      'Dapatkan aplikasi untuk pengalaman terbaik';

  @override
  String get installApp => 'Instal Aplikasi';

  @override
  String get reviews => 'Ulasan';

  @override
  String get priceLifetime => '\$249.00';

  @override
  String get priceLifetimeOld => '\$712.00';

  @override
  String get durationLifetime => 'Seumur Hidup';

  @override
  String get orderInfoLifetime => 'Pembayaran untuk paket Elite Seumur Hidup';

  @override
  String get lifetime => 'Seumur Hidup';

  @override
  String get loginNow => 'Masuk sekarang';

  @override
  String get loginToViewSignals => 'Masuk untuk melihat sinyal';

  @override
  String get loginToViewSignalsDesc =>
      'Silakan masuk untuk melihat sinyal Signal GPT dan mengakses semua fitur.';

  @override
  String get loginToViewHistory => 'Masuk untuk melihat riwayat';

  @override
  String get loginToViewHistoryDesc =>
      'Riwayat sinyal hanya tersedia untuk pengguna yang sudah masuk. Silakan masuk untuk melacak kinerja dari Signal GPT.';

  @override
  String get letsGetYouIn => 'Mari Masuk!';

  @override
  String get dontHaveAnAccount => 'Belum punya akun? ';

  @override
  String get createAccount => 'Buat Akun';

  @override
  String get createYourAccount => 'Buat akun Anda';

  @override
  String get login => 'Masuk';

  @override
  String get rememberYourPassword => 'Ingat Kata Sandi Anda';

  @override
  String get signInWith => 'Masuk dengan';

  @override
  String get getStarted => 'Mulai';

  @override
  String get pleaseEnterEmail => 'Silakan masukkan email Anda';

  @override
  String get pleaseEnterPassword => 'Silakan masukkan kata sandi Anda';

  @override
  String get pleaseEnterCurrentPassword =>
      'Silakan masukkan kata sandi Anda saat ini';

  @override
  String get pleaseEnterNewPassword => 'Silakan masukkan kata sandi baru Anda';

  @override
  String get pleaseConfirmNewPassword =>
      'Silakan konfirmasi kata sandi baru Anda';

  @override
  String get pleaseConfirmPassword => 'Silakan konfirmasi kata sandi Anda';

  @override
  String get passwordMinLength => 'Kata sandi harus minimal 6 karakter';

  @override
  String get savePassword => 'Simpan Kata Sandi';

  @override
  String get verifyYourEmail => 'Verifikasi Email Anda';

  @override
  String get pleaseEnterVerificationCode =>
      'Silakan masukkan kode 6 digit\nyang dikirim ke email Anda';

  @override
  String get pleaseEnterAllDigits => 'Silakan masukkan semua 6 digit';

  @override
  String get invalidOrExpiredCode =>
      'Kode verifikasi tidak valid atau sudah kedaluwarsa';

  @override
  String get anErrorOccurred => 'Terjadi kesalahan. Silakan coba lagi.';

  @override
  String get verificationCodeResent => 'Kode verifikasi dikirim ulang!';

  @override
  String failedToResendCode(String error) {
    return 'Gagal mengirim ulang kode: $error';
  }

  @override
  String get resendCode => 'Kirim ulang kode';

  @override
  String get verify => 'Verifikasi';

  @override
  String get resetPassword => 'Reset Kata Sandi';

  @override
  String get forgotPasswordInstructions =>
      'Silakan masukkan alamat email yang Anda gunakan untuk mendaftar\n\nKami akan mengirim kode verifikasi ke alamat email Anda.';

  @override
  String get sendButton => 'Kirim';

  @override
  String get unableToReceiveEmail =>
      'Jika Anda tidak dapat menerima email, silakan hubungi kami di @gmail.com';

  @override
  String get verificationCodeSentTo => 'Kami telah mengirim kode verifikasi ke';

  @override
  String get passwordResetSuccessful => 'Reset kata sandi berhasil!';

  @override
  String errorGeneric(String message) {
    return 'Kesalahan: $message';
  }

  @override
  String get accountAlreadyExists => 'Akun sudah ada';

  @override
  String accountAlreadyExistsMessage(String email) {
    return 'Email $email sudah terdaftar di sistem. Silakan masuk atau gunakan fitur lupa kata sandi.';
  }

  @override
  String systemError(String error) {
    return 'Kesalahan sistem: $error';
  }

  @override
  String get confirmPassword => 'Konfirmasi Kata Sandi';

  @override
  String get referralCodeOptional => 'Kode Referral (Opsional)';

  @override
  String get accountDeletedSuccessfully =>
      'Akun telah dihapus secara permanen.';

  @override
  String accountDeleteError(String error) {
    return 'Kesalahan menghapus akun: $error';
  }

  @override
  String get passwordChangedSuccessfully => 'Kata sandi berhasil diubah!';

  @override
  String get errorChangingPassword =>
      'Kesalahan mengubah kata sandi. Silakan periksa kata sandi Anda saat ini.';

  @override
  String get enableNotificationsHint =>
      'Aktifkan pemberitahuan di pengaturan perangkat untuk melihat pembaruan baru di layar kunci';

  @override
  String get navigateToDeviceSettings => 'Buka pengaturan perangkat.';

  @override
  String get turnOffAllNotifications => 'Matikan semua pemberitahuan';

  @override
  String get pauseAllNotifications => 'Jeda semua pemberitahuan';

  @override
  String get turnOnCryptoSignals => 'Aktifkan sinyal kripto';

  @override
  String get turnOnCurrencyPairSignals => 'Aktifkan sinyal pasangan mata uang';

  @override
  String get turnOnGoldSignals => 'Aktifkan sinyal emas';

  @override
  String get currencyPairSignals => 'Sinyal Pasangan Mata Uang';

  @override
  String get termsOfUseContent =>
      'Dengan mengakses atau menggunakan aplikasi ini, Anda setuju untuk mematuhi Syarat Penggunaan. Aplikasi ini disediakan hanya untuk tujuan informasi, dan kami tidak menjamin keakuratan, kelengkapan, atau keandalan konten atau sinyal yang ditampilkan. Anda bertanggung jawab sepenuhnya atas cara Anda menggunakan informasi yang disediakan dalam aplikasi. Kami berhak untuk mengubah, menangguhkan, atau menghentikan layanan kapan saja tanpa pemberitahuan sebelumnya. Penggunaan aplikasi yang berkelanjutan merupakan penerimaan terhadap syarat yang diperbarui.';

  @override
  String get tradingHistoryTitle => 'Riwayat Perdagangan';

  @override
  String get tp1Live => 'TP1 LANGSUNG';

  @override
  String get tp2Live => 'TP2 LANGSUNG';

  @override
  String get tp3Live => 'TP3 LANGSUNG';

  @override
  String get stopLossTriggered => 'Stop loss terpicu';

  @override
  String entryWithPrice(String price) {
    return 'Masuk: $price';
  }

  @override
  String get signalGptTitle => 'Signal GPT';

  @override
  String get categoryGold => 'EMAS';

  @override
  String get categoryCrypto => 'KRIPTO';

  @override
  String get subscriptionAutoRenewDisclaimer =>
      'Langganan akan diperpanjang secara otomatis kecuali dibatalkan setidaknya 24 jam sebelum akhir periode saat ini. Anda dapat mengelola dan membatalkan langganan di pengaturan akun App Store. Paket Seumur Hidup adalah pembelian satu kali.';

  @override
  String get termsOfUseEula => 'Syarat Penggunaan (EULA)';

  @override
  String productNotFound(String productId) {
    return 'Produk tidak ditemukan: $productId. Pastikan sudah dikonfigurasi di toko.';
  }

  @override
  String get perYear => '/ tahun';

  @override
  String get tierDemoSignalQty => '7-8 per hari';

  @override
  String get elite1Month => 'ELITE 1 Bulan';

  @override
  String get elite12Months => 'ELITE 12 Bulan';

  @override
  String get statusPending => 'Menunggu';

  @override
  String get statusFailed => 'Gagal';

  @override
  String get yourReferralCode => 'Kode referral Anda';

  @override
  String get referralCodeCopied => 'Kode referral disalin!';

  @override
  String get copyCode => 'Salin Kode';

  @override
  String get revenue => 'Pendapatan';

  @override
  String get availableCommission => 'Komisi tersedia';

  @override
  String get totalReceivedIncome => 'Total pendapatan diterima';

  @override
  String depositAmount(String amount) {
    return 'Deposit: \$$amount';
  }

  @override
  String get importantNotice => 'Pemberitahuan Penting';

  @override
  String get accountChangedPleaseRelogin =>
      'Akun Anda telah berubah. Silakan masuk kembali.';

  @override
  String get iUnderstand => 'Saya mengerti';

  @override
  String get saveUpTo65Percent => 'HEMAT HINGGA 65%';

  @override
  String get yearlyLifetimeDiscount => 'Tahunan -40% • Seumur Hidup -65%';

  @override
  String get uploadFailedPermissionDenied =>
      'Unggah gagal: Izin ditolak. Periksa Aturan Penyimpanan.';

  @override
  String get failedToUploadImage =>
      'Gagal mengunggah gambar. Silakan periksa koneksi Anda.';
}
