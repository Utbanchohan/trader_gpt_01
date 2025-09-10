import 'package:freezed_annotation/freezed_annotation.dart';

import '../chat_response/chat_message_model.dart';

part 'conversation_model.freezed.dart';
part 'conversation_model.g.dart';

@freezed
abstract class Conversation with _$Conversation {
  const factory Conversation({
    @Default(false) bool isLoading,
    List<ChatMessageModel>? data,
    int? timestamp,
    int? totalCount,
    @Default(1) int page,
  }) = _Conversation;

  factory Conversation.fromJson(Map<String, dynamic> json) =>
      _$ConversationFromJson(json);

  factory Conversation.initial() => const Conversation(isLoading: true, data: []);
}
