// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShortStatsResponse _$ShortStatsResponseFromJson(Map<String, dynamic> json) =>
    _ShortStatsResponse(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: json['data'] == null
          ? null
          : ShortStatsData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'],
    );

Map<String, dynamic> _$ShortStatsResponseToJson(_ShortStatsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
      'errors': instance.errors,
    };

_ShortStatsData _$ShortStatsDataFromJson(Map<String, dynamic> json) =>
    _ShortStatsData(
      SharesOutstanding: (json['SharesOutstanding'] as num).toInt(),
      SharesFloat: (json['SharesFloat'] as num).toInt(),
      PercentInsiders: (json['PercentInsiders'] as num).toDouble(),
      PercentInstitutions: (json['PercentInstitutions'] as num).toDouble(),
      SharesShort: (json['SharesShort'] as num?)?.toDouble(),
      SharesShortPriorMonth: (json['SharesShortPriorMonth'] as num?)
          ?.toDouble(),
      ShortRatio: (json['ShortRatio'] as num?)?.toDouble(),
      ShortPercentOutstanding: (json['ShortPercentOutstanding'] as num?)
          ?.toDouble(),
      ShortPercentFloat: (json['ShortPercentFloat'] as num?)?.toDouble(),
      stockType: (json['stock_type'] as num).toInt(),
    );

Map<String, dynamic> _$ShortStatsDataToJson(_ShortStatsData instance) =>
    <String, dynamic>{
      'SharesOutstanding': instance.SharesOutstanding,
      'SharesFloat': instance.SharesFloat,
      'PercentInsiders': instance.PercentInsiders,
      'PercentInstitutions': instance.PercentInstitutions,
      'SharesShort': instance.SharesShort,
      'SharesShortPriorMonth': instance.SharesShortPriorMonth,
      'ShortRatio': instance.ShortRatio,
      'ShortPercentOutstanding': instance.ShortPercentOutstanding,
      'ShortPercentFloat': instance.ShortPercentFloat,
      'stock_type': instance.stockType,
    };
