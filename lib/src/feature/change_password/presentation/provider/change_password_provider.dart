import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/change_password/presentation/pages/change_password.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/change_password/change_password_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';
import 'package:trader_gpt/src/shared/custom_message.dart';
import '../../../../shared/states/app_loading_state.dart';

part 'change_password_provider.g.dart';

@riverpod
class ChangePasswordProvider extends _$ChangePasswordProvider {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<User?> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository)
          .changePassword(
            ChangePasswordDto(
              oldPassword: oldPassword,
              newPassword: newPassword,
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
