import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import '../../../domain/model/chat_response/chat_message_model.dart';
import '../../../domain/model/random_question/random_question_model.dart';
part 'chat_api.g.dart';






@RestApi()
abstract interface class ChatApi {
  factory ChatApi(Dio client) =>
      _ChatApi(client, baseUrl: 'tgpt-nestjs');

  @POST('/message')
  Future<BaseModel<ChatMessageModel>> sendMessage(@Body() ChatMessageDto chatMessageDto);

 @GET("/chat")
  Future<RandomQuestionModel> getchats();                                             


  @GET('/popular-questions/random?symbol={symbol}')
  Future<RandomQuestionModel> randomQuestion(@Path('symbol') String symbol,);                                             
}
