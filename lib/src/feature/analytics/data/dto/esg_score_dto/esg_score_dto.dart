import 'package:freezed_annotation/freezed_annotation.dart';

part 'esg_score_dto.freezed.dart';
part 'esg_score_dto.g.dart';

@freezed
abstract class EsgDto with _$EsgDto {
  const factory EsgDto({
    required String symbol,
    @JsonKey(name: 'start_date') required DateTime startDate,
    @JsonKey(name: 'end_date') required DateTime endDate,
  }) = _EsgDto;

  factory EsgDto.fromJson(Map<String, dynamic> json) => _$EsgDtoFromJson(json);
}
