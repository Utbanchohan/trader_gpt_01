// reset_password_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_password_dto.freezed.dart';
part 'update_password_dto.g.dart';

@freezed
abstract class UpdatePasswordDto with _$UpdatePasswordDto {
  const factory UpdatePasswordDto({
    required String code,
    required String email,
    @JsonKey(name: 'newPassword') required String newPassword,
  }) = _UpdatePasswordDto;

  factory UpdatePasswordDto.fromJson(Map<String, dynamic> json) =>
      _$UpdatePasswordDtoFromJson(json);
}
