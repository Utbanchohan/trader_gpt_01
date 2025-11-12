// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overview_candle_chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OverviewCandleResponse _$OverviewCandleResponseFromJson(
  Map<String, dynamic> json,
) => _OverviewCandleResponse(
  isSuccess: json['isSuccess'] as bool,
  message: json['message'] as String,
  count: (json['count'] as num).toInt(),
  data: (json['data'] as List<dynamic>)
      .map((e) => OverviewCandleChartModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OverviewCandleResponseToJson(
  _OverviewCandleResponse instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'message': instance.message,
  'count': instance.count,
  'data': instance.data,
};

_OverviewCandleChartModel _$OverviewCandleChartModelFromJson(
  Map<String, dynamic> json,
) => _OverviewCandleChartModel(
  symbol: json['symbol'] as String,
  open: (json['open'] as num).toDouble(),
  high: (json['high'] as num).toDouble(),
  low: (json['low'] as num).toDouble(),
  close: (json['close'] as num).toDouble(),
  volume: (json['volume'] as num).toInt(),
  timestamp: DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$OverviewCandleChartModelToJson(
  _OverviewCandleChartModel instance,
) => <String, dynamic>{
  'symbol': instance.symbol,
  'open': instance.open,
  'high': instance.high,
  'low': instance.low,
  'close': instance.close,
  'volume': instance.volume,
  'timestamp': instance.timestamp.toIso8601String(),
};
