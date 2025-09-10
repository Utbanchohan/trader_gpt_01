import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import '../../../../../shared/flavours.dart';
import '../../../domain/model/chat_response/chat_message_model.dart';
part 'chat_api.g.dart';






@RestApi()
abstract interface class ChatApi {
  factory ChatApi(Dio client) =>
      _ChatApi(client, baseUrl: BaseUrl.baseUrl);

  @POST('/message')
  Future<BaseModel<ChatMessageModel>> sendMessage(ChatMessageDto chatMessageDto);
}
