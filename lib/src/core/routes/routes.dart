import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/feature/sign_in/presentation/pages/sigin_in.dart';

enum AppRoutes {
  getStartedScreen('getStartedScreen', '/get-started'),
  chatPage('chatPage', '/chat-page'),
  signInPage('signInPage', '/sign-in'),
  signUpPage('signUpPage', '/sign-up'),
  verifaction('verifaction', '/verifaction'),
  profilePage('profilePage', '/profilePage');

  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
  static String get dashboardLocation => AppRoutes.getStartedScreen.path;

  static final List<AppRoutes> bottomNavPages = [AppRoutes.chatPage];
  static final List<AppRoutes> webNavBarPages = [getStartedScreen];
  static final List<AppRoutes> settingsNavPages = [];
  static List<AppRoutes> get publicRoutes => [
    AppRoutes.getStartedScreen,
    AppRoutes.signInPage,
    AppRoutes.signUpPage,
    AppRoutes.verifaction,
    AppRoutes.profilePage,
    AppRoutes.chatPage
  ];
  static bool isPublicRoute(GoRouterState state) {
    final fullPath = state.fullPath;

    return fullPath != null &&
        publicRoutes.any((p) {
          return fullPath.startsWith(p.path);
        });
  }
}
