import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_comparison_dto.freezed.dart';
part 'price_comparison_dto.g.dart';

@freezed
abstract class PriceComparisonDto with _$PriceComparisonDto {
  const factory PriceComparisonDto({
    @JsonKey(name: 'days_back') required int daysBack,
    @JsonKey(name: 'symbol_1') required String symbol1,
    @JsonKey(name: 'symbol_2') required String symbol2,
  }) = _PriceComparisonDto;

  factory PriceComparisonDto.fromJson(Map<String, dynamic> json) =>
      _$PriceComparisonDtoFromJson(json);
}
