import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_dto.freezed.dart';
part 'change_password_dto.g.dart';

@freezed
abstract class ChangePasswordDto with _$ChangePasswordDto {
  const factory ChangePasswordDto({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordDto;

  factory ChangePasswordDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordDtoFromJson(json);
}
