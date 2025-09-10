// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Chats _$ChatsFromJson(Map<String, dynamic> json) => _Chats(
  isLoading: json['isLoading'] as bool? ?? false,
  data: json['data'] as List<dynamic>?,
  timestamp: (json['timestamp'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChatsToJson(_Chats instance) => <String, dynamic>{
  'isLoading': instance.isLoading,
  'data': instance.data,
  'timestamp': instance.timestamp,
};
