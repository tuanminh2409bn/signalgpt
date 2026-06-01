// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get accountUpgradedSuccessfully => '账户升级成功';

  @override
  String get lotPerWeek => '手数/周';

  @override
  String get tableValueFull => '全部';

  @override
  String get tableValueFulltime => '全职';

  @override
  String get packageTitle => '套餐';

  @override
  String get duration1Month => '1 个月';

  @override
  String get duration12Months => '12 个月';

  @override
  String get featureReceiveAllSignals => '接收当天的所有信号';

  @override
  String get featureAnalyzeReason => '分析入场原因';

  @override
  String get featureHighPrecisionAI => '高精度 AI 信号';

  @override
  String get iapStoreNotAvailable => '此设备无法使用商店。';

  @override
  String iapErrorLoadingProducts(Object message) {
    return '加载产品错误：$message';
  }

  @override
  String get iapNoProductsFound => '未找到产品。请检查您的商店配置。';

  @override
  String iapTransactionError(Object message) {
    return '交易错误：$message';
  }

  @override
  String iapVerificationError(Object message) {
    return '验证错误：$message';
  }

  @override
  String iapUnknownError(Object error) {
    return '发生未知错误：$error';
  }

  @override
  String get iapProcessingTransaction => '正在处理交易...';

  @override
  String get orderInfo1Month => '支付 Elite 1 个月套餐';

  @override
  String get orderInfo12Months => '支付 Elite 12 个月套餐';

  @override
  String get iapNotSupportedOnWeb => '网页版不支持应用内购买。';

  @override
  String get vnpayPaymentTitle => 'VNPAY 支付';

  @override
  String get creatingOrderWait => '正在创建订单，请稍候...';

  @override
  String errorWithMessage(Object message) {
    return '错误：$message';
  }

  @override
  String get cannotConnectToServer => '无法连接到服务器。请重试。';

  @override
  String get transactionCancelledOrFailed => '交易已取消或失败。';

  @override
  String get cannotCreatePaymentLink => '无法创建支付链接.\n请重试。';

  @override
  String get retry => '重试';

  @override
  String serverErrorRetry(Object message) {
    return '服务器错误：$message。请重试。';
  }

  @override
  String get redirectingToPayment => '正在跳转到支付页面...';

  @override
  String get invalidPaymentUrl => '从服务器收到无效的支付链接。';

  @override
  String get processingYourAccount => '正在处理您的账户...';

  @override
  String get verificationFailed => '验证失败！';

  @override
  String get reuploadImage => '重新上传图片';

  @override
  String get accountNotLinked => '账户未关联到 Signal GPT';

  @override
  String get accountNotLinkedDesc =>
      '为了获得独家信号，您的 Exness 账户必须通过 Signal GPT 合作伙伴链接注册。请使用下面的链接创建一个新账户。';

  @override
  String get registerExnessViaSignalGPT => '通过 Signal GPT 注册 Exness';

  @override
  String get iHaveRegisteredReupload => '我已经注册，重新上传';

  @override
  String couldNotLaunch(Object url) {
    return '无法启动 $url';
  }

  @override
  String get status => '状态';

  @override
  String get sentOn => '发送于';

  @override
  String get entryPrice => '入场价格';

  @override
  String get stopLossFull => '止损';

  @override
  String get takeProfitFull1 => '止盈 1';

  @override
  String get takeProfitFull2 => '止盈 2';

  @override
  String get takeProfitFull3 => '止盈 3';

  @override
  String get noReasonProvided => '此信号未提供原因。';

  @override
  String get upgradeToViewReason => '升级您的账户至 Elite 以查看分析。';

  @override
  String get upgradeToViewFullAnalysis => '升级以查看完整分析';

  @override
  String get loginWithoutAccount => '免登录体验';

  @override
  String get welcomeTo => '欢迎来到';

  @override
  String get appSlogan => '通过智能信号提升您的交易。';

  @override
  String get signIn => '登录';

  @override
  String get continueByGoogle => '继续使用 Google';

  @override
  String get continueByFacebook => '继续使用 Facebook';

  @override
  String get continueByApple => '继续使用 Apple';

  @override
  String get loginSuccess => '登录成功！';

  @override
  String get live => '实时';

  @override
  String get end => '结束';

  @override
  String get symbol => '交易对';

  @override
  String get aiSignal => 'AI 信号';

  @override
  String get ruleSignal => '规则信号';

  @override
  String get all => '全部';

  @override
  String get upgradeToSeeMore => '升级以查看更多';

  @override
  String get seeDetails => '查看详情';

  @override
  String get notMatched => '未匹配';

  @override
  String get matched => '已匹配';

  @override
  String get entry => '入场';

  @override
  String get stopLoss => '止损';

  @override
  String get takeProfit1 => '止盈1';

  @override
  String get takeProfit2 => '止盈2';

  @override
  String get takeProfit3 => '止盈3';

  @override
  String get upgrade => '升级';

  @override
  String get upgradeAccount => '升级账户';

  @override
  String get compareTiers => '比较等级';

  @override
  String get feature => '功能';

  @override
  String get tierDemo => '演示';

  @override
  String get tierVIP => 'VIP';

  @override
  String get tierElite => '精英';

  @override
  String get balance => '余额';

  @override
  String get signalTime => '信号时间';

  @override
  String get signalQty => '信号数量';

  @override
  String get analysis => '分析';

  @override
  String get openExnessAccount => '开设 Exness 账户！';

  @override
  String get accountVerificationWithExness => '使用 Exness 进行账户验证';

  @override
  String get payInAppToUpgrade => '应用内支付升级';

  @override
  String get bankTransferToUpgrade => '银行转账升级';

  @override
  String get accountVerification => '账户验证';

  @override
  String get accountVerificationPrompt =>
      '请上传您的 Exness 账户截图以进行授权（您的账户必须在 Signal GPT 的 Exness 链接下开设）';

  @override
  String get selectPhotoFromLibrary => '从图库选择照片';

  @override
  String get send => '发送';

  @override
  String get accountInfo => '账户信息';

  @override
  String get accountVerifiedSuccessfully => '账户验证成功';

  @override
  String get yourAccountIs => '您的账户是';

  @override
  String get returnToHomePage => '返回主页';

  @override
  String get upgradeFailed => '升级失败！请重新上传图片';

  @override
  String get package => '套餐';

  @override
  String get startNow => '立即获取信号';

  @override
  String get bankTransfer => '银行转账';

  @override
  String get transferInformation => '转账信息';

  @override
  String get scanForFastTransfer => '扫描快速转账';

  @override
  String get contactUs247 => '24/7 联系我们';

  @override
  String get newAnnouncement => '新公告';

  @override
  String get profile => '个人资料';

  @override
  String get upgradeNow => '立即升级';

  @override
  String get followSignalGPT => '关注 Signal GPT';

  @override
  String get tabSignal => '信号';

  @override
  String get tabChart => '图表';

  @override
  String get tabProfile => '个人资料';

  @override
  String get reason => '原因';

  @override
  String get error => '错误';

  @override
  String get noSignalsAvailable => '暂无信号。';

  @override
  String get outOfGoldenHours => '非黄金时段';

  @override
  String get outOfGoldenHoursVipDesc =>
      'VIP 信号仅在上午 8:00 至下午 5:00 (GMT+7) 提供。\n升级至 Elite 以获取 24/24 信号！';

  @override
  String get outOfGoldenHoursDemoDesc =>
      '演示信号仅在上午 8:00 至下午 5:00 (GMT+7) 提供。\n升级账户以获得更多福利！';

  @override
  String get yourName => '您的姓名';

  @override
  String get yourEmail => 'your.email@example.com';

  @override
  String get adminPanel => '管理面板';

  @override
  String get logout => '退出';

  @override
  String get confirmLogout => '确认退出';

  @override
  String get confirmLogoutMessage => '您确定要退出吗？';

  @override
  String get cancel => '取消';

  @override
  String get upgradeCardTitle => '升级您的账户';

  @override
  String get upgradeCardSubtitle => '访问更多资源';

  @override
  String get upgradeCardSubtitleWeb => '解锁高级信号和全职支持';

  @override
  String get subscriptionDetails => '订阅详情';

  @override
  String get notifications => '通知';

  @override
  String get continueAsGuest => '以访客身份继续';

  @override
  String get deleteAccount => '删除账户';

  @override
  String get deleteAccountWarning => '您确定要删除您的账户吗？您的所有数据将被永久删除且无法恢复。';

  @override
  String get delete => '删除';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfService => '服务条款';

  @override
  String get signalStatusMatched => '已匹配';

  @override
  String get signalStatusNotMatched => '未匹配';

  @override
  String get signalStatusCancelled => '已取消';

  @override
  String get signalStatusSlHit => '达到止损';

  @override
  String get signalStatusTp1Hit => '达到止盈1';

  @override
  String get signalStatusTp2Hit => '达到止盈2';

  @override
  String get signalStatusTp3Hit => '达到止盈3';

  @override
  String get signalStatusRunning => '运行中';

  @override
  String get signalStatusClosed => '已关闭';

  @override
  String get contactUs => '联系我们';

  @override
  String get tabChat => '聊天';

  @override
  String get exnessUpgradeNoteForIos =>
      '对于通过 Signal GPT 注册 Exness 账户的客户，请点击联系我们以升级您的账户。';

  @override
  String get chatWelcomeTitle => '👋 欢迎来到 Signal GPT！';

  @override
  String get chatWelcomeBody1 => '请留言，我们的团队将尽快回复。';

  @override
  String get chatWelcomeBody2 => '或直接通过 Zalo/WhatsApp 联系我们：';

  @override
  String get chatWelcomeBody3 => ' 以获得更快的支持！';

  @override
  String get chatLoginPrompt => '请登录以使用此功能';

  @override
  String get chatStartConversation => '开始对话';

  @override
  String get chatNoMessages => '暂无消息。';

  @override
  String get chatTypeMessage => '输入消息...';

  @override
  String get chatSupportIsTyping => '客服正在输入...';

  @override
  String chatUserIsTyping(Object userName) {
    return '$userName 正在输入...';
  }

  @override
  String get chatSeen => '已读';

  @override
  String get chatDefaultUserName => '用户';

  @override
  String get chatDefaultSupportName => '客服';

  @override
  String get signalEntry => '入场';

  @override
  String get price1Month => '\$11.99';

  @override
  String get price12Months => '\$89.00';

  @override
  String get price12MonthsOld => '\$178.00';

  @override
  String get foreignTraderSupport =>
      '对于外国交易者，请通过 WhatsApp (Signal GPT) 联系我们以获得支持';

  @override
  String get signalSl => '止损';

  @override
  String get upgradeToSeeDetails => '升级以查看信号详情...';

  @override
  String get buy => '买入';

  @override
  String get sell => '卖出';

  @override
  String get logoutDialogTitle => '会话已过期';

  @override
  String get logoutDialogDefaultReason => '您的账户已在其他设备上登录。';

  @override
  String get ok => '确定';

  @override
  String get contactToUpgrade => '联系升级';

  @override
  String get noNotificationsYet => '暂无通知。';

  @override
  String get markAllRead => 'Mark all as read';

  @override
  String daysAgo(int count) {
    return '$count 天前';
  }

  @override
  String hoursAgo(int count) {
    return '$count 小时前';
  }

  @override
  String minutesAgo(int count) {
    return '$count 分钟前';
  }

  @override
  String get justNow => '刚刚';

  @override
  String get getSignalsNow => '立即获取信号';

  @override
  String get freeTrial => '免费试用';

  @override
  String get heroTitle => '指导交易者 & 增长投资组合';

  @override
  String get heroSubtitle => '终极 AI 引擎 – 由专家交易员设计';

  @override
  String get globalAiInnovationTitle => '下一代交易智能的全球 AI 创新';

  @override
  String get globalAiInnovationDesc =>
      '利用云端 AI 信号彻底改变传统交易 — 适应实时市场新闻和趋势，实现更快、更精确、无情绪的表现。';

  @override
  String get liveTradingSignalsTitle => '实时 – 24/7 AI 交易信号';

  @override
  String get liveTradingSignalsDesc => '实时云分析提供高概率、顺势而为的策略，具有自适应精度和无情绪执行。';

  @override
  String get trendFollowing => '顺势而为';

  @override
  String get realtime => '实时';

  @override
  String get orderExplanationEngineTitle => '订单解释引擎';

  @override
  String get orderExplanationEngineDesc =>
      '用简单的术语解释交易设置 — 展示汇聚点如何形成，为什么入场，并帮助交易者从每个决策中学习。';

  @override
  String get transparent => '透明';

  @override
  String get educational => '教育性';

  @override
  String get logical => '逻辑性';

  @override
  String get transparentRealPerformanceTitle => '透明 - 真实表现';

  @override
  String get transparentRealPerformanceDesc =>
      '查看信号准确性、成功率和盈利能力的真实数据 — 在每笔交易中都经过验证和可追溯';

  @override
  String get results => '结果';

  @override
  String get performanceTracking => '表现追踪';

  @override
  String get accurate => '准确';

  @override
  String get predictiveAccuracy => '预测准确性';

  @override
  String get improvementInProfitability => '盈利能力的提升';

  @override
  String get improvedRiskManagement => '改进的风险管理';

  @override
  String get signalsPerformanceTitle => '信号表现';

  @override
  String get riskToRewardRatio => '风险回报比';

  @override
  String get howRiskComparesToReward => '风险与回报的对比';

  @override
  String get profitLossOverview => '盈亏概览';

  @override
  String get netGainVsLoss => '净收益 vs 亏损';

  @override
  String get winRate => '胜率';

  @override
  String get percentageOfWinningTrades => '盈利交易的百分比';

  @override
  String get accuracyRate => '准确率';

  @override
  String get howPreciseOurSignalsAre => '我们信号的精确度';

  @override
  String get realtimeMarketAnalysis => '实时市场分析';

  @override
  String get realtimeMarketAnalysisDesc =>
      '我们的 AI 持续监控市场，识别技术汇聚区和可靠的突破点，以便您在正确的时刻入场。';

  @override
  String get saveTimeOnAnalysis => '节省分析时间';

  @override
  String get saveTimeOnAnalysisDesc => '不再花费数小时阅读图表。每天只需几分钟即可获得量身定制的投资策略。';

  @override
  String get minimizeEmotionalTrading => '最大限度地减少情绪化交易';

  @override
  String get minimizeEmotionalTradingDesc =>
      '通过智能警报、风险检测和数据驱动的信号（而非情绪），您将保持纪律并掌控每一个决定。';

  @override
  String get seizeEveryOpportunity => '抓住每一个机会';

  @override
  String get seizeEveryOpportunityDesc => '直接发送到您收件箱的及时策略更新确保您在完美的时间驾驭市场趋势。';

  @override
  String get minvestAiCoreValueTitle => 'Signal GPT - 核心价值';

  @override
  String get minvestAiCoreValueDesc => 'AI 持续分析实时市场数据，过滤见解以识别快速、准确的投资机会';

  @override
  String get frequentlyAskedQuestions => '常见问题解答 (FAQ)';

  @override
  String get faqSubtitle =>
      '您所有的问题——从如何加入，到收益，再到我们的人工智能如何运作——都在下面得到了解答。如果您仍有任何疑问，请随时通过 Whatsapp 给我们留言';

  @override
  String get maximizeResultsTitle => '通过 Signal GPT 提升您的成果\n高级市场分析和精确过滤信号';

  @override
  String get elevateTradingWithAiStrategies => '通过为一致性和清晰度而精心制作的 AI 增强策略提升您的交易';

  @override
  String get winMoreWithAiSignalsTitle => '在每个市场中通过 AI 驱动的信号赢得更多';

  @override
  String get winMoreWithAiSignalsDesc =>
      '我们的多市场 AI 实时扫描外汇、加密货币和金属，\n提供专家验证的交易信号 —\n具有清晰的入场、止损和止盈水平';

  @override
  String get buyLimit => '买入限价';

  @override
  String get sellLimit => '卖出限价';

  @override
  String get smarterToolsTitle => '更智能的工具 - 更好的投资';

  @override
  String get smarterToolsDesc => '发现帮助您最小化风险、抓住机会并增加财富的功能';

  @override
  String get performanceOverviewTitle => '表现概览';

  @override
  String get performanceOverviewDesc =>
      '我们的多市场 AI 实时扫描外汇、加密货币和金属，提供专家验证的交易信号 - 具有清晰的入场、止损和止盈水平';

  @override
  String get totalProfit => '总利润';

  @override
  String get completionSignal => '完成信号';

  @override
  String get onDemandFinancialExpertTitle => '您的按需金融专家';

  @override
  String get onDemandFinancialExpertDesc =>
      'AI 平台建议交易信号 - 自我学习，24/7 分析市场，不受情绪影响。Signal GPT 已支持超过 10,000 名金融分析师\n在寻找准确、稳定和易于应用的信号的旅程中';

  @override
  String get aiPoweredSignalPlatform => 'AI 驱动的交易信号平台';

  @override
  String get selfLearningSystems => '自我学习系统，更敏锐的洞察力，更强的交易';

  @override
  String get emotionlessExecution => '无情绪执行，实现更智能、\n更自律的交易';

  @override
  String get analysingMarket247 => '24/7 分析市场';

  @override
  String get maximizeResultsFeaturesTitle =>
      '通过 Signal GPT\n先进的市场分析和精确过滤的信号最大化您的结果';

  @override
  String get minvestAiRegistrationDesc =>
      'Signal GPT 注册现已开放 — 名额可能很快就会满，因为我们会审核并批准新成员。';

  @override
  String get currencyPairs => '商品';

  @override
  String get allCurrencyPairs => '所有货币对';

  @override
  String get allCommodities => '所有商品';

  @override
  String get allCryptoPairs => '所有加密货币';

  @override
  String get dateRange => '日期范围';

  @override
  String get selectDateRange => '选择日期范围';

  @override
  String get allAssets => '所有资产';

  @override
  String get asset => '资产';

  @override
  String get tokenExpired => '代币已过期';

  @override
  String get tokenLimitReachedDesc => '您今天已用完 10 个免费代币。升级您的套餐以查看更多信号。';

  @override
  String get later => '稍后';

  @override
  String get created => '已创建';

  @override
  String get detail => '详情';

  @override
  String get performanceOverview => '绩效概览';

  @override
  String get totalProfitPips => '总利润 (点)';

  @override
  String get winRatePercent => '胜率 (%)';

  @override
  String get comingSoon => '即将推出';

  @override
  String get errorLoadingHistory => '加载历史记录时出错';

  @override
  String get noHistoryAvailable => '暂无信号历史记录';

  @override
  String get previous => '上一页';

  @override
  String get page => '页';

  @override
  String get next => '下一页';

  @override
  String get date => '日期';

  @override
  String get timeGmt7 => '时间';

  @override
  String get orders => '订单';

  @override
  String get pips => '点';

  @override
  String get smallScreenRotationHint => '小屏幕：请横屏旋转或水平滚动以查看完整表格。';

  @override
  String get history => '历史';

  @override
  String get signalsWillAppearHere => '信号将在可用时显示在此处';

  @override
  String get pricing => '价格';

  @override
  String get choosePlanSubtitle => '选择适合您的计划';

  @override
  String get financialNewsHub => '财经新闻中心';

  @override
  String get financialNewsHubDesc => '重要更新。市场反应。没有噪音——只有投资者需要知道的内容。';

  @override
  String get newsTabAllArticles => '所有文章';

  @override
  String get newsTabInvestor => '投资者';

  @override
  String get newsTabKnowledge => '知识';

  @override
  String get newsTabTechnicalAnalysis => '技术分析';

  @override
  String noArticlesForCategory(Object category) {
    return '类别 $category 暂无文章';
  }

  @override
  String get mostPopular => '最受欢迎';

  @override
  String get noPosts => '暂无帖子';

  @override
  String get relatedArticles => '相关文章';

  @override
  String get contactInfoSentSuccess => '联系信息发送成功。';

  @override
  String contactInfoSentFailed(Object error) {
    return '发送信息失败：$error';
  }

  @override
  String get contactPageSubtitle => '有疑问或需要 AI 解决方案？请填写表格告诉我们，我们会尽快与您联系！';

  @override
  String get phone => '电话';

  @override
  String get firstName => '名';

  @override
  String get enterFirstName => '输入名';

  @override
  String get lastName => '姓';

  @override
  String get enterLastName => '输入姓';

  @override
  String get whatAreYourConcerns => '您有什么顾虑？';

  @override
  String get writeConcernsHere => '在此处写下您的顾虑...';

  @override
  String pleaseEnter(Object field) {
    return '请输入 $field';
  }

  @override
  String get faqQuestion1 => '信号能保证100%成功率吗？';

  @override
  String get faqAnswer1 =>
      '虽然不能保证100%的信号成功率，但Signal GPT努力保持60-80%的稳定成功率，并辅以详细的分析和风险管理，让您更有信心地做出最终决定。';

  @override
  String get faqQuestion2 => '如果我不想立即入金，还能收到信号建议吗？';

  @override
  String get faqAnswer2 =>
      '开户时，系统将赠送您 10 个免费代币，相当于 10 次详细信号查看。此后，您每天将额外获得 1 个代币供使用。如果您升级到 VIP 账户，您将解锁许多高级功能并可追踪无限数量的订单。';

  @override
  String get faqQuestion3 => '如果我已注册但未收到任何信号，我该怎么办？';

  @override
  String get faqAnswer3 => '处理通常是自动的。如果您仍未看到任何信号建议，请通过Whatsapp联系我们寻求即时帮助。';

  @override
  String get faqQuestion4 => '升级到 VIP 账户后，我每天会收到多少个信号？';

  @override
  String get faqAnswer4 =>
      '升级到 VIP 账户后，您每天将收到无限的交易信号。信号数量并不固定，完全取决于市场分析。每当出现高质量、高概率的入场点时，分析团队都会立即向您发送信号。';

  @override
  String get priceLevels => '价格水平';

  @override
  String get capitalManagement => '资金管理';

  @override
  String freeSignalsLeft(Object count) {
    return '剩余 $count 个免费信号';
  }

  @override
  String get unlimitedSignals => '无限信号';

  @override
  String get goBack => '返回';

  @override
  String get goldPlan => '黄金计划';

  @override
  String get perMonth => '/月';

  @override
  String get continuouslyUpdating => '24/7 持续更新市场数据';

  @override
  String get providingBestSignals => '实时提供最佳信号';

  @override
  String get includesEntrySlTp => '包含入场、止损、止盈';

  @override
  String get detailedAnalysis => '详细分析和评估每个信号';

  @override
  String get realTimeNotifications => '通过电子邮件实时通知';

  @override
  String get signalPerformanceStats => '信号表现统计';

  @override
  String get companyName => 'Signal GPT 技术投资有限公司';

  @override
  String get enterpriseCodeDetails => '企业代码: Signal GPT';

  @override
  String get addressDetails => '地址: 越南河内市海柏征坊杜汉街8号';

  @override
  String get pagesTitle => '页面';

  @override
  String get legalRegulatoryTitle => '法律与法规';

  @override
  String get termsOfRegistration => '注册条款';

  @override
  String get operatingPrinciples => '运营原则';

  @override
  String get termsConditions => '条款与条件';

  @override
  String get contactTitle => '联系方式';

  @override
  String get navFeatures => '功能';

  @override
  String get navNews => '新闻';

  @override
  String get tp1Hit => '达到止盈1';

  @override
  String get tp2Hit => '达到止盈2';

  @override
  String get tp3Hit => '达到止盈3';

  @override
  String get slHit => '达到止损';

  @override
  String get cancelled => '已取消';

  @override
  String get exitedByAdmin => '管理员退出';

  @override
  String get signalClosed => '已关闭';

  @override
  String get errorLoadingPackages => '加载套餐错误';

  @override
  String get monthly => '每月';

  @override
  String get annually => '每年';

  @override
  String get whatsIncluded => '包含内容：';

  @override
  String get chooseThisPlan => '选择此计划';

  @override
  String get bestPricesForPremiumAccess => '高级访问的最佳价格';

  @override
  String get choosePlanFitsNeeds => '选择适合您业务需求的计划并开始使用 AI 自动化';

  @override
  String get save50Percent => '节省 50%';

  @override
  String get save40Percent => '节省 40%';

  @override
  String get save65Percent => '节省 65%';

  @override
  String get tryDemo => '试用演示';

  @override
  String get pleaseEnterEmailPassword => '请输入电子邮件和密码';

  @override
  String loginFailed(String error) {
    return '登录失败：$error';
  }

  @override
  String get welcomeBack => '欢迎回来';

  @override
  String get signInToContinue => '登录您的帐户以继续';

  @override
  String get or => '或';

  @override
  String get email => '电子邮件';

  @override
  String get emailHint => 'example123@gmail.com';

  @override
  String get password => '密码';

  @override
  String get enterPassword => '输入密码';

  @override
  String get forgotPassword => '忘记密码？';

  @override
  String get createNewAccount => '在此处创建新帐户！';

  @override
  String get signUp => '注册';

  @override
  String get signUpAccount => '注册帐户';

  @override
  String get enterPersonalData => '输入您的个人数据以创建您的帐户';

  @override
  String get nameLabel => '姓名 *';

  @override
  String get enterNameHint => '输入姓名';

  @override
  String get emailLabel => '电子邮件 *';

  @override
  String get passwordLabel => '密码 *';

  @override
  String get phoneLabel => '电话';

  @override
  String get continueButton => '继续';

  @override
  String get fillAllFields => '请填写所有必填字段。';

  @override
  String get accountCreatedSuccess => '帐户创建成功。';

  @override
  String signUpFailed(String error) {
    return '注册失败：$error';
  }

  @override
  String get nationality => '国籍：';

  @override
  String get overview => '概览';

  @override
  String get setting => '设置';

  @override
  String get paymentHistory => '支付历史';

  @override
  String get signalsPlan => '信号计划';

  @override
  String get aiSignalGPT => 'AI Signal GPT';

  @override
  String get yourTokens => '您的代币';

  @override
  String get emailNotificationPreferences => '电子邮件通知偏好';

  @override
  String get chooseSignalNotificationTypes => '选择您希望通过电子邮件接收的信号通知类型';

  @override
  String get allSignalNotifications => '所有信号通知';

  @override
  String get cryptoSignals => '加密信号';

  @override
  String get forexSignals => '外汇信号';

  @override
  String get goldSignals => '黄金信号';

  @override
  String get updatePasswordSecure => '更新您的密码以确保您的帐户安全';

  @override
  String get searchLabel => '搜索：';

  @override
  String get filterBy => '筛选：';

  @override
  String get allTime => '所有时间';

  @override
  String get startDate => '开始日期：';

  @override
  String get endDate => '结束日期：';

  @override
  String get deactivate => '停用';

  @override
  String get unlimited => '无限';

  @override
  String get tenLeft => '剩余 10';

  @override
  String get termsOfRegistrationContent =>
      'Please read all the terms and agreements below carefully before proceeding with the next steps in our system.\nBy registering an account on the Signal GPT system, you confirm and understand that you have read and fully agreed to all the terms stated in these Terms and Conditions.\n\n1. Introduction and Scope of Application\n\nThis policy regulates the collection, use, sharing, and protection of users’ personal information when accessing and using the products and services of the Signal GPT system – a technology and artificial intelligence platform owned and operated by Signal GPT (hereinafter referred to as “we” or “us”).\nBy registering an account or using Signal GPT’s products, you agree that such action constitutes a legally binding commitment between you and us, equivalent to an electronic contract.\n\n2. Account Registration\n\nTo access and use certain services on Signal GPT, you must register a valid account.\nWhen registering, you are required to provide complete and accurate personal information, including your full name, email address, phone number, or any other information as requested.\nAfter registration, you must confirm your email to activate the account. All notifications about your account, promotions, or system updates will be sent to this email address.\nIf the information you provide is inaccurate or incomplete, you will be solely responsible for any incidents or damages arising from it.\n\n3. Terms of Use\n\nWhen participating in the Signal GPT system, you are obligated to comply with all of the following:\nThe operating principles of the platform;\nPayment terms;\nPersonal data privacy policy;\nRelevant laws and regulations in effect.\nIn the event of a violation, Signal GPT reserves the right to temporarily suspend or permanently delete your account, and may transfer the case to competent authorities if necessary.\n\n4. Personal Data Privacy Policy\n\n4.1. Purpose and Scope of Collection\n\nTo provide its services, Signal GPT collects necessary information including: full name, email, phone number, means of contact, and technical data such as IP address, browser type, access time, language, and accessed pages.\nThis information is used for the following purposes:\nTo verify accounts and manage users;\nTo provide services and customer support;\nTo send notifications, offers, or important updates;\nTo improve system quality and user experience.\nAll declared information must be accurate and lawful. We are not responsible for any disputes or damages resulting from false declarations.\n\n4.2. Scope of Information Use\n\nSignal GPT only uses your personal information for internal purposes and in compliance with Vietnamese laws.\nWe may contact you via email, phone, SMS, or other communication channels for technical support, order confirmation, or promotional updates.\n\n4.3. Data Retention Period\n\nYour personal information will be stored until one of the following occurs:\nYou request account deletion; or\nThe Signal GPT system ceases operation in accordance with regulations.\nDuring this period, your data will be securely protected on Signal GPT’s servers.\n\n4.4. Rights and Obligations of Data Subjects\n\nUser Rights:\nTo be informed of, consent to, or refuse the processing of their personal data;\nTo access, edit, delete, or request restriction of data processing;\nTo object, file complaints, initiate legal proceedings, or request compensation for damages as provided by law.\nUser Obligations:\nTo provide truthful and accurate information;\nTo protect their own personal data and respect the privacy of others;\nTo comply with applicable laws and Signal GPT’s privacy policy.\n\n4.5. Information of the Personal Data Processor\n\nSignal GPT\nAddress: Signal GPT\nBusiness Registration Number: Signal GPT\nPhone: Signal GPT\n\n4.6. Means and Tools for Editing Information\n\nYou can access the “Account Settings” section to update or edit your personal information.\nIn case you need assistance, you may contact us through the official communication channels of Signal GPT as published on our website.\n\n4.7. Data Protection Measures\n\nSignal GPT applies advanced technical and administrative measures such as:\nData encryption, firewalls, and internal access control;\nLimiting access rights;\nEmployee training on data security.\nAny unauthorized access, disclosure, destruction, or alteration of data will be handled in accordance with the law.\n\n4.8. Entities Authorized to Access Your Information\n\nThe Signal GPT system administration team;\nYou, the customer (when logging into your own account);\nVietnamese legal authorities upon receipt of a valid written request.\n\n4.9. Complaints and Dispute Resolution\n\nAny complaints or feedback related to the protection of personal data or the use of services on the Signal GPT system may be submitted through the official support channels published on our website.\nWe will receive, review, and respond as soon as possible to ensure the lawful rights and interests of customers in accordance with legal regulations.\n\n5. Effectiveness and Updates\n\nThis policy takes effect from November 14, 2025.\nWe may change, update, or supplement this content to comply with legal requirements and operational realities.\nAll changes will be publicly announced on the signalgpt.ai website prior to implementation.';

  @override
  String get operatingPrinciplesContent =>
      'Please read all terms and agreements below carefully before proceeding with the next steps in our system. \nBy registering an account on the Signal GPT system, you confirm and understand that you have read and fully agreed to all the terms stated in these Terms and Conditions.\n\nOPERATING RULES\n\n1. Legal Information\n\nSystem Owner:\nSignal GPT\nAddress: Signal GPT\nBusiness/Tax Code: Signal GPT\nPhone: Signal GPT\n\n2. Scope of Application\n\nThese Operating Principles apply to all users, learners, partners, and collaborators who participate in or use the products and services within the Signal GPT system, including websites, applications, training platforms, and other online channels managed by Signal GPT.\nBy registering an account or using the services of Signal GPT, users are deemed to have read, understood, and agreed to all the terms set forth in these regulations.\n\n3. Definitions\n\n“Signal GPT” refers to the technology and artificial intelligence platform owned by Signal GPT.\n“Customer” / “User” / “Learner” refers to any individual or organization that registers, accesses, or uses the services and products on the Signal GPT system.\n“We” / “Administration” refers to the management team representing Signal GPT, responsible for operating and managing the system.\n“Products” / “Services” include learning packages, analytical newsletters, AI trading signals, analytical tools, or any digital content provided by Signal GPT.\n\n4. Usage Rules and Information Security\n\nUsers must provide accurate and complete information when registering an account.\nSignal GPT is committed to protecting personal information and will not disclose it to third parties unless required by competent authorities.\nUsers are responsible for maintaining the confidentiality of their account and password. Any damages arising from personal security negligence shall not be the responsibility of Signal GPT.\nSignal GPT reserves the right to suspend or terminate accounts found to be in violation of the terms, including but not limited to: account sharing, content distribution, or infringement of intellectual property rights.\n\n5. Refund Policy and Service Usage\n\nAll payments, once confirmed, are non-refundable under any circumstances, except in cases of system errors originating from Signal GPT.\nUsers may discontinue service use at any time; however, any paid fees will not be retained or converted.\nSignal GPT reserves the right to adjust service prices, promotional policies, or special offers without prior notice. Users are responsible for regularly reviewing and staying updated.\n\n6. Conduct and Content Usage Regulations\n\nThe following actions are strictly prohibited:\nCopying, downloading, distributing, or sharing content, videos, or materials belonging to the Signal GPT system;\nUsing software or tools to interfere with or illegally collect data;\nImpersonating Signal GPT, Signal GPT, or any of its representatives for the purpose of fraud, deception, or brand defamation;\nSharing accounts with multiple users;\nPosting, speaking, or engaging in actions containing offensive, defamatory, or harmful content toward the system.\nAny violation of the above may result in permanent account suspension and could be subject to legal action under Vietnamese law.\n\n7. Commitment and Limitation of Liability\n\nSignal GPT provides products based on knowledge, data, and AI algorithms developed by the Signal GPT team.\nThe effectiveness of use depends on each individual’s capability, experience, and actions. Signal GPT makes no guarantee of profit or specific investment results.\nSignal GPT shall be exempt from all liability for indirect risks or damages arising during service use, except in cases where direct system errors are proven.\n\n8. Rights of the Signal GPT Administration\n\nSignal GPT reserves the right to modify, update, or supplement the operating terms at any time without prior notice.\nWe have the right to suspend or terminate the provision of services in cases of legal violations, policy breaches, or for technical or system maintenance reasons.\nWe may cooperate with competent authorities in handling complaints, investigating violations, and providing necessary information as required by law.\n\n9. Acknowledgment of Consent\n\nBy registering and using the Signal GPT system, you hereby confirm that:\nYou have read carefully, fully understood, and agreed to all the contents of these Operating Principles;\nYou consent to allow Signal GPT to use your contact information (phone, email, SMS, Zalo, etc.) to send notifications, product updates, promotions, or new program announcements.';

  @override
  String get termsAndConditionsContent =>
      'By registering an account to participate in the Signal GPT system, you confirm that you have read, understood, and agreed to all the contents of these Account Opening Terms and Conditions.\nThe latest updates (if any) will be published here, and Signal GPT will not send separate notifications to each customer. Therefore, please visit this page regularly to stay informed about the most recent policies.\n\n1. General Agreement\n\nSignal GPT is a technology and artificial intelligence platform owned by Signal GPT. By opening an account on this system, you agree to participate in and use the services and products provided by Signal GPT.\nAccount registration and activation are considered an electronic contract between you and Signal GPT, which has the same legal validity as a civil contract under the laws of Vietnam.\n\n2. Personal Account Information and Privacy\n\n2.1. Purpose and Scope of Information Collection\n\nTo access and use certain Signal GPT services, you must provide basic personal information, including:\nFull name;\nEmail address;\nContact phone number;\nOther information (if any) necessary for verification, support, or access authorization.\nAll information provided must be accurate, truthful, and lawful. Signal GPT shall not be responsible for any losses or disputes arising from false, missing, or fraudulent information provided by the user.\nAdditionally, the system may automatically collect certain technical data, such as:\nIP address, browser type, and language used;\nAccess time and pages viewed within the system.\nThis information helps Signal GPT improve performance, enhance security, and optimize user experience.\n\n2.2. Scope of Information Use\n\nYour personal information is collected and used for legitimate purposes, including:\nManaging accounts, verifying users, and maintaining services;\nSending notifications related to services, accounts, promotions, or policy changes;\nProviding technical support, customer service, and dispute resolution (if any);\nData analysis to improve product quality and user experience.\nWe are committed to protecting your personal information and will not share it with third parties unless required by law or competent authorities.\n\n2.3. Data Retention Period\n\nYour information will be stored until one of the following occurs:\nYou request account deletion; or\nThe Signal GPT system ceases operation in accordance with applicable laws.\nIn all cases, your data will be securely stored and strictly protected on Signal GPT’s servers.\n\n2.4. Entity Responsible for Collecting and Managing Personal Information\n\nSignal GPT\nAddress: Signal GPT\nBusiness Registration Number: Signal GPT\n\n2.5. Methods and Tools for Editing Information\n\nYou can access the “Account Settings” section within the system to edit or update your personal information. If you encounter difficulties while doing so, please contact us through the official support channels of Signal GPT as published on the website.\n\n2.6. Information Provision and Verification\n\nTo ensure account security and protect your rights, you must:\nProvide accurate full name, email, and phone number during registration;\nVerify your information via the confirmation email sent by the system;\nReceive activation, password reset, or other important notifications from Signal GPT.\nIf the provided information is inaccurate or incomplete, you shall be solely responsible for any related risks (e.g., account activation failure, loss of access, or missed notifications).\n\n2.7. User Confidentiality Obligations and Responsibilities\n\nYou are responsible for safeguarding your login credentials and password.\nIf your password is lost, disclosed, or accessed without authorization, Signal GPT shall not be liable for any resulting damages.\nYou agree to allow Signal GPT to store, manage, and process your personal information in accordance with the laws of Vietnam.\n\n2.8. Access Rights to Your Information\n\nYour personal information may only be accessed by:\nThe Signal GPT system administration team (for management and technical purposes);\nThe account owner (via the personal information management section);\nVietnamese authorities, upon receipt of a valid and lawful request as prescribed by law.\n\n2.9. Complaint and Resolution Mechanism\n\nFor any complaints or feedback related to account registration, usage, or information security, you may submit a request through the official Contact page of Signal GPT.\nWe will receive, process, and respond as soon as possible to ensure the customer’s lawful rights and interests in accordance with applicable legal regulations.\n\n3. Effectiveness and Updates\n\nThese Account Opening Terms and Conditions take effect from November 14, 2025. Signal GPT reserves the right to update, modify, or supplement the contents at any time without prior notice. All changes will be publicly announced on the signalgpt.ai website prior to implementation.';

  @override
  String get performance => '业绩';

  @override
  String get minvestSupport => 'Signal GPT Support';

  @override
  String get leaveMessagePart1 => '请留言，我们的团队将尽快回复。您也可以联系 ';

  @override
  String get chatWhatsApp => 'WhatsApp';

  @override
  String get leaveMessagePart2 => ' Signal GPT 以获得快速支持。';

  @override
  String get currentPlan => 'Current Plan';

  @override
  String get standard => 'STANDARD';

  @override
  String get availableTokens => 'Available Tokens';

  @override
  String get subscriptions => 'Subscriptions';

  @override
  String get usesTokenPerView => 'Uses 1 Token per view';

  @override
  String get unlimitedAccess => 'Unlimited Access';

  @override
  String get activeElite => 'Active (Elite)';

  @override
  String get active => 'Active';

  @override
  String get inactive => 'Inactive';

  @override
  String get transactionHistory => 'Transaction History';

  @override
  String get noTransactionsFound => 'No transactions found.';

  @override
  String get colDate => 'Date';

  @override
  String get colProduct => 'Product';

  @override
  String get colAmount => 'Amount';

  @override
  String get colMethod => 'Method';

  @override
  String get colStatus => 'Status';

  @override
  String get statusSuccess => 'Success';

  @override
  String get featureForVipOnly =>
      'This feature is only for VIP customers, please upgrade to receive notifications.';

  @override
  String get changePassword => '更改密码';

  @override
  String get currentPassword => '当前密码';

  @override
  String get newPassword => '新密码';

  @override
  String get confirmNewPassword => '确认新密码';

  @override
  String get passwordsDoNotMatch => '密码不匹配';

  @override
  String get passwordUpdateSuccess => '密码更新成功';

  @override
  String passwordUpdateFailed(String error) {
    return '更新密码失败：$error';
  }

  @override
  String get reauthFailed => '当前密码不正确';

  @override
  String get signInRequired => '需要登录';

  @override
  String get signInToExploreSignal => '登录以探索此交易信号！';

  @override
  String get activeMember => '活跃会员';

  @override
  String get last7Days => '过去7天';

  @override
  String get last14Days => '过去14天';

  @override
  String get last30Days => '过去30天';

  @override
  String get last90Days => '过去90天';

  @override
  String get profitStatistics => '利润统计';

  @override
  String get winrateOfAllSignals => '所有信号的胜率';

  @override
  String get daily => '每日';

  @override
  String get weekly => '每周';

  @override
  String get lossRate => '损失率';

  @override
  String get signalProgress => 'Signal Progress';

  @override
  String get statusHistory => 'Status History';

  @override
  String get signalCreated => 'Signal Created';

  @override
  String get signalMatched => '信号已匹配';

  @override
  String get targetReached => '达到目标';

  @override
  String get freeSignalsInfo => '免费信号信息';

  @override
  String get freeSignalsInfoDesc => '您每天将收到 1 个免费信号。\n未使用的信号将累积到第二天。';

  @override
  String freeSignalsCount(int count) {
    return '$count 个免费信号';
  }

  @override
  String get close => '关闭';

  @override
  String validUntil(String date) {
    return '有效期至 $date';
  }

  @override
  String get wins => '获胜';

  @override
  String get losses => '失败';

  @override
  String totalOrdersCount(int count) {
    return '共 $count 个订单';
  }

  @override
  String get passwordResetEmailSent => '重置密码邮件已发送！请检查您的收件箱。';

  @override
  String get pageOf => '/';

  @override
  String get keyFindings => 'Key Findings';

  @override
  String get filterStatusLabel => 'Status';

  @override
  String get filterStatusAll => 'All Status';

  @override
  String get filterStatusTp1 => 'TP1 HIT';

  @override
  String get filterStatusTp2 => 'TP2 HIT';

  @override
  String get filterStatusTp3 => 'TP3 HIT';

  @override
  String get filterStatusSl => 'SL HIT';

  @override
  String get filterStatusCancelled => 'CANCELLED';

  @override
  String get filterStatusExitByAdmin => 'EXIT BY ADMIN';

  @override
  String get popupMasterMarket => 'Do you want to master the market?';

  @override
  String get popupLoginExplore => 'Log in to explore this trading bulletin!';

  @override
  String get disclaimer => '免责声明';

  @override
  String get disclaimerContent =>
      'signalgpt.ai 上的信息仅供参考和知识分享之用，不构成投资建议。用户对自己的交易决策承担全部责任。';

  @override
  String get openTradingAccount => '开设交易账户';

  @override
  String get supportUs => '支持我们';

  @override
  String get rateApp => '评价应用';

  @override
  String get shareApp => '分享应用';

  @override
  String get accountDetails => '账户详情';

  @override
  String get language => '语言';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get accounts => '账户';

  @override
  String get accessExchange => '进入交易所';

  @override
  String get onlineSupport => '在线客服';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get left => '剩余';

  @override
  String get upgradeToPro => '升级至 Pro';

  @override
  String get assetGold => '黄金';

  @override
  String get assetCrypto => '加密货币';

  @override
  String get assetForex => '货币对';

  @override
  String get tokens => '代币';

  @override
  String get noForexAssets => '暂无货币对资产';

  @override
  String openApp(String appName) {
    return '打开 $appName';
  }

  @override
  String get signalStatus => '状态';

  @override
  String get signalEntryLabel => '入场';

  @override
  String get signalSlLabel => '止损';

  @override
  String get signalTp1Label => '止盈1';

  @override
  String get signalTp2Label => '止盈2';

  @override
  String get signalTp3Label => '止盈3';

  @override
  String get analyze => '分析';

  @override
  String get useTokenToView => '使用代币查看信号';

  @override
  String get viewNow => '立即查看';

  @override
  String get waitingNewSignals => '等待新信号...';

  @override
  String get failedUnlockSignal => '解锁信号失败';

  @override
  String get notEnoughTokens => '代币不足';

  @override
  String get newSignalUploaded => '新信号已发布';

  @override
  String newSymbolSignalUploaded(String symbol) {
    return '新的 $symbol 信号已发布！';
  }

  @override
  String get upgradeToViewSignalBanner => '升级以查看信号';

  @override
  String get signalHistory => '信号历史';

  @override
  String get allStatus => '全部';

  @override
  String get selectDate => '选择日期';

  @override
  String get noHistoryFound => '未找到历史记录';

  @override
  String get filterDate => '日期';

  @override
  String get marketChart => '市场图表';

  @override
  String get analysisExplanation => '分析与解读';

  @override
  String get noDetailedAnalysis => '此信号暂无详细分析。';

  @override
  String get affiliateDashboard => '推广仪表盘';

  @override
  String get referralLink => '推荐链接';

  @override
  String get copyLink => '复制链接';

  @override
  String get referralCount => '推荐人数';

  @override
  String get totalEarnings => '总收益';

  @override
  String get pendingCommission => '待结算佣金';

  @override
  String get latestReferrals => '最新推荐';

  @override
  String get noReferralsYet => '暂无推荐记录。';

  @override
  String get affiliateRoleRequired => '需要推广权限。请联系管理员。';

  @override
  String get affiliateCodeNotAssigned => '推广代码尚未分配。请联系管理员。';

  @override
  String get referralLinkDescription => '使用此链接推荐用户，可获得 40% 终身佣金。';

  @override
  String get linkCopied => '链接已复制到剪贴板！';

  @override
  String get enterReferralCode => '输入推荐码';

  @override
  String get referralCodeDescription =>
      'Enter referral code to receive exclusive offers from our partners.';

  @override
  String get referralCode => '推荐码';

  @override
  String get submit => '提交';

  @override
  String get invalidReferralCode => '无效的推荐码。';

  @override
  String get referralCodeApplied => '推荐码应用成功！';

  @override
  String get getTheAppForBestExperience =>
      'Get the app for the best experience';

  @override
  String get installApp => 'Install App';

  @override
  String get reviews => 'reviews';

  @override
  String get priceLifetime => '\$249.00';

  @override
  String get priceLifetimeOld => '\$712.00';

  @override
  String get durationLifetime => 'Lifetime';

  @override
  String get orderInfoLifetime => 'Payment for Elite Lifetime package';

  @override
  String get lifetime => 'Lifetime';

  @override
  String get loginNow => '立即登录';

  @override
  String get loginToViewSignals => '登录以查看信号';

  @override
  String get loginToViewSignalsDesc => '请登录以查看 Signal GPT 信号并访问所有功能。';

  @override
  String get loginToViewHistory => '登录以查看历史';

  @override
  String get loginToViewHistoryDesc => '信号历史仅对已登录用户开放。请登录以追踪 Signal GPT 的表现。';

  @override
  String get letsGetYouIn => '让我们开始吧！';

  @override
  String get dontHaveAnAccount => '还没有账户？';

  @override
  String get createAccount => '创建账户';

  @override
  String get createYourAccount => '创建您的账户';

  @override
  String get login => '登录';

  @override
  String get rememberYourPassword => '记住您的密码';

  @override
  String get signInWith => '通过以下方式登录';

  @override
  String get getStarted => '开始使用';

  @override
  String get pleaseEnterEmail => '请输入您的电子邮件';

  @override
  String get pleaseEnterPassword => '请输入您的密码';

  @override
  String get pleaseEnterCurrentPassword => '请输入您的当前密码';

  @override
  String get pleaseEnterNewPassword => '请输入您的新密码';

  @override
  String get pleaseConfirmNewPassword => '请确认您的新密码';

  @override
  String get pleaseConfirmPassword => '请确认您的密码';

  @override
  String get passwordMinLength => '密码至少需要 6 个字符';

  @override
  String get savePassword => '保存密码';

  @override
  String get verifyYourEmail => '验证您的电子邮件';

  @override
  String get pleaseEnterVerificationCode => '请输入发送到您邮箱的\\n6 位验证码';

  @override
  String get pleaseEnterAllDigits => '请输入完整的 6 位数字';

  @override
  String get invalidOrExpiredCode => '验证码无效或已过期';

  @override
  String get anErrorOccurred => '发生错误。请重试。';

  @override
  String get verificationCodeResent => '验证码已重新发送！';

  @override
  String failedToResendCode(String error) {
    return '重新发送验证码失败：$error';
  }

  @override
  String get resendCode => '重新发送验证码';

  @override
  String get verify => '验证';

  @override
  String get resetPassword => '重置密码';

  @override
  String get forgotPasswordInstructions =>
      '请输入您注册时使用的电子邮件地址\\n\\n我们将向您的邮箱发送验证码。';

  @override
  String get sendButton => '发送';

  @override
  String get unableToReceiveEmail => '如果您无法收到邮件，请联系我们 email @gmail.com';

  @override
  String get verificationCodeSentTo => '我们已向以下邮箱发送验证码';

  @override
  String get passwordResetSuccessful => '密码重置成功！';

  @override
  String errorGeneric(String message) {
    return '错误：$message';
  }

  @override
  String get accountAlreadyExists => '账户已存在';

  @override
  String accountAlreadyExistsMessage(String email) {
    return '电子邮件 $email 已在系统中注册。请登录或使用忘记密码功能。';
  }

  @override
  String systemError(String error) {
    return '系统错误：$error';
  }

  @override
  String get confirmPassword => '确认密码';

  @override
  String get referralCodeOptional => '推荐码（可选）';

  @override
  String get accountDeletedSuccessfully => '账户已永久删除。';

  @override
  String accountDeleteError(String error) {
    return '删除账户错误：$error';
  }

  @override
  String get passwordChangedSuccessfully => '密码修改成功！';

  @override
  String get errorChangingPassword => '修改密码错误。请检查您的当前密码。';

  @override
  String get enableNotificationsHint => '在设备设置中启用通知，以便在锁屏上查看最新消息';

  @override
  String get navigateToDeviceSettings => '前往设备设置。';

  @override
  String get turnOffAllNotifications => '关闭所有通知';

  @override
  String get pauseAllNotifications => '暂停所有通知';

  @override
  String get turnOnCryptoSignals => '开启加密货币信号';

  @override
  String get turnOnCurrencyPairSignals => '开启货币对信号';

  @override
  String get turnOnGoldSignals => '开启黄金信号';

  @override
  String get currencyPairSignals => '货币对信号';

  @override
  String get termsOfUseContent =>
      '访问或使用本应用即表示您同意遵守使用条款。本应用仅供信息参考之用，我们不保证所显示的任何内容或信号的准确性、完整性或可靠性。您对如何使用应用内提供的信息承担全部责任。我们保留随时修改、暂停或终止服务的权利，无需事先通知。继续使用本应用即表示接受任何更新的条款。';

  @override
  String get tradingHistoryTitle => '交易历史';

  @override
  String get tp1Live => 'TP1 实时';

  @override
  String get tp2Live => 'TP2 实时';

  @override
  String get tp3Live => 'TP3 实时';

  @override
  String get stopLossTriggered => '触发止损';

  @override
  String entryWithPrice(String price) {
    return '入场：$price';
  }

  @override
  String get signalGptTitle => 'Signal GPT';

  @override
  String get categoryGold => '黄金';

  @override
  String get categoryCrypto => '加密货币';

  @override
  String get subscriptionAutoRenewDisclaimer =>
      '订阅将自动续费，除非在当前期限结束前至少 24 小时取消。您可以在 App Store 账户设置中管理和取消订阅。终身计划为一次性购买。';

  @override
  String get termsOfUseEula => '使用条款 (EULA)';

  @override
  String productNotFound(String productId) {
    return '未找到产品：$productId。请确保已在商店中配置。';
  }

  @override
  String get perYear => '/ 年';

  @override
  String get tierDemoSignalQty => '每天 7-8 个';

  @override
  String get elite1Month => 'ELITE 1 个月';

  @override
  String get elite12Months => 'ELITE 12 个月';

  @override
  String get statusPending => '待处理';

  @override
  String get statusFailed => '失败';

  @override
  String get yourReferralCode => '您的推荐码';

  @override
  String get referralCodeCopied => '推荐码已复制！';

  @override
  String get copyCode => '复制代码';

  @override
  String get revenue => '收入';

  @override
  String get availableCommission => '可用佣金';

  @override
  String get totalReceivedIncome => '已收到总收入';

  @override
  String depositAmount(String amount) {
    return '入金：\$$amount';
  }

  @override
  String get importantNotice => '重要通知';

  @override
  String get accountChangedPleaseRelogin => '您的账户信息已变更。请重新登录。';

  @override
  String get iUnderstand => '我知道了';

  @override
  String get saveUpTo65Percent => '最高节省 65%';

  @override
  String get yearlyLifetimeDiscount => '年付 -40% • 终身 -65%';

  @override
  String get uploadFailedPermissionDenied => '上传失败：权限被拒绝。请检查存储规则。';

  @override
  String get failedToUploadImage => '图片上传失败。请检查您的网络连接。';
}
