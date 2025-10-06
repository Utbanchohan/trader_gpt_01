// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalystRatingResponse _$AnalystRatingResponseFromJson(
  Map<String, dynamic> json,
) => _AnalystRatingResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => AnalystRatingData.fromJson(e as Map<String, dynamic>))
      .toList(),
  msg: json['msg'] as String,
  status: (json['status'] as num).toInt(),
  errors: json['errors'],
);

Map<String, dynamic> _$AnalystRatingResponseToJson(
  _AnalystRatingResponse instance,
) => <String, dynamic>{
  'data': instance.data,
  'msg': instance.msg,
  'status': instance.status,
  'errors': instance.errors,
};

_AnalystRatingData _$AnalystRatingDataFromJson(Map<String, dynamic> json) =>
    _AnalystRatingData(
      symbol: json['symbol'] as String,
      consensus: json['consensus'] as String,
      analystCount: (json['analyst_count'] as num).toInt(),
      strongBuy: (json['strong_buy'] as num).toInt(),
      buy: (json['buy'] as num).toInt(),
      hold: (json['hold'] as num).toInt(),
      sell: (json['sell'] as num).toInt(),
      strongSell: (json['strong_sell'] as num).toInt(),
      lastUpdatedAt: json['last_updated_at'] as String,
    );

Map<String, dynamic> _$AnalystRatingDataToJson(_AnalystRatingData instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'consensus': instance.consensus,
      'analyst_count': instance.analystCount,
      'strong_buy': instance.strongBuy,
      'buy': instance.buy,
      'hold': instance.hold,
      'sell': instance.sell,
      'strong_sell': instance.strongSell,
      'last_updated_at': instance.lastUpdatedAt,
    };
