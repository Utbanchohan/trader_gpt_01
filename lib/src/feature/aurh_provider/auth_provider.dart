import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/core/local/providers/shared_pref.dart';
import 'package:trader_gpt/src/core/local/repository/local_storage_repository.dart';
import 'package:trader_gpt/src/core/routes/routes.dart';

import '../../shared/states/app_loading_state.dart';
part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  AppLoadingState build() => const AppLoadingState();

  updateUser({required String name}) async {}

  onSignOut() async {
    print("onSignOut");
    ref.refresh(disposeMyProvidersProvider);
  }
}

@riverpod
Future<bool> disposeMyProviders(Ref ref) async {
  ref.invalidate(sharedPreferencesProvider);
  ref.invalidate(localDataProvider);
  return true;
}
