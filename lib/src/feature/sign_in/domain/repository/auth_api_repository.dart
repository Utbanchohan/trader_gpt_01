import 'package:dio/dio.dart';
import 'package:trader_gpt/src/feature/chat/data/api/chat_api/chat_api.dart';
import 'package:trader_gpt/src/feature/chat/data/api/user_ask_stream/user_ask_stream.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/pages/sigin_up.dart';
import 'package:trader_gpt/src/feature/sign_in/data/api/auth_api.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/complete_profile/complete_profile_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/otp_request/otp_request_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_repository.dart';

import '../../../chat/domain/model/base_model/base_model.dart';

class AuthApiRepository implements AuthRepository {
  AuthApiRepository(this.client);

  final Dio client;

  @override
  Future<BaseModel<LoginData>> login(SignIn signIn) async {
    return await AuthApi(client).signIn(signIn);
  }

  @override
  Future<BaseModel<LoginData>> signUp(String email) async {
    return await AuthApi(client).signUp(email);
  }

  @override
  Future<BaseModel<LoginData>> verifyOtp(OtpRequest otp) async {
    return await AuthApi(client).verifyOtp(otp);
  }

  @override
  Future<BaseModel<LoginData>> completeRegistration(CompleteProfileDto profile) async {
    return await AuthApi(client).completeRegistration(profile);
  }
}
