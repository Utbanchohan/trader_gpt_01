import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/core/api_client/client.dart';
import 'package:trader_gpt/src/feature/sigin_up/presentation/pages/sigin_up.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/repository/auth_api_repository.dart';

import '../../../chat/domain/model/base_model/base_model.dart';

abstract interface class AuthRepository {
  Future<BaseModel<LoginData>> login(SignIn signIn); 
  //  Future<BaseModel<LoginData>> signUp(SignIn signIn);


}

final authRepository = Provider<AuthRepository>(
  (ref) => AuthApiRepository(ref.read(client)),
);
