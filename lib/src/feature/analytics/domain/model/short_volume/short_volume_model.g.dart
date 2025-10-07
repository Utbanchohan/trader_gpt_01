// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_volume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShortVolumeModel _$ShortVolumeModelFromJson(Map<String, dynamic> json) =>
    _ShortVolumeModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      data: json['data'] == null
          ? null
          : ShortVolumeData.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ShortVolumeModelToJson(_ShortVolumeModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
      'errors': instance.errors,
    };

_ShortVolumeData _$ShortVolumeDataFromJson(Map<String, dynamic> json) =>
    _ShortVolumeData(
      Charts: (json['Charts'] as List<dynamic>)
          .map((e) => ChartData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShortVolumeDataToJson(_ShortVolumeData instance) =>
    <String, dynamic>{'Charts': instance.Charts};

_ChartData _$ChartDataFromJson(Map<String, dynamic> json) => _ChartData(
  name: json['name'] as String,
  data: (json['data'] as List<dynamic>).map((e) => e as List<dynamic>).toList(),
);

Map<String, dynamic> _$ChartDataToJson(_ChartData instance) =>
    <String, dynamic>{'name': instance.name, 'data': instance.data};
