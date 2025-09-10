import 'package:dio/dio.dart';
import 'package:trader_gpt/src/feature/chat/data/api/chat_api/chat_api.dart';
import 'package:trader_gpt/src/feature/chat/data/api/user_ask_stream/user_ask_stream.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_repository.dart';

import '../../data/dto/chat_message_dto/chat_message_dto.dart';
import '../model/base_model/base_model.dart';

 class ChatApiRepository implements ChatRepository {
  ChatApiRepository(this.client);

  final Dio client;

  @override
  Future<BaseModel<ChatMessageModel>> sendMessage(ChatMessageDto chatMessageDto) async {
    return await ChatApi(client).sendMessage(chatMessageDto);
  }
  
  @override
  Future<dynamic> streamApi(TaskRequestDto taskRequestDto) async {
    return await UserAskStreamApi(client).askStream(taskRequestDto);
  }
 
}
