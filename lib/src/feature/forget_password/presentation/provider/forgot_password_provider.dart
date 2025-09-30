import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_up_dto/sign_up.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/update_password/update_password_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';
import 'package:trader_gpt/src/feature/update_password/presentation/update_password.dart';
import 'package:trader_gpt/src/shared/socket/domain/repository/repository.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/custom_message.dart';
import '../../../../shared/socket/providers/stocks_price.dart';
import '../../../../shared/states/app_loading_state.dart';

part 'forgot_password_provider.g.dart';

@riverpod
class ForgotPasswordProvider extends _$ForgotPasswordProvider {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<bool?> forgot({required String email}) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .forgetPassword(SignUpDto(email: email));
      if (response.isSuccess) {
        state = AppLoadingState();
        return response.isSuccess;
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

  Future<User?> updatePassword({
    required String email,
    required String otp,
    required String password,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .updatePassword(
            UpdatePasswordDto(email: email, code: otp, newPassword: password),
          );
      if (response.isSuccess) {
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
