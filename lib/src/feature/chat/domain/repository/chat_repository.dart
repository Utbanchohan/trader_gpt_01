import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/chat_message_dto/chat_message_dto.dart';
import 'package:trader_gpt/src/feature/chat/data/dto/task_dto/task_dto.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/base_model/base_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_response/chat_message_model.dart';
import 'package:trader_gpt/src/feature/chat/domain/repository/chat_api_repository.dart';

import '../../../../core/api_client/client.dart';

abstract interface class ChatRepository {
  Future<BaseModel<ChatMessageModel>> sendMessage(ChatMessageDto chat);
  Future<dynamic> streamApi(TaskRequestDto taskRequestDto);

}

final chatRepository = Provider<ChatRepository>(
  (ref) => ChatApiRepository(ref.read(client)),
);
