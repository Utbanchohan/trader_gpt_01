// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockPriceModel _$StockPriceModelFromJson(Map<String, dynamic> json) =>
    _StockPriceModel(
      data: StockPriceData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$StockPriceModelToJson(_StockPriceModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_StockPriceData _$StockPriceDataFromJson(Map<String, dynamic> json) =>
    _StockPriceData(
      chart: (json['chart'] as List<dynamic>)
          .map((e) => ChartCandle.fromJson(e as Map<String, dynamic>))
          .toList(),
      chartVol: (json['chart_vol'] as List<dynamic>)
          .map((e) => ChartVolume.fromJson(e as Map<String, dynamic>))
          .toList(),
      eodData: (json['eod_data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, EodData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$StockPriceDataToJson(_StockPriceData instance) =>
    <String, dynamic>{
      'chart': instance.chart,
      'chart_vol': instance.chartVol,
      'eod_data': instance.eodData,
    };

_ChartCandle _$ChartCandleFromJson(Map<String, dynamic> json) => _ChartCandle(
  x: json['x'] as String,
  y: (json['y'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
);

Map<String, dynamic> _$ChartCandleToJson(_ChartCandle instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

_ChartVolume _$ChartVolumeFromJson(Map<String, dynamic> json) => _ChartVolume(
  x: json['x'] as String,
  y: (json['y'] as num).toInt(),
  fillColor: json['fillColor'] as String?,
);

Map<String, dynamic> _$ChartVolumeToJson(_ChartVolume instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'fillColor': instance.fillColor,
    };

_EodData _$EodDataFromJson(Map<String, dynamic> json) => _EodData(
  open: (json['open'] as num?)?.toDouble(),
  high: (json['high'] as num?)?.toDouble(),
  low: (json['low'] as num?)?.toDouble(),
  close: (json['close'] as num?)?.toDouble(),
  avolume: (json['avolume'] as num?)?.toDouble(),
  totaltrades: json['totaltrades'] as String?,
  change: (json['change'] as num?)?.toDouble(),
  changepercent: (json['changepercent'] as num?)?.toDouble(),
  vwap: (json['vwap'] as num?)?.toDouble(),
);

Map<String, dynamic> _$EodDataToJson(_EodData instance) => <String, dynamic>{
  'open': instance.open,
  'high': instance.high,
  'low': instance.low,
  'close': instance.close,
  'avolume': instance.avolume,
  'totaltrades': instance.totaltrades,
  'change': instance.change,
  'changepercent': instance.changepercent,
  'vwap': instance.vwap,
};
