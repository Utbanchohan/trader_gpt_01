import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_memory_model.freezed.dart';
part 'delete_memory_model.g.dart';

@freezed
abstract class DeleteMemoryModel with _$DeleteMemoryModel {
  const factory DeleteMemoryModel({
    String? message,
    @JsonKey(name: 'memory_id') String? memoryId,
    @JsonKey(name: 'user_id') String? userId,
  }) = _DeleteMemoryModel;

  factory DeleteMemoryModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteMemoryModelFromJson(json);
}
