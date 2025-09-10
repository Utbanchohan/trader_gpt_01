// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) =>
    _ChatMessageModel(
      id: json['_id'] as String,
      chatId: json['chatId'] as String,
      message: json['message'] as String,
      type: json['type'] as String,
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      followup: json['followup'] as String?,
      feedback: json['feedback'] as String?,
      runId: json['runId'] as String,
    );

Map<String, dynamic> _$ChatMessageModelToJson(_ChatMessageModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chatId': instance.chatId,
      'message': instance.message,
      'type': instance.type,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'followup': instance.followup,
      'feedback': instance.feedback,
      'runId': instance.runId,
    };
