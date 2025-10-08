// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalysisDataModel _$AnalysisDataModelFromJson(Map<String, dynamic> json) =>
    _AnalysisDataModel(
      data: json['data'] == null
          ? null
          : AnalysisData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$AnalysisDataModelToJson(_AnalysisDataModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_AnalysisData _$AnalysisDataFromJson(Map<String, dynamic> json) =>
    _AnalysisData(
      chart: (json['chart'] as List<dynamic>?)
          ?.map((e) => ChartData.fromJson(e as Map<String, dynamic>))
          .toList(),
      chartVol: (json['chartVol'] as List<dynamic>?)
          ?.map((e) => ChartVolume.fromJson(e as Map<String, dynamic>))
          .toList(),
      eodData: (json['eodData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, EodData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$AnalysisDataToJson(_AnalysisData instance) =>
    <String, dynamic>{
      'chart': instance.chart,
      'chartVol': instance.chartVol,
      'eodData': instance.eodData,
    };

_ChartData _$ChartDataFromJson(Map<String, dynamic> json) => _ChartData(
  x: json['x'] as String?,
  y: (json['y'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
);

Map<String, dynamic> _$ChartDataToJson(_ChartData instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};

_ChartVolume _$ChartVolumeFromJson(Map<String, dynamic> json) => _ChartVolume(
  x: json['x'] as String?,
  y: (json['y'] as num?)?.toInt(),
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
  volume: (json['avolume'] as num?)?.toInt(),
  totalTrades: json['totaltrades'] as String?,
  change: (json['change'] as num?)?.toDouble(),
  changepercent: (json['changepercent'] as num?)?.toDouble(),
  vwap: (json['vwap'] as num?)?.toDouble(),
);

Map<String, dynamic> _$EodDataToJson(_EodData instance) => <String, dynamic>{
  'open': instance.open,
  'high': instance.high,
  'low': instance.low,
  'close': instance.close,
  'avolume': instance.volume,
  'totaltrades': instance.totalTrades,
  'change': instance.change,
  'changepercent': instance.changepercent,
  'vwap': instance.vwap,
};
