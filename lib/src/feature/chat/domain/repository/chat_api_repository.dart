import 'package:dio/dio.dart';
import 'package:trader_gpt/src/feature/chat/data/api/chat_api/chat_api.dart';
import 'package:trader_gpt/src/feature/chat/data/api/user_ask_stream/user_ask_stream.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/create_chat_dto/create_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/conversation/conversation_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/random_question/random_question_model.dart';
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
  Future<RandomQuestionModel> randomQuestions(String symbol) async {
    return await ChatApi(client).randomQuestion(symbol);
  }

      @override
  Future<BaseModel<ChatHistoryResponse>> chats() async {
    return await ChatApi(client).getchats();
  }

     @override
  Future<BaseModel<Conversation>> getMessages(String chatId,int page) async {
    return await ChatApi(client).getMessages(chatId,1);
  }


     @override
  Future<BaseModel<ChatHistory>> createNewChat(CreateChatDto createChatDto) async {
    return await ChatApi(client).createChat(createChatDto);
  }
  
  
  
  
  @override
  Future<dynamic> streamApi(TaskRequestDto taskRequestDto) async {
    return await UserAskStreamApi(client).askStream(taskRequestDto);
  }
 
}
