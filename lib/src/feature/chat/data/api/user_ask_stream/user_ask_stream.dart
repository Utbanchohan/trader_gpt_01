import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/task_dto/task_dto.dart';
part 'user_ask_stream.g.dart';

@RestApi(baseUrl: "http://dev.tradersgpt.io/tgpt-python/api/")
abstract interface class UserAskStreamApi {
  factory UserAskStreamApi(Dio dio, {String baseUrl}) = _UserAskStreamApi;

  @POST("user_ask_stream")
  @DioResponseType(ResponseType.stream)
  Future<HttpResponse<dynamic>> askStream(
    @Body() TaskRequestDto taskRequestDto,
  );
}
