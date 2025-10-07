// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SharesResponse _$SharesResponseFromJson(Map<String, dynamic> json) =>
    _SharesResponse(
      data: SharesData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String,
      status: (json['status'] as num).toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$SharesResponseToJson(_SharesResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_SharesData _$SharesDataFromJson(Map<String, dynamic> json) => _SharesData(
  SharesOutstanding: json['SharesOutstanding'] as String?,
  SharesFloat: json['SharesFloat'] as num?,
  PercentInsiders: json['PercentInsiders'] as num?,
  PercentInstitutions: json['PercentInstitutions'] as num?,
  SharesShort: json['SharesShort'] as String?,
  SharesShortPriorMonth: json['SharesShortPriorMonth'] as String?,
  ShortRatio: json['ShortRatio'] as String?,
  ShortPercentOutstanding: json['ShortPercentOutstanding'] as String?,
  ShortPercentFloat: json['ShortPercentFloat'] as num?,
  stock_type: (json['stock_type'] as num?)?.toInt(),
);

Map<String, dynamic> _$SharesDataToJson(_SharesData instance) =>
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
      'stock_type': instance.stock_type,
    };
