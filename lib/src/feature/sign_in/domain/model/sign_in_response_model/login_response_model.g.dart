// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginData _$LoginDataFromJson(Map<String, dynamic> json) => _LoginData(
  user: User.fromJson(json['user'] as Map<String, dynamic>),
  accessToken: json['access_token'] as String,
);

Map<String, dynamic> _$LoginDataToJson(_LoginData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.accessToken,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['_id'] as String,
  isVerified: json['isVerified'] as bool,
  email: json['email'] as String,
  name: json['name'] as String,
  imgUrl: json['img_url'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  '_id': instance.id,
  'isVerified': instance.isVerified,
  'email': instance.email,
  'name': instance.name,
  'img_url': instance.imgUrl,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
