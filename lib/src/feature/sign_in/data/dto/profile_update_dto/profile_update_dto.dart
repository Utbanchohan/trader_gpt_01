import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_dto.freezed.dart';
part 'profile_update_dto.g.dart';

@freezed
abstract class ProfileUpdateDto with _$ProfileUpdateDto {
  const factory ProfileUpdateDto({
    @JsonKey(name: 'img_url') required String imgUrl,
    required String name,
  }) = _ProfileUpdateDto;

  factory ProfileUpdateDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateDtoFromJson(json);
}
