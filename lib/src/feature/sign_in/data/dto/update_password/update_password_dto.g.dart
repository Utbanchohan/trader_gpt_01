// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePasswordDto _$UpdatePasswordDtoFromJson(Map<String, dynamic> json) =>
    _UpdatePasswordDto(
      code: json['code'] as String,
      email: json['email'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$UpdatePasswordDtoToJson(_UpdatePasswordDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'email': instance.email,
      'newPassword': instance.newPassword,
    };
