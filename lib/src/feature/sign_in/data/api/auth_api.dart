import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/sign_in/data/dto/sign_in_dto/sign_in_dto.dart';
import 'package:trader_gpt/src/feature/sign_in/domain/model/sign_in_response_model/login_response_model.dart';

import '../../../chat/domain/model/base_model/base_model.dart';
part 'auth_api.g.dart';

@RestApi()
abstract interface class AuthApi {
  factory AuthApi(Dio client) => _AuthApi(client, baseUrl: 'tgpt-nestjs/auth');

  @POST('/login')
  Future<BaseModel<LoginData>> signIn(@Body() SignIn signIn);
}
