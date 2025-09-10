// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_page.dart';
import 'package:trader_gpt/src/feature/get_start/presentation/pages/getstart.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final shellKey = GlobalKey<NavigatorState>();
final shellKeySettings = GlobalKey<NavigatorState>();
final routerConfigProvider = Provider((ref) {
  return GoRouter(
    redirect: (BuildContext context, GoRouterState state) async {
      // print("state.path ${state.path}  ${state.fullPath}");
      //   if ( (ref.watch(localDataProvider).accessToken ?? "").isNotEmpty
      // ) {
      //   return AppRoutes.home.path;
      // }
      // return null;
      bool isPublic = AppRoutes.isPublicRoute(state);
      bool isLogin =
          (ref.watch(localDataProvider).accessToken ?? "").isNotEmpty;
      if (isLogin && !isPublic) {
        return null;
      } else if (!isLogin && isPublic) {
        return AppRoutes.chatPage.path;
        // state.fullPath;
      } else if (!isLogin && !isPublic) {
        return AppRoutes.chatPage.path;
      }
      return null;
    },
    debugLogDiagnostics: kDebugMode,
    navigatorKey: navigatorKey,
    initialLocation: AppRoutes.chatPage.path,
    routes: [
     GoRoute(
        path: AppRoutes.getStartedScreen.path,
        name: AppRoutes.getStartedScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return GetStartedScreen();
        },
        routes: [],

      ),
     GoRoute(
        path: AppRoutes.chatPage.path,
        name: AppRoutes.chatPage.name,
        builder: (BuildContext context, GoRouterState state) {
          return ChatPage();
        },
        routes: [],

      ),
    ],
  );
});
