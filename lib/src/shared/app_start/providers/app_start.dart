// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/core/local/providers/shared_pref.dart';

import '../../socket/providers/socket.dart';
import '../../socket/providers/stocks_price.dart';
part 'app_start.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(Ref ref) async {
  // await dotenv.load(fileName: ".env");
  ref.onDispose(() {
    ref.invalidate(sharedPreferencesProvider);
  });
     await ref.read(socketConnectionProvider().future);
     
    // ref.read(stocksStreamProvider);
  await ref.watch(sharedPreferencesProvider.future);
  // await Firebase.initializeApp();
}
