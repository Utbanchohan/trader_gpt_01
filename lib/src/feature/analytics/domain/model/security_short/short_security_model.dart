import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_security_model.freezed.dart';
part 'short_security_model.g.dart';

@freezed
abstract class ShortSecurityResponse with _$ShortSecurityResponse {
  const factory ShortSecurityResponse({
    required int status,
    required String msg,
    List<ShortSecurity>? data,
    dynamic errors,
  }) = _ShortSecurityResponse;

  factory ShortSecurityResponse.fromJson(Map<String, dynamic> json) =>
      _$ShortSecurityResponseFromJson(json);
}

@freezed
abstract class ShortSecurity with _$ShortSecurity {
  const factory ShortSecurity({
    required String marketDate,
    required int shortVolume,
    required double shortVolumeRatio,
    required int totalVolume,
    @JsonKey(name: 'stock_type') required int stockType,
  }) = _ShortSecurity;

  factory ShortSecurity.fromJson(Map<String, dynamic> json) =>
      _$ShortSecurityFromJson(json);
}
