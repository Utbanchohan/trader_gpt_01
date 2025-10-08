// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earning_chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EarningChartModel _$EarningChartModelFromJson(Map<String, dynamic> json) =>
    _EarningChartModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => EarningChartData.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: json['errors'],
    );

Map<String, dynamic> _$EarningChartModelToJson(_EarningChartModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
      'errors': instance.errors,
    };

_EarningChartData _$EarningChartDataFromJson(Map<String, dynamic> json) =>
    _EarningChartData(
      x: (json['x'] as List<dynamic>).map((e) => e as String).toList(),
      y: (json['y'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$EarningChartDataToJson(_EarningChartData instance) =>
    <String, dynamic>{'x': instance.x, 'y': instance.y};
