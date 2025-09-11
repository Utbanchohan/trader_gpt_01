// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignIn _$SignInFromJson(Map<String, dynamic> json) => _SignIn(
  email: json['email'] as String? ?? '',
  password: json['password'] as String? ?? '',
);

Map<String, dynamic> _$SignInToJson(_SignIn instance) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
};
