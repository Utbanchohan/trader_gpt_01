import 'package:go_router/go_router.dart';

enum AppRoutes {
  signIn('sign-in', '/sign-in'),
  home('home', '/home'),
  dealsDetail('dealsDetail', '/dealsDetail'),
  dealz('dealz', '/dealz'),
  creditDeals('creditDeals', '/creditDeals'),
  qrScanner('qrScanner', '/qrScanner'),
  myDealz('myDealz', '/myDealz'),
  dashboard('dashboard', '/dashboard'),
  sellerRegistration('sellerRegistrationPage', '/sellerRegistrationPage'),
  becomeSeller('becomeSeller', '/becomeSeller'),
  becomeSellerWebPage('becomeSellerr-webPage', '/becomeSeller-webPage'),
  uploadDealzDetails('uploadDealzDetailsPage', '/uploadDealzDetailsPage'),
  bundleOffer('bundleOfferPage', '/bundleOfferPage'),
  cashCollection('cashCollectionPage', '/cashCollectionPage'),
  dealsDiscounts('dealsDiscountsPage', '/dealsDiscountsPage'),
  forgotPasswordScreen('forgotPasswordScreen', '/forgotPasswordScreen'),
  resetPassword('resetPasswordPage', '/resetPasswordPage');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
  static String get dashboardLocation => AppRoutes.dashboard.path;
  static String get dealDetailLocation => AppRoutes.dealsDetail.path;
  static String get homeLocation => AppRoutes.home.path;
  static String get qrScannerLocation => AppRoutes.qrScanner.path;
  static String get dealsLocation => AppRoutes.dealz.path;
  static String get cashCollectionLocation => AppRoutes.cashCollection.path;
  static String get initialLocation => AppRoutes.signIn.path;
  static String get myDealzLocation => AppRoutes.myDealz.path;
  static String get bundleOfferLocation => AppRoutes.bundleOffer.path;
  static String get becomesellerLocation => AppRoutes.becomeSeller.path;
  static String get creditDealsLocation => AppRoutes.creditDeals.path;
  static String get dealsDiscountsLocation => AppRoutes.dealsDiscounts.path;
  static String get forgotPasswordLocation =>
      AppRoutes.forgotPasswordScreen.path;
  static String get resetPasswordLocation => AppRoutes.resetPassword.path;

  static String get uploadDealzDetailsLocation =>
      AppRoutes.uploadDealzDetails.path;
  static final List<AppRoutes> bottomNavPages = [
    home,
    dashboard,
    dealz,
    home,
    home,
  ];
  static final List<AppRoutes> webNavBarPages = [home];
  static final List<AppRoutes> settingsNavPages = [];
  static List<AppRoutes> get publicRoutes => [signIn,sellerRegistration,becomeSeller,becomeSellerWebPage,forgotPasswordScreen,resetPassword];
  static bool isPublicRoute(GoRouterState state) {
    final fullPath = state.fullPath;

    return fullPath != null &&
        publicRoutes.any((p) {
          return fullPath.startsWith(p.path);
        });
  }
}
