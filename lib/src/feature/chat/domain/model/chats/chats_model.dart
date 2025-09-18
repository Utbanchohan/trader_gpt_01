
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chats_model.freezed.dart';
part 'chats_model.g.dart';

@freezed
abstract class ChatHistoryResponse with _$ChatHistoryResponse {
  const factory ChatHistoryResponse({
    required int totalCount,
    required int page,
    required int limit,
    required List<ChatHistory> results,
  }) = _ChatHistoryResponse;

  factory ChatHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryResponseFromJson(json);
}

@freezed
abstract class ChatHistory with _$ChatHistory {
  const factory ChatHistory({
    @JsonKey(name: '_id') required String id,
    required String userId,
    required String symbol,
    required String stockId,
    required String type,
    required String companyName,
    required DateTime createdAt,
    required DateTime updatedAt,
    @Default(false) bool isArchived,
    @JsonKey(name:"last_message")  LastMessage? lastMessage,
  }) = _ChatHistory;

  factory ChatHistory.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryFromJson(json);


      factory ChatHistory.initial() =>  ChatHistory( id: '', userId: '', symbol: '', stockId: '', type: '', companyName: '', createdAt: DateTime.now(), updatedAt: DateTime.now(),lastMessage: LastMessage.initial());
}


@freezed
abstract class LastMessage with _$LastMessage {
  const factory LastMessage({
    required String chatId,
    required String message,
    required String type,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(name: '_id') required String id, // maps to _id
  }) = _LastMessage;

  factory LastMessage.fromJson(Map<String, dynamic> json) =>
      _$LastMessageFromJson(json);

            factory LastMessage.initial() =>  LastMessage( chatId: '', message: '', type: '', userId: '', createdAt:  DateTime.now(), updatedAt:  DateTime.now(), id: "" );

}