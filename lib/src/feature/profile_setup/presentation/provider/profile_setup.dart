import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/complete_profile/complete_profile_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';

import '../../../../core/local/repository/local_storage_repository.dart';
import '../../../../shared/custom_message.dart';
import '../../../../shared/states/app_loading_state.dart';

part 'profile_setup.g.dart';

@riverpod
class Profile extends _$Profile {
  @override
  AppLoadingState build() {
    return AppLoadingState();
  }

  Future<LoginData?> onSubmit({
    required String email,
    required String password,
    required String fullname,
    required String imageUrl,
  }) async {
    state = AppLoadingState.loading();
    try {
      final response = await ref
          .read(authRepository).
          completeRegistration(CompleteProfileDto(email: email, password: password,name: fullname,imgUrl: "https://tgpt-media.s3.us-east-2.amazonaws.com/uploads/tgpt/1757590370388-Component 31.png"));
      if (response.isSuccess) {
          state = AppLoadingState();
          return response.data!;
        
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
