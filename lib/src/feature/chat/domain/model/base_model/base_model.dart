import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_model.g.dart';
part 'base_model.freezed.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseModel<T> with _$BaseModel<T> {
  const factory BaseModel({
    required String message,
    @JsonKey(name: 'success') bool? isSuccess,
    T? data,
  }) = _BaseModel<T>;

  factory BaseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseModelFromJson(json, fromJsonT);
}

@Freezed(genericArgumentFactories: true)
abstract class BaseModelList<T> with _$BaseModelList<T> {
  const factory BaseModelList({
    required String message,
    required bool isSuccess,
    List<T>? data,
  }) = _BaseModelList<T>;

  factory BaseModelList.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseModelListFromJson(json, fromJsonT);
}

class StringOrDoubleConverter implements JsonConverter<double, Object?> {
  const StringOrDoubleConverter();

  @override
  double fromJson(Object? json) {
    if (json == null) return 0.0;
    if (json is num) return json.toDouble();
    if (json is String) return double.tryParse(json) ?? 0.0;
    throw Exception("Invalid type for double: $json");
  }

  @override
  Object toJson(double value) => value;
}

class StringOrIntConverter implements JsonConverter<int, Object?> {
  const StringOrIntConverter();

  @override
  int fromJson(Object? json) {
    if (json == null) return 0;
    if (json is num) return json.toInt();
    if (json is String) return int.tryParse(json) ?? 0;
    throw Exception("Invalid type for double: $json");
  }

  @override
  Object toJson(int value) => value;
}
