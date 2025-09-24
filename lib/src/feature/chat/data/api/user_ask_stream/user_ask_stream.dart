import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';

import '../../dto/task_dto/task_dto.dart';
part 'user_ask_stream.g.dart';

@RestApi()
abstract interface class UserAskStreamApi {
  factory UserAskStreamApi(Dio client) => _UserAskStreamApi(client, baseUrl: 'tgpt-python/api/');

  @POST("user_ask_stream")
  @DioResponseType(ResponseType.stream)
  Future<HttpResponse<dynamic>> askStream(
    @Body() TaskRequestDto taskRequestDto,
  );

  @GET('get-workflows')
  Future<WorkflowsData> workFlows();
}

