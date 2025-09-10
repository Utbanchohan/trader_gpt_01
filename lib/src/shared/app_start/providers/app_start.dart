// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:trader_gpt/src/core/local/providers/shared_pref.dart';
part 'app_start.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(Ref ref) async {
  await dotenv.load(fileName: ".env");
  ref.onDispose(() {
    ref.invalidate(sharedPreferencesProvider);
  });
  await ref.watch(sharedPreferencesProvider.future);
  // await Firebase.initializeApp();
  // ref.read(userProviderProvider.notifier);
}
