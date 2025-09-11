import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
abstract class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    @JsonKey(name: '_id') required String id,
    required String chatId,
    required String message,
    required String type,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? followup,
    String? feedback,
    @Default('') String runId,
    String? tempMessageId, 
    String? symbol,
    @Default("Pending") String status,
    List<dynamic>? displayableData,
    dynamic tracing,
    List<dynamic>? updates,

  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}