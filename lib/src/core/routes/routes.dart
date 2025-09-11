import 'package:go_router/go_router.dart';

enum AppRoutes {
  splash('splash', '/splash'),
  getStartedScreen('getStartedScreen', '/get-started'),
  chatPage('chatPage', '/chat-page'),
  signInPage('signInPage', '/sign-in'),
  signUpPage('signUpPage', '/sign-up'),
  verifaction('verifaction', '/verifaction/:email'),
  profilePage('profilePage', '/profilePage'),
  stockScreen('stockScreen', '/stockScreen'),
  uploadImage('uploadImage', '/uploadImage');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
  static String get dashboardLocation => AppRoutes.getStartedScreen.path;

  static final List<AppRoutes> bottomNavPages = [AppRoutes.chatPage];
  static final List<AppRoutes> webNavBarPages = [getStartedScreen];
  static final List<AppRoutes> settingsNavPages = [];
  static List<AppRoutes> get publicRoutes => [
    AppRoutes.splash,
    AppRoutes.getStartedScreen,
    AppRoutes.signInPage,
    AppRoutes.signUpPage,
    AppRoutes.verifaction,
    AppRoutes.profilePage,
    AppRoutes.chatPage,
    AppRoutes.stockScreen,
    AppRoutes.uploadImage,
  ];
  static bool isPublicRoute(GoRouterState state) {
    final fullPath = state.fullPath;

    return fullPath != null &&
        publicRoutes.any((p) {
          return fullPath.startsWith(p.path);
        });
  }
}
