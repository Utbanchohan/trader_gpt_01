import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_dto.freezed.dart';
part 'financial_dto.g.dart';

@freezed
abstract class PriceRequestDto with _$PriceRequestDto {
  const factory PriceRequestDto({
    @JsonKey(name: 'is_yearly') required bool isYearly,
    required String symbol,
  }) = _PriceRequestDto;

  factory PriceRequestDto.fromJson(Map<String, dynamic> json) =>
      _$PriceRequestDtoFromJson(json);
}
