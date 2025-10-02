// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_target_matrics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceTargetMatrics _$PriceTargetMatricsFromJson(Map<String, dynamic> json) =>
    _PriceTargetMatrics(
      data: (json['data'] as List<dynamic>)
          .map((e) => PriceTargetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PriceTargetMatricsToJson(_PriceTargetMatrics instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
    };

_PriceTargetData _$PriceTargetDataFromJson(Map<String, dynamic> json) =>
    _PriceTargetData(
      symbol: json['symbol'] as String,
      targetConsensus: (json['target_consensus'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      low: (json['low'] as num?)?.toDouble(),
      median: (json['median'] as num?)?.toDouble(),
      closePrice: (json['close_price'] as num?)?.toDouble(),
      lastUpdatedAt: json['last_updated_at'] as String?,
      highPercentage: (json['high_percentage'] as num?)?.toDouble(),
      lowPercentage: (json['low_percentage'] as num?)?.toDouble(),
      medianPercentage: (json['median_percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PriceTargetDataToJson(_PriceTargetData instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'target_consensus': instance.targetConsensus,
      'high': instance.high,
      'low': instance.low,
      'median': instance.median,
      'close_price': instance.closePrice,
      'last_updated_at': instance.lastUpdatedAt,
      'high_percentage': instance.highPercentage,
      'low_percentage': instance.lowPercentage,
      'median_percentage': instance.medianPercentage,
    };
