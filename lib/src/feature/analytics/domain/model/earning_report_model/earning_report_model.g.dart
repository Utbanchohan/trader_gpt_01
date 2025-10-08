// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earning_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EarningReportsModel _$EarningReportsModelFromJson(Map<String, dynamic> json) =>
    _EarningReportsModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => EarningReportData.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: json['errors'],
    );

Map<String, dynamic> _$EarningReportsModelToJson(
  _EarningReportsModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'msg': instance.msg,
  'data': instance.data,
  'errors': instance.errors,
};

_EarningReportData _$EarningReportDataFromJson(Map<String, dynamic> json) =>
    _EarningReportData(
      period: json['period'] as String,
      growth: (json['growth'] as num).toDouble(),
      actual: (json['actual'] as num).toDouble(),
      estimateEps: (json['estimate_eps'] as num).toDouble(),
      surprise: (json['surprise'] as num).toDouble(),
      estimateRevenue: json['estimate_revenue'] as String,
      stockType: (json['stock_type'] as num).toInt(),
    );

Map<String, dynamic> _$EarningReportDataToJson(_EarningReportData instance) =>
    <String, dynamic>{
      'period': instance.period,
      'growth': instance.growth,
      'actual': instance.actual,
      'estimate_eps': instance.estimateEps,
      'surprise': instance.surprise,
      'estimate_revenue': instance.estimateRevenue,
      'stock_type': instance.stockType,
    };
