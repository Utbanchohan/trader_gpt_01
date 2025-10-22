import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_all_memories.freezed.dart';
part 'delete_all_memories.g.dart';

@freezed
abstract class DeleteAllMemoriesModel with _$DeleteAllMemoriesModel {
  const factory DeleteAllMemoriesModel({
    String? message,
    @JsonKey(name: 'user_id') String? userId,
  }) = _DeleteAllMemoriesModel;

  factory DeleteAllMemoriesModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAllMemoriesModelFromJson(json);
}
