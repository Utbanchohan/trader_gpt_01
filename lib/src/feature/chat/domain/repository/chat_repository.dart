import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/archive_chat_dto/archive_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/create_chat_dto/create_chat_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chats/chats_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/conversation/conversation_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/random_question/random_question_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/work_flow_model/work_flow.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_api_repository.dart';
import 'package:trader_gpt/src/shared/flavours.dart';

import '../../../../core/api_client/client.dart';
import '../model/delete_all_memories/delete_all_memories.dart';
import '../model/delete_memory_model/delete_memory_model.dart';
import '../model/delete_model/delete_model.dart';
import '../model/memory_model/memory_model.dart';

abstract interface class ChatRepository {
  Future<BaseModel<ChatMessageModel>> sendMessage(ChatMessageDto chat);
  Future<RandomQuestionModel> randomQuestions(String symbol);
  Future<BaseModel<ChatHistoryResponse>> chats();
  Future<BaseModel<Conversation>> getMessages(String chatId, int page);
  Future<BaseModel<ChatHistory>> createNewChat(CreateChatDto createChatDto);
  Future<BaseModel<ChatHistory>> archiveChat(ArchiveChatDto archiveChat);
  Future<BaseModel<DeleteResponse>> deleteChat(String chadId);
  Future<WorkflowsData> getWorkFlows();
  Future<dynamic> streamApi(TaskRequestDto taskRequestDto);
  Future<MemoryModel> getMemories(String limit);
  Future<DeleteAllMemoriesModel> deleteAllMemory(String memoryId);
  Future<DeleteMemoryModel> deleteMemory(String memoryId);
}

final chatRepository = Provider<ChatRepository>(
  (ref) => ChatApiRepository(ref.read(client(BaseUrl.baseUrl))),
);
