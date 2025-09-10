import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_dto.freezed.dart';
part 'chat_message_dto.g.dart';




@freezed
abstract class ChatMessageDto with _$ChatMessageDto {
  const factory ChatMessageDto({
    required String chatId,
    required String message,
    required String type,
  }) = _ChatMessageDto;

  factory ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDtoFromJson(json);
}