import 'package:freezed_annotation/freezed_annotation.dart';

part 'complete_profile_dto.freezed.dart';
part 'complete_profile_dto.g.dart';

@freezed
abstract class CompleteProfileDto with _$CompleteProfileDto {
  const factory CompleteProfileDto({
    @Default('') String email,
    @JsonKey(name: 'img_url') @Default('') String imgUrl,
    @Default('') String name,
    @Default('') String password,
  }) = _CompleteProfileDto;

  factory CompleteProfileDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileDtoFromJson(json);
}