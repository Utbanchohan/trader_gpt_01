// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight_dto_crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HighlightRequest _$HighlightRequestFromJson(Map<String, dynamic> json) =>
    _HighlightRequest(
      symbol: json['symbol'] as String,
      limit: (json['limit'] as num).toInt(),
      sort: json['sort'] as String,
    );

Map<String, dynamic> _$HighlightRequestToJson(_HighlightRequest instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'limit': instance.limit,
      'sort': instance.sort,
    };
