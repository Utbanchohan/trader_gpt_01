// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaModel _$MediaModelFromJson(Map<String, dynamic> json) => _MediaModel(
  url: json['url'] as String,
  type: json['type'] as String,
  thumbnail: json['thumbnail'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$MediaModelToJson(_MediaModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'thumbnail': instance.thumbnail,
      'name': instance.name,
    };
