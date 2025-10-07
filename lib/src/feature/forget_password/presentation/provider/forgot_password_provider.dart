import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_up_dto/sign_up.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/update_password/update_password_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';
import '../../../../shared/custom_message.dart';
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
          .forgetPassword(SignUpDto(email: email.toLowerCase()));
      if (response.isSuccess != null && response.isSuccess!) {
        state = AppLoadingState();
        return response.isSuccess;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        try {
          $showMessage(e.response!.data!['message'], isError: true);
        } catch (e) {
          $showMessage("Something went wrong", isError: true);
        }
      } else if (e.type == DioExceptionType.connectionError) {
        print('❌ Network error');
      } else {
        print('❌ Unknown error: ${e.message}');
      }

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
            UpdatePasswordDto(
              email: email.toLowerCase(),
              code: otp,
              newPassword: password,
            ),
          );
      if (response.isSuccess != null && response.isSuccess!) {
        state = AppLoadingState();
        return response.data;
      } else {
        $showMessage(response.message, isError: true);
      }
      state = AppLoadingState();
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        try {
          $showMessage(e.response!.data!['message'], isError: true);
        } catch (e) {
          $showMessage("Something went wrong", isError: true);
        }
      } else if (e.type == DioExceptionType.connectionError) {
        print('❌ Network error');
      } else {
        print('❌ Unknown error: ${e.message}');
      }

      state = AppLoadingState();
      debugPrint("errror $e");
    }
    return null;
  }
}
