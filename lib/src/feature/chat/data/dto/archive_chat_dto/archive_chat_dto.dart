import 'package:freezed_annotation/freezed_annotation.dart';

part 'archive_chat_dto.freezed.dart';
part 'archive_chat_dto.g.dart';

@freezed
abstract class ArchiveChatDto with _$ArchiveChatDto {
  const factory ArchiveChatDto({
    required String chatId,
    required bool isArchived,

  }) = _ArchiveChatDto;

  factory ArchiveChatDto.fromJson(Map<String, dynamic> json) => _$ArchiveChatDtoFromJson(json);
}