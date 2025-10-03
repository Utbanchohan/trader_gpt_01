import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_login_dto.freezed.dart';
part 'market_login_dto.g.dart';

@freezed
abstract class MarketLoginDto with _$MarketLoginDto {
  const factory MarketLoginDto({
    @Default('') String username,
    @Default('') String password,
  }) = _MarketLoginDto;

  factory MarketLoginDto.fromJson(Map<String, dynamic> json) =>
      _$MarketLoginDtoFromJson(json);
}
