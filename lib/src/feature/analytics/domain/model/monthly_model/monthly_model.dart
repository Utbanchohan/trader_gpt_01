import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_model.freezed.dart';
part 'monthly_model.g.dart';

@freezed
abstract class ProbabilityResponse with _$ProbabilityResponse {
  const factory ProbabilityResponse({
    @JsonKey(name: "Probability") Probability? probability,
  }) = _ProbabilityResponse;

  factory ProbabilityResponse.fromJson(Map<String, dynamic> json) =>
      _$ProbabilityResponseFromJson(json);
}

@freezed
abstract class Probability with _$Probability {
  const factory Probability({
    @JsonKey(name: "January") double? january,
    @JsonKey(name: "February") double? february,
    @JsonKey(name: "March") double? march,
    @JsonKey(name: "April") double? april,
    @JsonKey(name: "May") double? may,
    @JsonKey(name: "June") double? june,
    @JsonKey(name: "July") double? july,
    @JsonKey(name: "August") double? august,
    @JsonKey(name: "September") double? september,
    @JsonKey(name: "October") double? october,
    @JsonKey(name: "November") double? november,
    @JsonKey(name: "December") double? december,
  }) = _Probability;

  factory Probability.fromJson(Map<String, dynamic> json) =>
      _$ProbabilityFromJson(json);
}
