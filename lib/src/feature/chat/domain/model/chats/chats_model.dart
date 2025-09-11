
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
  }) = _ChatHistory;

  factory ChatHistory.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryFromJson(json);


      factory ChatHistory.initial() =>  ChatHistory( id: '', userId: '', symbol: '', stockId: '', type: '', companyName: '', createdAt: DateTime.now(), updatedAt: DateTime.now());
}