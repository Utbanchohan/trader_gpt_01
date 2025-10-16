// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_crypto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AboutCryptoModel _$AboutCryptoModelFromJson(Map<String, dynamic> json) =>
    _AboutCryptoModel(
      data: json['data'] == null
          ? null
          : CryptoData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$AboutCryptoModelToJson(_AboutCryptoModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_CryptoData _$CryptoDataFromJson(Map<String, dynamic> json) => _CryptoData(
  description: json['description'] == null
      ? null
      : Description.fromJson(json['description'] as Map<String, dynamic>),
  name: json['name'] as String?,
);

Map<String, dynamic> _$CryptoDataToJson(_CryptoData instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
    };

_Description _$DescriptionFromJson(Map<String, dynamic> json) =>
    _Description(en: json['en'] as String?);

Map<String, dynamic> _$DescriptionToJson(_Description instance) =>
    <String, dynamic>{'en': instance.en};
