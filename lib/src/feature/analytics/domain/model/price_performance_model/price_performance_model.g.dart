// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_performance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PricePerformance _$PricePerformanceFromJson(Map<String, dynamic> json) =>
    _PricePerformance(
      data: (json['data'] as List<dynamic>)
          .map((e) => PricePerformanceData.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$PricePerformanceToJson(_PricePerformance instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_PricePerformanceData _$PricePerformanceDataFromJson(
  Map<String, dynamic> json,
) => _PricePerformanceData(
  period: json['period'] as String?,
  prevClosePrice: (json['prevClosePrice'] as num?)?.toDouble(),
  performanceLastDate: json['performanceLastDate'] as String?,
  periodOpen: (json['periodOpen'] as num?)?.toDouble(),
  periodOpenPercentage: (json['periodOpenPercentage'] as num?)?.toDouble(),
  periodLow: (json['periodLow'] as num?)?.toDouble(),
  periodLowPercentage: (json['periodLowPercentage'] as num?)?.toDouble(),
  barPositionPercentage: (json['barPositionPercentage'] as num?)?.toDouble(),
  periodHigh: (json['periodHigh'] as num?)?.toDouble(),
  periodHighPercentage: (json['periodHighPercentage'] as num?)?.toDouble(),
  periodLowDate: json['periodLowDate'] as String?,
  periodHighDate: json['periodHighDate'] as String?,
  performance: (json['performance'] as num?)?.toDouble(),
  performancePercentage: (json['performancePercentage'] as num?)?.toDouble(),
  startClose: (json['startClose'] as num?)?.toDouble(),
  endClose: (json['endClose'] as num?)?.toDouble(),
  performanceDate: json['performanceDate'] as String?,
  chart: (json['chart'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
);

Map<String, dynamic> _$PricePerformanceDataToJson(
  _PricePerformanceData instance,
) => <String, dynamic>{
  'period': instance.period,
  'prevClosePrice': instance.prevClosePrice,
  'performanceLastDate': instance.performanceLastDate,
  'periodOpen': instance.periodOpen,
  'periodOpenPercentage': instance.periodOpenPercentage,
  'periodLow': instance.periodLow,
  'periodLowPercentage': instance.periodLowPercentage,
  'barPositionPercentage': instance.barPositionPercentage,
  'periodHigh': instance.periodHigh,
  'periodHighPercentage': instance.periodHighPercentage,
  'periodLowDate': instance.periodLowDate,
  'periodHighDate': instance.periodHighDate,
  'performance': instance.performance,
  'performancePercentage': instance.performancePercentage,
  'startClose': instance.startClose,
  'endClose': instance.endClose,
  'performanceDate': instance.performanceDate,
  'chart': instance.chart,
};
