// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archive_chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArchiveChatDto _$ArchiveChatDtoFromJson(Map<String, dynamic> json) =>
    _ArchiveChatDto(
      chatId: json['chatId'] as String,
      isArchived: json['isArchived'] as bool,
    );

Map<String, dynamic> _$ArchiveChatDtoToJson(_ArchiveChatDto instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'isArchived': instance.isArchived,
    };
