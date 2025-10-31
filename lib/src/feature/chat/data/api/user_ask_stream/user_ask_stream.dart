import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';

import '../../../domain/model/delete_all_memories/delete_all_memories.dart';
import '../../../domain/model/delete_memory_model/delete_memory_model.dart';
import '../../../domain/model/feedback_model/feedback_model.dart';
import '../../../domain/model/memory_model/memory_model.dart';
import '../../dto/feedback_dto/feedback_dto.dart';
import '../../dto/task_dto/task_dto.dart';
part 'user_ask_stream.g.dart';

@RestApi()
abstract interface class UserAskStreamApi {
  factory UserAskStreamApi(Dio client) =>
      _UserAskStreamApi(client, baseUrl: 'tgpt-python/api/');

  @POST("user_ask_stream")
  @DioResponseType(ResponseType.stream)
  Future<HttpResponse<dynamic>> askStream(
    @Body() TaskRequestDto taskRequestDto,
  );

  @GET('get-workflows')
  Future<WorkflowsData> workFlows();

  @GET('memories?limit={limit}')
  Future<MemoryModel> getMemories(@Path("limit") String limit);

  @DELETE('memories/{memoryId}')
  Future<DeleteMemoryModel> deleteMemory(@Path("memoryId") String memoryId);

  @DELETE('memories')
  Future<DeleteAllMemoriesModel> deleteAllMemory();

  @POST('feedback')
  Future<FeedbackModel> postFeedback(@Body() FeedbackDto feedbackModel);
}
