import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/core/api_client/client.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/pages/sigin_up.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/complete_profile/complete_profile_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/otp_request/otp_request_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_up_dto/sign_up.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_api_repository.dart';

import '../../../chat/domain/model/base_model/base_model.dart';

abstract interface class AuthRepository {
  Future<BaseModel<LoginData>> login(SignIn signIn);
  Future<BaseModel<User>> signUp(SignUpDto email);
  Future<BaseModel<LoginData>> verifyOtp(OtpRequest otp); 
  Future<BaseModel<LoginData>> completeRegistration(CompleteProfileDto profile);

}

final authRepository = Provider<AuthRepository>(
  (ref) => AuthApiRepository(ref.read(client)),
);
