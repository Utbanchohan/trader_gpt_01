// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatHistoryResponse _$ChatHistoryResponseFromJson(Map<String, dynamic> json) =>
    _ChatHistoryResponse(
      totalCount: (json['totalCount'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => ChatHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatHistoryResponseToJson(
  _ChatHistoryResponse instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'page': instance.page,
  'limit': instance.limit,
  'results': instance.results,
};

_ChatHistory _$ChatHistoryFromJson(Map<String, dynamic> json) => _ChatHistory(
  id: json['_id'] as String,
  userId: json['userId'] as String,
  symbol: json['symbol'] as String,
  stockId: json['stockId'] as String,
  type: json['type'] as String,
  companyName: json['companyName'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ChatHistoryToJson(_ChatHistory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'symbol': instance.symbol,
      'stockId': instance.stockId,
      'type': instance.type,
      'companyName': instance.companyName,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
