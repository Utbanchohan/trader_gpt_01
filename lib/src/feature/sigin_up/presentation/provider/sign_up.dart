import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_up_dto/sign_up.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';

import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/custom_message.dart';
import '../../../../shared/states/app_loading_state.dart';

part 'sign_up.g.dart';

@riverpod
class SignUp extends _$SignUp {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<User?> onSubmit({required String email}) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .signUp(SignUpDto(email: email));
      if (response.isSuccess != null && response.isSuccess!) {
        state = AppLoadingState();
        return response.data;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } catch (e) {
      $showMessage(e.toString(), isError: true);
      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
