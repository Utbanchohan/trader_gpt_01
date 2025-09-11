// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Conversation _$ConversationFromJson(Map<String, dynamic> json) =>
    _Conversation(
      isLoading: json['isLoading'] as bool? ?? false,
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => ChatMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
      totalCount: (json['totalCount'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$ConversationToJson(_Conversation instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'messages': instance.messages,
      'timestamp': instance.timestamp,
      'totalCount': instance.totalCount,
      'page': instance.page,
    };
