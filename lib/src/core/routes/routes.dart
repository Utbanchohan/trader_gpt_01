import 'package:go_router/go_router.dart';

enum AppRoutes {
  getStartedScreen('getStartedScreen', '/get-started'),
  chatPage('chatPage', '/chat-page');


  final String name;
  final String path;

  const AppRoutes(this.name, this.path);
  static String get dashboardLocation => AppRoutes.getStartedScreen.path;


  // static final List<AppRoutes> bottomNavPages = [
  //   home,
  //   dashboard,
  //   dealz,
  //   home,
  //   home,
  // ];
  static final List<AppRoutes> webNavBarPages = [getStartedScreen];
  static final List<AppRoutes> settingsNavPages = [];
  static List<AppRoutes> get publicRoutes => [getStartedScreen];
  static bool isPublicRoute(GoRouterState state) {
    final fullPath = state.fullPath;

    return fullPath != null &&
        publicRoutes.any((p) {
          return fullPath.startsWith(p.path);
        });
  }
}
