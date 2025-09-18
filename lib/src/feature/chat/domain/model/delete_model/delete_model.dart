import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_model.freezed.dart';
part 'delete_model.g.dart';

@freezed
abstract class DeleteResponse with _$DeleteResponse {
  const factory DeleteResponse({
    required bool deleted,
  }) = _DeleteResponse;

  factory DeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteResponseFromJson(json);
}