// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseModel<T> _$BaseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseModel<T>(
  message: json['message'] as String,
  isSuccess: json['success'] as bool,
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$BaseModelToJson<T>(
  _BaseModel<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'message': instance.message,
  'success': instance.isSuccess,
  'data': _$nullableGenericToJson(instance.data, toJsonT),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

_BaseModelList<T> _$BaseModelListFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseModelList<T>(
  message: json['message'] as String,
  isSuccess: json['isSuccess'] as bool,
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
);

Map<String, dynamic> _$BaseModelListToJson<T>(
  _BaseModelList<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'message': instance.message,
  'isSuccess': instance.isSuccess,
  'data': instance.data?.map(toJsonT).toList(),
};
