import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.freezed.dart';
part 'sign_up.g.dart';

@freezed
abstract class SignUpDto with _$SignUpDto {
  const factory SignUpDto({
    @Default('') String email,
  }) = _SignUpDto;

  factory SignUpDto.fromJson(Map<String, dynamic> json) => _$SignUpDtoFromJson(json);
}