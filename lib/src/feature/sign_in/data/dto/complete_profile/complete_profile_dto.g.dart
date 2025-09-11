// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteProfileDto _$CompleteProfileDtoFromJson(Map<String, dynamic> json) =>
    _CompleteProfileDto(
      email: json['email'] as String? ?? '',
      imgUrl: json['img_url'] as String? ?? '',
      name: json['name'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$CompleteProfileDtoToJson(_CompleteProfileDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'img_url': instance.imgUrl,
      'name': instance.name,
      'password': instance.password,
    };
