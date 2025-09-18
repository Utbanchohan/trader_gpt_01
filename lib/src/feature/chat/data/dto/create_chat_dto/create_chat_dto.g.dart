// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateChatDto _$CreateChatDtoFromJson(Map<String, dynamic> json) =>
    _CreateChatDto(
      companyName: json['companyName'] as String,
      stockId: json['stockId'] as String,
      symbol: json['symbol'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$CreateChatDtoToJson(_CreateChatDto instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'stockId': instance.stockId,
      'symbol': instance.symbol,
      'type': instance.type,
    };
