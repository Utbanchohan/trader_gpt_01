import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_dto.freezed.dart';
part 'analysis_dto.g.dart';

@freezed
abstract class ChartRequestDto with _$ChartRequestDto {
  const factory ChartRequestDto({
    @JsonKey(name: 'symbol') required String symbol,
    @JsonKey(name: 'interval') required String interval,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
  }) = _ChartRequestDto;

  factory ChartRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ChartRequestDtoFromJson(json);
}

enum IntervalEnum {
  quarterly('quarterly'),
  weekly('weekly'),
  monthly("monthly"),
  daily('daily');

  final String value;
  const IntervalEnum(this.value);

  /// Optional: reverse lookup
  static IntervalEnum? fromValue(String value) {
    return IntervalEnum.values.firstWhere((e) => e.value == value);
  }
}
