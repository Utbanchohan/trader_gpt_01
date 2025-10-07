// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_security_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShortSecurityResponse _$ShortSecurityResponseFromJson(
  Map<String, dynamic> json,
) => _ShortSecurityResponse(
  status: (json['status'] as num).toInt(),
  msg: json['msg'] as String,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ShortSecurity.fromJson(e as Map<String, dynamic>))
      .toList(),
  errors: json['errors'],
);

Map<String, dynamic> _$ShortSecurityResponseToJson(
  _ShortSecurityResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'msg': instance.msg,
  'data': instance.data,
  'errors': instance.errors,
};

_ShortSecurity _$ShortSecurityFromJson(Map<String, dynamic> json) =>
    _ShortSecurity(
      marketDate: json['marketDate'] as String,
      shortVolume: (json['shortVolume'] as num).toInt(),
      shortVolumeRatio: (json['shortVolumeRatio'] as num).toDouble(),
      totalVolume: (json['totalVolume'] as num).toInt(),
      stockType: (json['stock_type'] as num).toInt(),
    );

Map<String, dynamic> _$ShortSecurityToJson(_ShortSecurity instance) =>
    <String, dynamic>{
      'marketDate': instance.marketDate,
      'shortVolume': instance.shortVolume,
      'shortVolumeRatio': instance.shortVolumeRatio,
      'totalVolume': instance.totalVolume,
      'stock_type': instance.stockType,
    };
