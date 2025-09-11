import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';

import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/custom_message.dart';
import '../../../../shared/states/app_loading_state.dart';

part 'sign_in.g.dart';

@riverpod
class Login extends _$Login {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<LoginData?> onSubmit({
    required String email,
    required String password,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .login(SignIn(email: email, password: password));
      if (response.isSuccess) {
        bool isEmailVerified = false;
        if (response.data?.user?.isVerified ?? false) {
          isEmailVerified = true;
        }
        if (isEmailVerified) {
          await ref
              .read(localDataProvider)
              .setAccessToken(response.data?.accessToken ?? '');
          await ref
              .read(localDataProvider)
              .saveUserId(response.data?.user?.id ?? '');

        await ref
              .read(localDataProvider)
              .saveUser(response.data!.user.toJson());
        

         
          state = AppLoadingState();
          return response.data!;
        } else {
          $showMessage("Email is not verified", isError: true);
        }
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
