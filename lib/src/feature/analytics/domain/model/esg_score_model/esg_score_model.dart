import 'package:freezed_annotation/freezed_annotation.dart';

part 'esg_score_model.freezed.dart';
part 'esg_score_model.g.dart';

@freezed
abstract class EsgScoreModel with _$EsgScoreModel {
  const factory EsgScoreModel({
    required int status,
    required String msg,
    List<EsgScoreData>? data,
    dynamic errors,
  }) = _EsgScoreModel;

  factory EsgScoreModel.fromJson(Map<String, dynamic> json) =>
      _$EsgScoreModelFromJson(json);
}

@freezed
abstract class EsgScoreData with _$EsgScoreData {
  const factory EsgScoreData({
    required String symbol,
    required String cik,
    required String date,
    @JsonKey(name: 'environmental_score') double? environmentalScore,
    @JsonKey(name: 'social_score') double? socialScore,
    @JsonKey(name: 'governance_score') double? governanceScore,
    double? esgscore,
    @JsonKey(name: 'company_name') String? companyName,
    String? industry,
    @JsonKey(name: 'form_type') String? formType,
    @JsonKey(name: 'accepted_date') String? acceptedDate,
    String? url,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'last_updated_time') String? lastUpdatedTime,
  }) = _EsgScoreData;

  factory EsgScoreData.fromJson(Map<String, dynamic> json) =>
      _$EsgScoreDataFromJson(json);
}
