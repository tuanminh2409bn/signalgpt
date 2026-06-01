// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get accountUpgradedSuccessfully => 'COMPTE MIS À NIVEAU AVEC SUCCÈS';

  @override
  String get lotPerWeek => 'Lot/semaine';

  @override
  String get tableValueFull => 'complet';

  @override
  String get tableValueFulltime => 'plein temps';

  @override
  String get packageTitle => 'FORFAIT';

  @override
  String get duration1Month => '1 mois';

  @override
  String get duration12Months => '12 mois';

  @override
  String get featureReceiveAllSignals => 'Recevoir tous les signaux du jour';

  @override
  String get featureAnalyzeReason => 'Analyser la raison de l\'entrée';

  @override
  String get featureHighPrecisionAI => 'Signal IA haute précision';

  @override
  String get iapStoreNotAvailable =>
      'La boutique n\'est pas disponible sur cet appareil.';

  @override
  String iapErrorLoadingProducts(Object message) {
    return 'Erreur lors du chargement des produits : $message';
  }

  @override
  String get iapNoProductsFound =>
      'Aucun produit trouvé. Veuillez vérifier la configuration de votre boutique.';

  @override
  String iapTransactionError(Object message) {
    return 'Erreur de transaction : $message';
  }

  @override
  String iapVerificationError(Object message) {
    return 'Erreur de vérification : $message';
  }

  @override
  String iapUnknownError(Object error) {
    return 'Une erreur inconnue s\'est produite : $error';
  }

  @override
  String get iapProcessingTransaction => 'Traitement de la transaction...';

  @override
  String get orderInfo1Month => 'Paiement pour le forfait Elite 1 mois';

  @override
  String get orderInfo12Months => 'Paiement pour le forfait Elite 12 mois';

  @override
  String get iapNotSupportedOnWeb =>
      'Les achats in-app ne sont pas pris en charge sur la version web.';

  @override
  String get vnpayPaymentTitle => 'PAIEMENT VNPAY';

  @override
  String get creatingOrderWait =>
      'Création de la commande, veuillez patienter...';

  @override
  String errorWithMessage(Object message) {
    return 'Erreur : $message';
  }

  @override
  String get cannotConnectToServer =>
      'Impossible de se connecter au serveur. Veuillez réessayer.';

  @override
  String get transactionCancelledOrFailed =>
      'La transaction a été annulée ou a échoué.';

  @override
  String get cannotCreatePaymentLink =>
      'Impossible de créer le lien de paiement.\nVeuillez réessayer.';

  @override
  String get retry => 'Réessayer';

  @override
  String serverErrorRetry(Object message) {
    return 'Erreur serveur : $message. Veuillez réessayer.';
  }

  @override
  String get redirectingToPayment => 'Redirection vers la page de paiement...';

  @override
  String get invalidPaymentUrl => 'URL de paiement invalide reçue du serveur.';

  @override
  String get processingYourAccount => 'Traitement de votre compte...';

  @override
  String get verificationFailed => 'Échec de la vérification !';

  @override
  String get reuploadImage => 'Réimporter l\'image';

  @override
  String get accountNotLinked => 'Compte non lié à Signal GPT';

  @override
  String get accountNotLinkedDesc =>
      'Pour obtenir des signaux exclusifs, votre compte Exness doit être enregistré via le lien partenaire Signal GPT. Veuillez créer un nouveau compte en utilisant le lien ci-dessous.';

  @override
  String get registerExnessViaSignalGPT =>
      'S\'inscrire à Exness via Signal GPT';

  @override
  String get iHaveRegisteredReupload => 'Je suis inscrit, réimporter';

  @override
  String couldNotLaunch(Object url) {
    return 'Impossible de lancer $url';
  }

  @override
  String get status => 'Statut';

  @override
  String get sentOn => 'Envoyé le';

  @override
  String get entryPrice => 'Prix d\'entrée';

  @override
  String get stopLossFull => 'Stop loss';

  @override
  String get takeProfitFull1 => 'Take profit 1';

  @override
  String get takeProfitFull2 => 'Take profit 2';

  @override
  String get takeProfitFull3 => 'Take profit 3';

  @override
  String get noReasonProvided => 'Aucune raison fournie pour ce signal.';

  @override
  String get upgradeToViewReason =>
      'Mettez votre compte à niveau vers Elite pour voir l\'analyse.';

  @override
  String get upgradeToViewFullAnalysis =>
      'Mettre à niveau pour voir l\'analyse complète';

  @override
  String get loginWithoutAccount => 'Se connecter sans compte';

  @override
  String get welcomeTo => 'Bienvenue sur';

  @override
  String get appSlogan =>
      'Améliorez votre trading avec des signaux intelligents.';

  @override
  String get signIn => 'Se connecter';

  @override
  String get continueByGoogle => 'Continuer avec Google';

  @override
  String get continueByFacebook => 'Continuer avec Facebook';

  @override
  String get continueByApple => 'Continuer avec Apple';

  @override
  String get loginSuccess => 'Connexion réussie !';

  @override
  String get live => 'EN DIRECT';

  @override
  String get end => 'FIN';

  @override
  String get symbol => 'SYMBOLE';

  @override
  String get aiSignal => 'Signal IA';

  @override
  String get ruleSignal => 'SIGNAL RÈGLE';

  @override
  String get all => 'TOUT';

  @override
  String get upgradeToSeeMore => 'Mettre à niveau pour voir plus';

  @override
  String get seeDetails => 'voir détails';

  @override
  String get notMatched => 'NON CORRESPONDANT';

  @override
  String get matched => 'CORRESPONDANT';

  @override
  String get entry => 'Entrée';

  @override
  String get stopLoss => 'SL';

  @override
  String get takeProfit1 => 'TP1';

  @override
  String get takeProfit2 => 'TP2';

  @override
  String get takeProfit3 => 'TP3';

  @override
  String get upgrade => 'Mettre à niveau';

  @override
  String get upgradeAccount => 'METTRE À NIVEAU LE COMPTE';

  @override
  String get compareTiers => 'COMPARER LES NIVEAUX';

  @override
  String get feature => 'Fonctionnalité';

  @override
  String get tierDemo => 'Démo';

  @override
  String get tierVIP => 'VIP';

  @override
  String get tierElite => 'Elite';

  @override
  String get balance => 'Solde';

  @override
  String get signalTime => 'Heure du signal';

  @override
  String get signalQty => 'Qté de signaux';

  @override
  String get analysis => 'Analyse';

  @override
  String get openExnessAccount => 'Ouvrir un compte Exness !';

  @override
  String get accountVerificationWithExness =>
      'Vérification de compte avec Exness';

  @override
  String get payInAppToUpgrade => 'Payer dans l\'appli';

  @override
  String get bankTransferToUpgrade => 'Virement bancaire';

  @override
  String get accountVerification => 'VÉRIFICATION DU COMPTE';

  @override
  String get accountVerificationPrompt =>
      'Veuillez télécharger une capture d\'écran de votre compte Exness pour être autorisé (votre compte doit être ouvert sous le lien Exness de Signal GPT)';

  @override
  String get selectPhotoFromLibrary => 'Sélectionner une photo';

  @override
  String get send => 'Envoyer';

  @override
  String get accountInfo => 'Informations sur le compte';

  @override
  String get accountVerifiedSuccessfully => 'COMPTE VÉRIFIÉ AVEC SUCCÈS';

  @override
  String get yourAccountIs => 'Votre compte est';

  @override
  String get returnToHomePage => 'Retour à l\'accueil';

  @override
  String get upgradeFailed =>
      'Échec de la mise à niveau ! Veuillez réimporter l\'image';

  @override
  String get package => 'FORFAIT';

  @override
  String get startNow => 'Obtenez des Signaux Maintenant';

  @override
  String get bankTransfer => 'VIREMENT BANCAIRE';

  @override
  String get transferInformation => 'INFORMATIONS DE VIREMENT';

  @override
  String get scanForFastTransfer => 'Scanner pour virement rapide';

  @override
  String get contactUs247 => 'Contactez-nous 24/7';

  @override
  String get newAnnouncement => 'NOUVELLE ANNONCE';

  @override
  String get profile => 'Profil';

  @override
  String get upgradeNow => 'METTRE À NIVEAU MAINTENANT';

  @override
  String get followSignalGPT => 'Suivre Signal GPT';

  @override
  String get tabSignal => 'Signal';

  @override
  String get tabChart => 'Graphique';

  @override
  String get tabProfile => 'Profil';

  @override
  String get reason => 'RAISON';

  @override
  String get error => 'Erreur';

  @override
  String get noSignalsAvailable => 'Aucun signal disponible.';

  @override
  String get outOfGoldenHours => 'Hors des heures dorées';

  @override
  String get outOfGoldenHoursVipDesc =>
      'Les signaux VIP sont disponibles de 8h00 à 17h00 (GMT+7).\nPassez à Elite pour obtenir des signaux 24/24 !';

  @override
  String get outOfGoldenHoursDemoDesc =>
      'Les signaux démo sont disponibles de 8h00 à 17h00 (GMT+7).\nMettez votre compte à niveau pour plus d\'avantages !';

  @override
  String get yourName => 'Votre nom';

  @override
  String get yourEmail => 'votre.email@exemple.com';

  @override
  String get adminPanel => 'Panneau d\'administration';

  @override
  String get logout => 'Se déconnecter';

  @override
  String get confirmLogout => 'Confirmer la déconnexion';

  @override
  String get confirmLogoutMessage =>
      'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get cancel => 'Annuler';

  @override
  String get upgradeCardTitle => 'METTEZ VOTRE COMPTE À NIVEAU';

  @override
  String get upgradeCardSubtitle => 'Pour accéder à plus de ressources';

  @override
  String get upgradeCardSubtitleWeb =>
      'Pour débloquer des signaux premium et un support à temps plein';

  @override
  String get subscriptionDetails => 'Détails de l\'abonnement';

  @override
  String get notifications => 'Notifications';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteAccountWarning =>
      'Êtes-vous sûr de vouloir supprimer votre compte ? Toutes vos données seront définitivement effacées et ne pourront pas être récupérées.';

  @override
  String get delete => 'Supprimer';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get termsOfService => 'Conditions d\'utilisation';

  @override
  String get signalStatusMatched => 'CORRESPONDANT';

  @override
  String get signalStatusNotMatched => 'NON CORRESPONDANT';

  @override
  String get signalStatusCancelled => 'ANNULÉ';

  @override
  String get signalStatusSlHit => 'SL ATTEINT';

  @override
  String get signalStatusTp1Hit => 'TP1 ATTEINT';

  @override
  String get signalStatusTp2Hit => 'TP2 ATTEINT';

  @override
  String get signalStatusTp3Hit => 'TP3 ATTEINT';

  @override
  String get signalStatusRunning => 'EN COURS';

  @override
  String get signalStatusClosed => 'FERMÉ';

  @override
  String get contactUs => 'Contactez-nous';

  @override
  String get tabChat => 'Chat';

  @override
  String get exnessUpgradeNoteForIos =>
      'Pour les clients qui ont enregistré un compte Exness via Signal GPT, veuillez cliquer sur contactez-nous pour mettre votre compte à niveau.';

  @override
  String get chatWelcomeTitle => '👋 Bienvenue sur Signal GPT !';

  @override
  String get chatWelcomeBody1 =>
      'Veuillez laisser un message, notre équipe vous répondra dès que possible.';

  @override
  String get chatWelcomeBody2 =>
      'Ou contactez-nous directement via Zalo/WhatsApp : ';

  @override
  String get chatWelcomeBody3 => ' pour un support plus rapide !';

  @override
  String get chatLoginPrompt =>
      'Veuillez vous connecter pour utiliser cette fonctionnalité';

  @override
  String get chatStartConversation => 'Commencer votre conversation';

  @override
  String get chatNoMessages => 'Pas encore de messages.';

  @override
  String get chatTypeMessage => 'Tapez un message...';

  @override
  String get chatSupportIsTyping => 'Le support est en train d\'écrire...';

  @override
  String chatUserIsTyping(Object userName) {
    return '$userName est en train d\'écrire...';
  }

  @override
  String get chatSeen => 'Vu';

  @override
  String get chatDefaultUserName => 'Utilisateur';

  @override
  String get chatDefaultSupportName => 'Support';

  @override
  String get signalEntry => 'Entrée';

  @override
  String get price1Month => '\$11.99';

  @override
  String get price12Months => '\$89.00';

  @override
  String get price12MonthsOld => '\$178.00';

  @override
  String get foreignTraderSupport =>
      'Pour les traders étrangers, veuillez nous contacter via WhatsApp (Signal GPT) pour obtenir de l\'aide';

  @override
  String get signalSl => 'SL';

  @override
  String get upgradeToSeeDetails => 'Mettre à niveau pour voir les détails...';

  @override
  String get buy => 'ACHETER';

  @override
  String get sell => 'VENDRE';

  @override
  String get logoutDialogTitle => 'Session expirée';

  @override
  String get logoutDialogDefaultReason =>
      'Votre compte a été connecté sur un autre appareil.';

  @override
  String get ok => 'OK';

  @override
  String get contactToUpgrade => 'Contacter pour mettre à niveau';

  @override
  String get noNotificationsYet => 'Pas encore de notifications.';

  @override
  String get markAllRead => 'Tout marquer comme lu';

  @override
  String daysAgo(int count) {
    return 'il y a $count jours';
  }

  @override
  String hoursAgo(int count) {
    return 'il y a $count heures';
  }

  @override
  String minutesAgo(int count) {
    return 'il y a $count minutes';
  }

  @override
  String get justNow => 'À l\'instant';

  @override
  String get getSignalsNow => 'Obtenir des Signaux';

  @override
  String get freeTrial => 'Essai Gratuit';

  @override
  String get heroTitle =>
      'Guider les traders & faire croître les portefeuilles';

  @override
  String get heroSubtitle => 'Le moteur IA ultime – Conçu par des experts';

  @override
  String get globalAiInnovationTitle =>
      'Innovation IA mondiale pour la prochaine génération de trading intelligent';

  @override
  String get globalAiInnovationDesc =>
      'Transformer le trading traditionnel avec des signaux IA basés sur le cloud — s\'adaptant aux nouvelles et tendances du marché en temps réel pour des performances plus rapides, plus précises et sans émotion.';

  @override
  String get liveTradingSignalsTitle =>
      'EN DIRECT – Signaux de trading IA 24/7';

  @override
  String get liveTradingSignalsDesc =>
      'Analyses cloud en temps réel fournissant des stratégies de suivi de tendance à haute probabilité avec une précision adaptative et une exécution sans émotion.';

  @override
  String get trendFollowing => 'Suivi de tendance';

  @override
  String get realtime => 'Temps réel';

  @override
  String get orderExplanationEngineTitle => 'Moteur d\'explication des ordres';

  @override
  String get orderExplanationEngineDesc =>
      'Explique les configurations de trading en termes simples — montrant comment les confluences se forment, pourquoi les entrées sont faites, et aidant les traders à apprendre de chaque décision.';

  @override
  String get transparent => 'Transparent';

  @override
  String get educational => 'Éducatif';

  @override
  String get logical => 'Logique';

  @override
  String get transparentRealPerformanceTitle =>
      'Transparent - Performance réelle';

  @override
  String get transparentRealPerformanceDesc =>
      'Voir des données réelles sur la précision des signaux, le taux de réussite et la rentabilité — vérifiées et traçables dans chaque transaction';

  @override
  String get results => 'Résultats';

  @override
  String get performanceTracking => 'Suivi de performance';

  @override
  String get accurate => 'Précis';

  @override
  String get predictiveAccuracy => 'Précision prédictive';

  @override
  String get improvementInProfitability => 'Amélioration de la rentabilité';

  @override
  String get improvedRiskManagement => 'Gestion des risques améliorée';

  @override
  String get signalsPerformanceTitle => 'Performance des signaux';

  @override
  String get riskToRewardRatio => 'Ratio risque/récompense';

  @override
  String get howRiskComparesToReward =>
      'Comment le risque se compare à la récompense';

  @override
  String get profitLossOverview => 'Aperçu Profits/Pertes';

  @override
  String get netGainVsLoss => 'Gain net vs perte';

  @override
  String get winRate => 'Taux de réussite';

  @override
  String get percentageOfWinningTrades =>
      'Pourcentage de transactions gagnantes';

  @override
  String get accuracyRate => 'Taux de précision';

  @override
  String get howPreciseOurSignalsAre => 'La précision de nos signaux';

  @override
  String get realtimeMarketAnalysis => 'Analyse de marché en temps réel';

  @override
  String get realtimeMarketAnalysisDesc =>
      'Notre IA surveille le marché en continu, identifiant les zones de convergence technique et les points de rupture fiables pour que vous puissiez entrer au bon moment.';

  @override
  String get saveTimeOnAnalysis => 'Gagnez du temps sur l\'analyse';

  @override
  String get saveTimeOnAnalysisDesc =>
      'Plus besoin de passer des heures à lire des graphiques. Recevez des stratégies d\'investissement sur mesure en quelques minutes par jour.';

  @override
  String get minimizeEmotionalTrading => 'Minimisez le trading émotionnel';

  @override
  String get minimizeEmotionalTradingDesc =>
      'Avec des alertes intelligentes, une détection des risques et des signaux basés sur des données (pas des émotions), vous restez discipliné et en contrôle de chaque décision.';

  @override
  String get seizeEveryOpportunity => 'Saisissez chaque opportunité';

  @override
  String get seizeEveryOpportunityDesc =>
      'Des mises à jour de stratégie opportunes livrées directement dans votre boîte de réception vous assurent de surfer sur les tendances du marché au moment parfait.';

  @override
  String get minvestAiCoreValueTitle => 'Valeur fondamentale de Signal GPT';

  @override
  String get minvestAiCoreValueDesc =>
      'L\'IA analyse les données de marché en temps réel en continu, filtrant les informations pour identifier des opportunités d\'investissement rapides et précises';

  @override
  String get frequentlyAskedQuestions => 'Foire Aux Questions (FAQ)';

  @override
  String get faqSubtitle =>
      'Toutes vos questions — de la façon de rejoindre, aux avantages, en passant par le fonctionnement de notre IA — trouvent réponse juste ci-dessous. Si vous avez encore des doutes, n\'hésitez pas à nous envoyer un message sur Whatsapp';

  @override
  String get maximizeResultsTitle =>
      'Maximisez vos résultats avec Signal GPT\nanalyse de marché avancée et signaux filtrés avec précision';

  @override
  String get elevateTradingWithAiStrategies =>
      'Élevez votre trading avec des stratégies améliorées par l\'IA conçues pour la cohérence et la clarté';

  @override
  String get winMoreWithAiSignalsTitle =>
      'Gagnez plus avec des signaux alimentés par l\'IA\ndans chaque marché';

  @override
  String get winMoreWithAiSignalsDesc =>
      'Notre IA multi-marchés scanne le Currency pair, les Cryptos et les Métaux en temps réel,\nfournissant des signaux de trading validés par des experts —\navec des niveaux d\'entrée, de stop-loss et de take-profit clairs';

  @override
  String get buyLimit => 'Achat limite';

  @override
  String get sellLimit => 'Vente limite';

  @override
  String get smarterToolsTitle =>
      'Outils plus intelligents - Meilleurs investissements';

  @override
  String get smarterToolsDesc =>
      'Découvrez les fonctionnalités qui vous aident à minimiser les risques, saisir les opportunités et faire croître votre patrimoine';

  @override
  String get performanceOverviewTitle => 'Aperçu des performances';

  @override
  String get performanceOverviewDesc =>
      'Notre IA multi-marchés scanne le Currency pair, les Cryptos et les Métaux en temps réel, fournissant des signaux de trading validés par des experts - avec des niveaux d\'entrée, de stop-loss et de take-profit clairs';

  @override
  String get totalProfit => 'Profit total';

  @override
  String get completionSignal => 'Signal d\'achèvement';

  @override
  String get onDemandFinancialExpertTitle =>
      'Votre expert financier à la demande';

  @override
  String get onDemandFinancialExpertDesc =>
      'La plateforme IA suggère des signaux de trading - auto-apprenante, analyse le marché 24/7, non affectée par les émotions. Signal GPT a soutenu plus de 10 000 analystes financiers\ndans leur parcours pour trouver des signaux précis, stables et faciles à appliquer';

  @override
  String get aiPoweredSignalPlatform =>
      'Plateforme de signaux de trading alimentée par l\'IA';

  @override
  String get selfLearningSystems =>
      'Systèmes auto-apprenants, perspectives plus nettes, transactions plus fortes';

  @override
  String get emotionlessExecution =>
      'Exécution sans émotion pour un trading plus intelligent\net plus discipliné';

  @override
  String get analysingMarket247 => 'Analyse du marché 24/7';

  @override
  String get maximizeResultsFeaturesTitle =>
      'Maximisez vos résultats avec l\'analyse de marché avancée\net les signaux filtrés avec précision de Signal GPT';

  @override
  String get minvestAiRegistrationDesc =>
      'L\'inscription à Signal GPT est maintenant ouverte — les places pourraient être bientôt limitées, car nous examinons et approuvons les nouveaux membres.';

  @override
  String get currencyPairs => 'Produits';

  @override
  String get allCurrencyPairs => 'Toutes les paires de devises';

  @override
  String get allCommodities => 'Tous les produits';

  @override
  String get allCryptoPairs => 'Toutes les cryptos';

  @override
  String get dateRange => 'Plage de dates';

  @override
  String get selectDateRange => 'Sélectionner une plage de dates';

  @override
  String get allAssets => 'Tous les actifs';

  @override
  String get asset => 'Actif';

  @override
  String get tokenExpired => 'Jeton expiré';

  @override
  String get tokenLimitReachedDesc =>
      'Vous avez utilisé vos 10 jetons gratuits aujourd\'hui. Mettez à niveau votre forfait pour voir plus de signaux.';

  @override
  String get later => 'Plus tard';

  @override
  String get created => 'Créé';

  @override
  String get detail => 'Détail';

  @override
  String get performanceOverview => 'Aperçu des performances';

  @override
  String get totalProfitPips => 'Profit total (Pips)';

  @override
  String get winRatePercent => 'Taux de réussite (%)';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get errorLoadingHistory =>
      'Erreur lors du chargement de l\'historique';

  @override
  String get noHistoryAvailable => 'Aucun historique de signal disponible';

  @override
  String get previous => 'Précédent';

  @override
  String get page => 'Page';

  @override
  String get next => 'Suivant';

  @override
  String get date => 'Date';

  @override
  String get timeGmt7 => 'Heure';

  @override
  String get orders => 'Ordres';

  @override
  String get pips => 'Pips';

  @override
  String get smallScreenRotationHint =>
      'Petit écran : tournez en paysage ou faites défiler horizontalement pour voir le tableau complet.';

  @override
  String get history => 'Historique';

  @override
  String get signalsWillAppearHere =>
      'Les signaux apparaîtront ici lorsqu\'ils seront disponibles';

  @override
  String get pricing => 'Tarification';

  @override
  String get choosePlanSubtitle => 'Choisissez un plan qui vous convient';

  @override
  String get financialNewsHub => 'Centre d\'actualités financières';

  @override
  String get financialNewsHubDesc =>
      'Mises à jour critiques. Réactions du marché. Pas de bruit – juste ce que les investisseurs doivent savoir.';

  @override
  String get newsTabAllArticles => 'Tous les articles';

  @override
  String get newsTabInvestor => 'Investisseur';

  @override
  String get newsTabKnowledge => 'Connaissances';

  @override
  String get newsTabTechnicalAnalysis => 'Analyse technique';

  @override
  String noArticlesForCategory(Object category) {
    return 'Aucun article pour la catégorie $category';
  }

  @override
  String get mostPopular => 'Le plus populaire';

  @override
  String get noPosts => 'Aucun article';

  @override
  String get relatedArticles => 'Articles connexes';

  @override
  String get contactInfoSentSuccess =>
      'Informations de contact envoyées avec succès.';

  @override
  String contactInfoSentFailed(Object error) {
    return 'Échec de l\'envoi des informations : $error';
  }

  @override
  String get contactPageSubtitle =>
      'Des questions ou besoin de solutions d\'IA ? Faites-le nous savoir en remplissant le formulaire, et nous vous contacterons !';

  @override
  String get phone => 'Téléphone';

  @override
  String get firstName => 'Prénom';

  @override
  String get enterFirstName => 'Entrez le prénom';

  @override
  String get lastName => 'Nom de famille';

  @override
  String get enterLastName => 'Entrez le nom de famille';

  @override
  String get whatAreYourConcerns => 'Quelles sont vos préoccupations ?';

  @override
  String get writeConcernsHere => 'Écrivez vos préoccupations ici...';

  @override
  String pleaseEnter(Object field) {
    return 'Veuillez entrer $field';
  }

  @override
  String get faqQuestion1 =>
      'Les signaux garantissent-ils un taux de réussite de 100 % ?';

  @override
  String get faqAnswer1 =>
      'Bien qu\'aucun signal ne puisse être garanti à 100 %, Signal GPT s\'efforce de maintenir un taux de réussite stable de 60 à 80 %, soutenu par une analyse détaillée et une gestion des risques afin que vous puissiez prendre la décision finale avec une plus grande confiance.';

  @override
  String get faqQuestion2 =>
      'Si je ne souhaite pas déposer tout de suite, puis-je toujours recevoir des suggestions de signaux ?';

  @override
  String get faqAnswer2 =>
      'Lors de l\'ouverture d\'un compte, le système vous offrira 10 jetons gratuits, équivalant à 10 vues détaillées des signaux. Ensuite, vous recevrez 1 jeton supplémentaire chaque jour à utiliser. Si vous passez à un compte VIP, vous débloquerez de nombreuses fonctionnalités avancées et pourrez suivre un nombre illimité d\'ordres.';

  @override
  String get faqQuestion3 =>
      'Si je me suis inscrit mais que je n\'ai reçu aucun signal, quelles mesures dois-je prendre ?';

  @override
  String get faqAnswer3 =>
      'Le traitement est généralement automatique. Si vous ne voyez toujours aucune suggestion de signal, veuillez nous contacter via Whatsapp pour une assistance immédiate.';

  @override
  String get faqQuestion4 =>
      'Combien de signaux recevrai-je par jour en passant à un compte VIP ?';

  @override
  String get faqAnswer4 =>
      'En passant à un compte VIP, vous recevrez des signaux de trading illimités chaque jour. Le nombre de signaux n\'est pas fixe, mais dépend entièrement de l\'analyse du marché. Chaque fois qu\'un point d\'entrée de haute qualité et à forte probabilité apparaît, l\'équipe d\'analyse vous enverra le signal immédiatement.';

  @override
  String get priceLevels => 'Niveaux de prix';

  @override
  String get capitalManagement => 'Gestion du capital';

  @override
  String freeSignalsLeft(Object count) {
    return '$count signaux gratuits restants';
  }

  @override
  String get unlimitedSignals => 'Signaux illimités';

  @override
  String get goBack => 'Retour';

  @override
  String get goldPlan => 'Plan Or';

  @override
  String get perMonth => '/mois';

  @override
  String get continuouslyUpdating =>
      'Mise à jour continue des données de marché 24/7';

  @override
  String get providingBestSignals =>
      'Fournissant les meilleurs signaux en temps réel';

  @override
  String get includesEntrySlTp => 'Comprend Entrée, SL, TP';

  @override
  String get detailedAnalysis =>
      'Analyse détaillée et évaluation de chaque signal';

  @override
  String get realTimeNotifications => 'Notifications en temps réel par e-mail';

  @override
  String get signalPerformanceStats =>
      'Statistiques de performance des signaux';

  @override
  String get companyName => 'Signal GPT';

  @override
  String get enterpriseCodeDetails => 'Code d\'entreprise : Signal GPT';

  @override
  String get addressDetails =>
      'Adresse : 8 rue Do Hanh, quartier Hai Ba Trung, ville de Hanoï, Vietnam';

  @override
  String get pagesTitle => 'Pages';

  @override
  String get legalRegulatoryTitle => 'Légal et réglementaire';

  @override
  String get termsOfRegistration => 'Conditions d\'inscription';

  @override
  String get operatingPrinciples => 'Principes de fonctionnement';

  @override
  String get termsConditions => 'Termes et Conditions';

  @override
  String get contactTitle => 'Contact';

  @override
  String get navFeatures => 'Fonctionnalités';

  @override
  String get navNews => 'Actualités';

  @override
  String get tp1Hit => 'TP1 Atteint';

  @override
  String get tp2Hit => 'TP2 Atteint';

  @override
  String get tp3Hit => 'TP3 Atteint';

  @override
  String get slHit => 'SL Atteint';

  @override
  String get cancelled => 'Annulé';

  @override
  String get exitedByAdmin => 'Sorti par Admin';

  @override
  String get signalClosed => 'Fermé';

  @override
  String get errorLoadingPackages => 'Erreur de chargement des forfaits';

  @override
  String get monthly => 'Mensuel';

  @override
  String get annually => 'Annuel';

  @override
  String get whatsIncluded => 'Ce qui est inclus :';

  @override
  String get chooseThisPlan => 'Choisir ce plan';

  @override
  String get bestPricesForPremiumAccess =>
      'Meilleurs prix pour un accès premium';

  @override
  String get choosePlanFitsNeeds =>
      'Choisissez un plan adapté aux besoins de votre entreprise et commencez à automatiser avec l\'IA';

  @override
  String get save50Percent => 'ÉCONOMISEZ 50%';

  @override
  String get save40Percent => 'ÉCONOMISEZ 40%';

  @override
  String get save65Percent => 'ÉCONOMISEZ 65%';

  @override
  String get tryDemo => 'Essayer la démo';

  @override
  String get pleaseEnterEmailPassword =>
      'Veuillez saisir l\'e-mail et le mot de passe';

  @override
  String loginFailed(String error) {
    return 'Échec de la connexion : $error';
  }

  @override
  String get welcomeBack => 'Bon retour';

  @override
  String get signInToContinue => 'Connectez-vous à votre compte pour continuer';

  @override
  String get or => 'ou';

  @override
  String get email => 'E-mail';

  @override
  String get emailHint => 'exemple123@gmail.com';

  @override
  String get password => 'Mot de passe';

  @override
  String get enterPassword => 'Entrez le mot de passe';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get createNewAccount => 'Créer un nouveau compte ici !';

  @override
  String get signUp => 'S\'inscrire';

  @override
  String get signUpAccount => 'Créer un compte';

  @override
  String get enterPersonalData =>
      'Saisissez vos données personnelles pour créer votre compte';

  @override
  String get nameLabel => 'Nom *';

  @override
  String get enterNameHint => 'Entrez le nom';

  @override
  String get emailLabel => 'E-mail *';

  @override
  String get passwordLabel => 'Mot de passe *';

  @override
  String get phoneLabel => 'Téléphone';

  @override
  String get continueButton => 'Continuer';

  @override
  String get fillAllFields => 'Veuillez remplir tous les champs obligatoires.';

  @override
  String get accountCreatedSuccess => 'Compte créé avec succès.';

  @override
  String signUpFailed(String error) {
    return 'Échec de l\'inscription : $error';
  }

  @override
  String get nationality => 'Nationalité :';

  @override
  String get overview => 'Aperçu';

  @override
  String get setting => 'Paramètres';

  @override
  String get paymentHistory => 'Historique des paiements';

  @override
  String get signalsPlan => 'Plan de signaux';

  @override
  String get aiSignalGPT => 'AI Signal GPT';

  @override
  String get yourTokens => 'Vos jetons';

  @override
  String get emailNotificationPreferences =>
      'Préférences de notification par e-mail';

  @override
  String get chooseSignalNotificationTypes =>
      'Choisissez les types de notifications de signaux que vous souhaitez recevoir par e-mail';

  @override
  String get allSignalNotifications => 'Toutes les notifications de signaux';

  @override
  String get cryptoSignals => 'Signaux Crypto';

  @override
  String get forexSignals => 'Signaux Currency pair';

  @override
  String get goldSignals => 'Signaux Or';

  @override
  String get updatePasswordSecure =>
      'Mettez à jour votre mot de passe pour sécuriser votre compte';

  @override
  String get searchLabel => 'Rechercher :';

  @override
  String get filterBy => 'Filtrer par :';

  @override
  String get allTime => 'Tout le temps';

  @override
  String get startDate => 'Date de début :';

  @override
  String get endDate => 'Date de fin :';

  @override
  String get deactivate => 'Désactiver';

  @override
  String get unlimited => 'Illimité';

  @override
  String get tenLeft => '10 restants';

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
  String get performance => 'Performance';

  @override
  String get minvestSupport => 'Signal GPT Support';

  @override
  String get leaveMessagePart1 =>
      'Veuillez laisser un message, notre équipe vous répondra dès que possible. Vous pouvez également contacter ';

  @override
  String get chatWhatsApp => 'WhatsApp';

  @override
  String get leaveMessagePart2 => ' Signal GPT pour une assistance rapide.';

  @override
  String get currentPlan => 'Plan actuel';

  @override
  String get standard => 'STANDARD';

  @override
  String get availableTokens => 'Jetons disponibles';

  @override
  String get subscriptions => 'Abonnements';

  @override
  String get usesTokenPerView => 'Utilise 1 jeton par vue';

  @override
  String get unlimitedAccess => 'Accès illimité';

  @override
  String get activeElite => 'Actif (Elite)';

  @override
  String get active => 'Actif';

  @override
  String get inactive => 'Inactif';

  @override
  String get transactionHistory => 'Historique des transactions';

  @override
  String get noTransactionsFound => 'Aucune transaction trouvée.';

  @override
  String get colDate => 'Date';

  @override
  String get colProduct => 'Produit';

  @override
  String get colAmount => 'Montant';

  @override
  String get colMethod => 'Méthode';

  @override
  String get colStatus => 'Statut';

  @override
  String get statusSuccess => 'Succès';

  @override
  String get featureForVipOnly =>
      'Cette fonctionnalité est réservée aux clients VIP, veuillez mettre à niveau pour recevoir les notifications.';

  @override
  String get changePassword => 'Changer le mot de passe';

  @override
  String get currentPassword => 'Mot de passe actuel';

  @override
  String get newPassword => 'Nouveau mot de passe';

  @override
  String get confirmNewPassword => 'Confirmer le nouveau mot de passe';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get passwordUpdateSuccess => 'Mot de passe mis à jour avec succès';

  @override
  String passwordUpdateFailed(String error) {
    return 'Échec de la mise à jour du mot de passe : $error';
  }

  @override
  String get reauthFailed => 'Mot de passe actuel incorrect';

  @override
  String get signInRequired => 'Connexion requise';

  @override
  String get signInToExploreSignal =>
      'Connectez-vous pour explorer ce signal de trading !';

  @override
  String get activeMember => 'Membre actif';

  @override
  String get last7Days => '7 derniers jours';

  @override
  String get last14Days => '14 derniers jours';

  @override
  String get last30Days => '30 derniers jours';

  @override
  String get last90Days => '90 derniers jours';

  @override
  String get profitStatistics => 'Statistiques de profit';

  @override
  String get winrateOfAllSignals => 'Taux de réussite de tous les signaux';

  @override
  String get daily => 'Quotidien';

  @override
  String get weekly => 'Hebdomadaire';

  @override
  String get lossRate => 'Taux de perte';

  @override
  String get signalProgress => 'Progression du signal';

  @override
  String get statusHistory => 'Historique du statut';

  @override
  String get signalCreated => 'Signal créé';

  @override
  String get signalMatched => 'Signal correspondant';

  @override
  String get targetReached => 'Cible atteinte';

  @override
  String get freeSignalsInfo => 'Info Signaux Gratuits';

  @override
  String get freeSignalsInfoDesc =>
      'Vous recevrez 1 signal gratuit par jour.\nLes signaux non utilisés sont reportés au jour suivant.';

  @override
  String freeSignalsCount(int count) {
    return '$count Signaux Gratuits';
  }

  @override
  String get close => 'Fermer';

  @override
  String validUntil(String date) {
    return 'Valide jusqu\'au $date';
  }

  @override
  String get wins => 'Gagnés';

  @override
  String get losses => 'Perdus';

  @override
  String totalOrdersCount(int count) {
    return 'Total : $count ordres';
  }

  @override
  String get passwordResetEmailSent =>
      'E-mail de réinitialisation du mot de passe envoyé ! Veuillez consulter votre boîte de réception.';

  @override
  String get pageOf => 'sur';

  @override
  String get keyFindings => 'Résultats clés';

  @override
  String get filterStatusLabel => 'Statut';

  @override
  String get filterStatusAll => 'Tous les statuts';

  @override
  String get filterStatusTp1 => 'TP1 ATTEINT';

  @override
  String get filterStatusTp2 => 'TP2 ATTEINT';

  @override
  String get filterStatusTp3 => 'TP3 ATTEINT';

  @override
  String get filterStatusSl => 'SL ATTEINT';

  @override
  String get filterStatusCancelled => 'ANNULÉ';

  @override
  String get filterStatusExitByAdmin => 'SORTI PAR ADMIN';

  @override
  String get popupMasterMarket => 'Voulez-vous maîtriser le marché ?';

  @override
  String get popupLoginExplore =>
      'Connectez-vous pour explorer ce bulletin de trading !';

  @override
  String get disclaimer => 'Avertissement';

  @override
  String get disclaimerContent =>
      'Les informations sur signalgpt.ai sont fournies à titre indicatif et de partage de connaissances uniquement, et ne constituent pas des conseils en investissement. Les utilisateurs sont seuls responsables de leurs propres décisions de trading.';

  @override
  String get openTradingAccount => 'Ouvrir un compte de trading';

  @override
  String get supportUs => 'Nous soutenir';

  @override
  String get rateApp => 'Noter l\'application';

  @override
  String get shareApp => 'Partager l\'application';

  @override
  String get accountDetails => 'Détails du compte';

  @override
  String get language => 'Langue';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get accounts => 'Comptes';

  @override
  String get accessExchange => 'Accéder à la bourse';

  @override
  String get onlineSupport => 'Support en ligne';

  @override
  String get selectLanguage => 'Sélectionner la langue';

  @override
  String get left => 'restant';

  @override
  String get upgradeToPro => 'Passer à Pro';

  @override
  String get assetGold => 'Or';

  @override
  String get assetCrypto => 'Crypto';

  @override
  String get assetForex => 'PAIRE DE DEVISES';

  @override
  String get tokens => 'Jetons';

  @override
  String get noForexAssets => 'Aucun actif de paires de devises disponible';

  @override
  String openApp(String appName) {
    return 'Ouvrir $appName';
  }

  @override
  String get signalStatus => 'Statut';

  @override
  String get signalEntryLabel => 'ENTRÉE';

  @override
  String get signalSlLabel => 'SL';

  @override
  String get signalTp1Label => 'TP1';

  @override
  String get signalTp2Label => 'TP2';

  @override
  String get signalTp3Label => 'TP3';

  @override
  String get analyze => 'Analyser';

  @override
  String get useTokenToView => 'Utiliser un jeton pour voir le signal';

  @override
  String get viewNow => 'Voir maintenant';

  @override
  String get waitingNewSignals => 'En attente de nouveaux signaux...';

  @override
  String get failedUnlockSignal => 'Échec du déverrouillage du signal';

  @override
  String get notEnoughTokens => 'Pas assez de jetons';

  @override
  String get newSignalUploaded => 'Nouveau signal publié';

  @override
  String newSymbolSignalUploaded(String symbol) {
    return 'Nouveau signal $symbol publié !';
  }

  @override
  String get upgradeToViewSignalBanner => 'Mettre à niveau pour voir le signal';

  @override
  String get signalHistory => 'Historique des signaux';

  @override
  String get allStatus => 'TOUT';

  @override
  String get selectDate => 'Sélectionner la date';

  @override
  String get noHistoryFound => 'Aucun historique trouvé';

  @override
  String get filterDate => 'Date';

  @override
  String get marketChart => 'GRAPHIQUE DU MARCHÉ';

  @override
  String get analysisExplanation => 'Analyse et explication';

  @override
  String get noDetailedAnalysis =>
      'Aucune analyse détaillée disponible pour ce signal.';

  @override
  String get affiliateDashboard => 'Tableau de bord affilié';

  @override
  String get referralLink => 'Lien de parrainage';

  @override
  String get copyLink => 'Copier le lien';

  @override
  String get referralCount => 'Nombre de parrainages';

  @override
  String get totalEarnings => 'Gains totaux';

  @override
  String get pendingCommission => 'Commission en attente';

  @override
  String get latestReferrals => 'Derniers parrainages';

  @override
  String get noReferralsYet => 'Aucun parrainage pour le moment.';

  @override
  String get affiliateRoleRequired =>
      'Rôle d\'affilié requis. Veuillez contacter l\'administrateur.';

  @override
  String get affiliateCodeNotAssigned =>
      'Code d\'affilié non encore attribué. Veuillez contacter l\'administrateur.';

  @override
  String get referralLinkDescription =>
      'Utilisez ce lien pour parrainer des utilisateurs et gagner 40% de commission à vie.';

  @override
  String get linkCopied => 'Lien copié dans le presse-papiers !';

  @override
  String get enterReferralCode => 'Entrez le code de parrainage';

  @override
  String get referralCodeDescription =>
      'Enter referral code to receive exclusive offers from our partners.';

  @override
  String get referralCode => 'Code de parrainage';

  @override
  String get submit => 'Soumettre';

  @override
  String get invalidReferralCode => 'Code de parrainage invalide.';

  @override
  String get referralCodeApplied => 'Code de parrainage appliqué avec succès !';

  @override
  String get getTheAppForBestExperience =>
      'Téléchargez l\'application pour la meilleure expérience';

  @override
  String get installApp => 'Installer l\'application';

  @override
  String get reviews => 'avis';

  @override
  String get priceLifetime => '\$249.00';

  @override
  String get priceLifetimeOld => '\$712.00';

  @override
  String get durationLifetime => 'À vie';

  @override
  String get orderInfoLifetime => 'Paiement pour le forfait Elite À vie';

  @override
  String get lifetime => 'À vie';

  @override
  String get loginNow => 'Se connecter maintenant';

  @override
  String get loginToViewSignals => 'Connectez-vous pour voir les signaux';

  @override
  String get loginToViewSignalsDesc =>
      'Veuillez vous connecter pour voir les signaux Signal GPT et accéder à toutes les fonctionnalités.';

  @override
  String get loginToViewHistory => 'Connectez-vous pour voir l\'historique';

  @override
  String get loginToViewHistoryDesc =>
      'L\'historique des signaux est uniquement disponible pour les utilisateurs connectés. Veuillez vous connecter pour suivre les performances de Signal GPT.';

  @override
  String get letsGetYouIn => 'Connectons-nous !';

  @override
  String get dontHaveAnAccount => 'Vous n\'avez pas de compte ? ';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get createYourAccount => 'Créez votre compte';

  @override
  String get login => 'Connexion';

  @override
  String get rememberYourPassword => 'Se souvenir du mot de passe';

  @override
  String get signInWith => 'Se connecter avec';

  @override
  String get getStarted => 'Commencer';

  @override
  String get pleaseEnterEmail => 'Veuillez saisir votre e-mail';

  @override
  String get pleaseEnterPassword => 'Veuillez saisir votre mot de passe';

  @override
  String get pleaseEnterCurrentPassword =>
      'Veuillez saisir votre mot de passe actuel';

  @override
  String get pleaseEnterNewPassword =>
      'Veuillez saisir votre nouveau mot de passe';

  @override
  String get pleaseConfirmNewPassword =>
      'Veuillez confirmer votre nouveau mot de passe';

  @override
  String get pleaseConfirmPassword => 'Veuillez confirmer votre mot de passe';

  @override
  String get passwordMinLength =>
      'Le mot de passe doit comporter au moins 6 caractères';

  @override
  String get savePassword => 'Enregistrer le mot de passe';

  @override
  String get verifyYourEmail => 'Vérifiez votre e-mail';

  @override
  String get pleaseEnterVerificationCode =>
      'Veuillez entrer le code à 6 chiffres\nenvoyé à votre e-mail';

  @override
  String get pleaseEnterAllDigits => 'Veuillez entrer les 6 chiffres';

  @override
  String get invalidOrExpiredCode => 'Code de vérification invalide ou expiré';

  @override
  String get anErrorOccurred =>
      'Une erreur s\'est produite. Veuillez réessayer.';

  @override
  String get verificationCodeResent => 'Code de vérification renvoyé !';

  @override
  String failedToResendCode(String error) {
    return 'Échec du renvoi du code : $error';
  }

  @override
  String get resendCode => 'Renvoyer le code';

  @override
  String get verify => 'Vérifier';

  @override
  String get resetPassword => 'Réinitialiser le mot de passe';

  @override
  String get forgotPasswordInstructions =>
      'Veuillez saisir l\'adresse e-mail utilisée pour créer votre compte\n\nNous enverrons un code de vérification à votre adresse e-mail.';

  @override
  String get sendButton => 'Envoyer';

  @override
  String get unableToReceiveEmail =>
      'Si vous ne parvenez pas à recevoir l\'e-mail, veuillez nous contacter à l\'adresse @gmail.com';

  @override
  String get verificationCodeSentTo =>
      'Nous avons envoyé un code de vérification à';

  @override
  String get passwordResetSuccessful =>
      'Réinitialisation du mot de passe réussie !';

  @override
  String errorGeneric(String message) {
    return 'Erreur : $message';
  }

  @override
  String get accountAlreadyExists => 'Le compte existe déjà';

  @override
  String accountAlreadyExistsMessage(String email) {
    return 'L\'e-mail $email est déjà enregistré dans le système. Veuillez vous connecter ou utiliser la fonctionnalité de mot de passe oublié.';
  }

  @override
  String systemError(String error) {
    return 'Erreur système : $error';
  }

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get referralCodeOptional => 'Code de parrainage (Optionnel)';

  @override
  String get accountDeletedSuccessfully =>
      'Le compte a été définitivement supprimé.';

  @override
  String accountDeleteError(String error) {
    return 'Erreur lors de la suppression du compte : $error';
  }

  @override
  String get passwordChangedSuccessfully =>
      'Mot de passe modifié avec succès !';

  @override
  String get errorChangingPassword =>
      'Erreur lors du changement de mot de passe. Veuillez vérifier votre mot de passe actuel.';

  @override
  String get enableNotificationsHint =>
      'Activez les notifications dans les paramètres de l\'appareil pour voir les nouvelles mises à jour sur l\'écran de verrouillage';

  @override
  String get navigateToDeviceSettings =>
      'Accéder aux paramètres de l\'appareil.';

  @override
  String get turnOffAllNotifications => 'Désactiver toutes les notifications';

  @override
  String get pauseAllNotifications => 'Suspendre toutes les notifications';

  @override
  String get turnOnCryptoSignals => 'Activer les signaux crypto';

  @override
  String get turnOnCurrencyPairSignals =>
      'Activer les signaux de paires de devises';

  @override
  String get turnOnGoldSignals => 'Activer les signaux or';

  @override
  String get currencyPairSignals => 'Signaux de paires de devises';

  @override
  String get termsOfUseContent =>
      'En accédant ou en utilisant cette application, vous acceptez de respecter les Conditions d\'utilisation. Cette application est fournie à titre informatif uniquement, et nous ne garantissons pas l\'exactitude, l\'exhaustivité ou la fiabilité de tout contenu ou signal affiché. Vous êtes seul responsable de la manière dont vous utilisez les informations fournies dans l\'application. Nous nous réservons le droit de modifier, suspendre ou interrompre le service à tout moment sans préavis. L\'utilisation continue de l\'application constitue l\'acceptation de toute mise à jour des conditions.';

  @override
  String get tradingHistoryTitle => 'Historique de trading';

  @override
  String get tp1Live => 'TP1 EN COURS';

  @override
  String get tp2Live => 'TP2 EN COURS';

  @override
  String get tp3Live => 'TP3 EN COURS';

  @override
  String get stopLossTriggered => 'Stop loss déclenché';

  @override
  String entryWithPrice(String price) {
    return 'Entrée : $price';
  }

  @override
  String get signalGptTitle => 'Signal GPT';

  @override
  String get categoryGold => 'OR';

  @override
  String get categoryCrypto => 'CRYPTO';

  @override
  String get subscriptionAutoRenewDisclaimer =>
      'L\'abonnement se renouvellera automatiquement sauf annulation au moins 24 heures avant la fin de la période en cours. Vous pouvez gérer et annuler vos abonnements dans les paramètres de votre compte App Store. Le plan à vie est un achat unique.';

  @override
  String get termsOfUseEula => 'Conditions d\'utilisation (EULA)';

  @override
  String productNotFound(String productId) {
    return 'Produit introuvable : $productId. Veuillez vérifier qu\'il est configuré dans les boutiques.';
  }

  @override
  String get perYear => '/ an';

  @override
  String get tierDemoSignalQty => '7-8 par jour';

  @override
  String get elite1Month => 'ELITE 1 Mois';

  @override
  String get elite12Months => 'ELITE 12 Mois';

  @override
  String get statusPending => 'En attente';

  @override
  String get statusFailed => 'Échoué';

  @override
  String get yourReferralCode => 'Votre code de parrainage';

  @override
  String get referralCodeCopied => 'Code de parrainage copié !';

  @override
  String get copyCode => 'Copier le code';

  @override
  String get revenue => 'Revenu';

  @override
  String get availableCommission => 'Commission disponible';

  @override
  String get totalReceivedIncome => 'Revenu total reçu';

  @override
  String depositAmount(String amount) {
    return 'Dépôt : \$$amount';
  }

  @override
  String get importantNotice => 'Avis important';

  @override
  String get accountChangedPleaseRelogin =>
      'Votre compte a été modifié. Veuillez vous reconnecter.';

  @override
  String get iUnderstand => 'Je comprends';

  @override
  String get saveUpTo65Percent => 'ÉCONOMISEZ JUSQU\'À 65%';

  @override
  String get yearlyLifetimeDiscount => 'Annuel -40% • À vie -65%';

  @override
  String get uploadFailedPermissionDenied =>
      'Échec du téléchargement : Permission refusée. Vérifiez les règles de stockage.';

  @override
  String get failedToUploadImage =>
      'Échec du téléchargement de l\'image. Veuillez vérifier votre connexion.';
}
