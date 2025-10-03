import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_model.freezed.dart';
part 'weekly_model.g.dart';

@freezed
abstract class WeeklyModel with _$WeeklyModel {
  const factory WeeklyModel({
    @JsonKey(name: "Probability") WeeklyProbability? probability,
  }) = _WeeklyModel;

  factory WeeklyModel.fromJson(Map<String, dynamic> json) =>
      _$WeeklyModelFromJson(json);
}

@freezed
abstract class WeeklyProbability with _$WeeklyProbability {
  const factory WeeklyProbability({
    @JsonKey(name: "Monday") double? monday,
    @JsonKey(name: "Tuesday") double? tuesday,
    @JsonKey(name: "Wednesday") double? wednesday,
    @JsonKey(name: "Thursday") double? thursday,
    @JsonKey(name: "Friday") double? friday,
  }) = _WeeklyProbability;

  factory WeeklyProbability.fromJson(Map<String, dynamic> json) =>
      _$WeeklyProbabilityFromJson(json);
}
