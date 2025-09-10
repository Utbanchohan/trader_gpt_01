// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';

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
        return state.fullPath;
      } else if (!isLogin && !isPublic) {
        return AppRoutes.becomeSeller.path;
      }
      return null;
    },
    debugLogDiagnostics: kDebugMode,
    navigatorKey: navigatorKey,
    initialLocation: AppRoutes.home.path,
    routes: [
     
    ],
  );
});
