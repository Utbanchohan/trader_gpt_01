import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:trader_gpt/app.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  SocketService socketService = SocketService();
  socketService.connect();

  runApp(const ProviderScope(child: MyApp()));
}
