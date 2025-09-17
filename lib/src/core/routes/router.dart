// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/chat_page.dart';
import 'package:trader_gpt/src/feature/chat/presentation/pages/stock_screen.dart';
import 'package:trader_gpt/src/feature/conversations_start/presentation/pages/conversation_start.dart';
import 'package:trader_gpt/src/feature/get_start/presentation/pages/getstart.dart';
import 'package:trader_gpt/src/feature/my_profile/my_profile.dart';
import 'package:trader_gpt/src/feature/new_conversations/presentation/pages/new_conversation.dart';
import 'package:trader_gpt/src/feature/profile_setup/presentation/pages/profile_setup.dart';
import 'package:trader_gpt/src/feature/s3_uploader/presentation/image_pickert.dart';
import 'package:trader_gpt/src/feature/side_menu/presentation/pages/side_menu.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/pages/sigin_up.dart';
import 'package:trader_gpt/src/feature/sign_in/presentation/pages/sigin_in.dart';
import 'package:trader_gpt/src/feature/splash/presentation/pages/splash.dart';
import 'package:trader_gpt/src/feature/verifaction/presentation/pages/verifaction.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final shellKey = GlobalKey<NavigatorState>();
final shellKeySettings = GlobalKey<NavigatorState>();
final routerConfigProvider = Provider((ref) {
  return GoRouter(
    redirect: (BuildContext context, GoRouterState state) async {
      bool isPublic = AppRoutes.isPublicRoute(state);
      bool isLogin =
          (ref.watch(localDataProvider).accessToken ?? "").isNotEmpty;
      if (isLogin && !isPublic) {
        return null;
      } else if (!isLogin && isPublic) {
        state.fullPath;
      } else if (!isLogin && !isPublic) {
        return AppRoutes.getStartedScreen.path;
      }
      return null;
    },
    debugLogDiagnostics: kDebugMode,
    navigatorKey: navigatorKey,
    initialLocation: AppRoutes.splash.path,
    // initialLocation: AppRoutes.chatPage.path,
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        builder: (BuildContext context, GoRouterState state) {
          return Splash();
        },
        routes: [],
      ),
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
     final args = state.extra!=null? state.extra as Map<String, dynamic>:{}; // 👈 Map cast
    final stock =args!=null && args["stock"] !=null? args["stock"] as Stock?:null;
    final chatId = args!=null && args["chatId"] !=null?args["chatId"] as String?:null;
          return ChatPage(stock: stock,chatId: chatId,);
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.signInPage.path,
        name: AppRoutes.signInPage.name,
        builder: (BuildContext context, GoRouterState state) {
          return SiginIn();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.signUpPage.path,
        name: AppRoutes.signUpPage.name,
        builder: (BuildContext context, GoRouterState state) {
          return SignUp();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.verifaction.path,
        name: AppRoutes.verifaction.name,
        builder: (BuildContext context, GoRouterState state) {
          final email = state.pathParameters['email']!;
          return Verifaction(email: email);
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.profilePage.path,
        name: AppRoutes.profilePage.name,
        builder: (BuildContext context, GoRouterState state) {
          return ProfilePage();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.stockScreen.path,
        name: AppRoutes.stockScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return StockScreen();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.uploadImage.path,
        name: AppRoutes.uploadImage.name,
        builder: (BuildContext context, GoRouterState state) {
          return UploadImageScreen();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.sideMenu.path,
        name: AppRoutes.sideMenu.name,
        builder: (BuildContext context, GoRouterState state) {
          return SideMenu();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.myProfileScreen.path,
        name: AppRoutes.myProfileScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return MyProfileScreen();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.conversationStart.path,
        name: AppRoutes.conversationStart.name,
        builder: (BuildContext context, GoRouterState state) {
          return ConversationStart();
        },
        routes: [],
      ),
      GoRoute(
        path: AppRoutes.newConversation.path,
        name: AppRoutes.newConversation.name,
        builder: (BuildContext context, GoRouterState state) {
          return NewConversation();
        },
        routes: [],
      ),
    ],
  );
});
