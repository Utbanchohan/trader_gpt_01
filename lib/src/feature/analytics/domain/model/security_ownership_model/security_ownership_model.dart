import 'package:freezed_annotation/freezed_annotation.dart';

part 'security_ownership_model.freezed.dart';
part 'security_ownership_model.g.dart';

@freezed
abstract class SecurityOwnershipResponse with _$SecurityOwnershipResponse {
  const factory SecurityOwnershipResponse({
    required int status,
    required String msg,
    List<SecurityOwnership>? data,
    dynamic errors,
  }) = _SecurityOwnershipResponse;

  factory SecurityOwnershipResponse.fromJson(Map<String, dynamic> json) =>
      _$SecurityOwnershipResponseFromJson(json);
}

@freezed
abstract class SecurityOwnership with _$SecurityOwnership {
  const factory SecurityOwnership({
    required String name,
    required String formType,
    required String effectiveDate,
    required String fileDate,
    required int shares,
    required int sharesChange,
    required double sharesPercentChange,
    required double value,
    required double valueChange,
    required double valuePercentChange,
    required double ownershipPercentChange,
    required double ownershipPercent,
    @JsonKey(name: 'stock_type') required int stockType,
  }) = _SecurityOwnership;

  factory SecurityOwnership.fromJson(Map<String, dynamic> json) =>
      _$SecurityOwnershipFromJson(json);
}
