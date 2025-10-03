import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_stats.freezed.dart';
part 'share_stats.g.dart';

@freezed
abstract class SharesResponse with _$SharesResponse {
  const factory SharesResponse({
    required SharesData data,
    required String msg,
    required int status,
    dynamic errors,
  }) = _SharesResponse;

  factory SharesResponse.fromJson(Map<String, dynamic> json) =>
      _$SharesResponseFromJson(json);
}

@freezed
abstract class SharesData with _$SharesData {
  const factory SharesData({
    String? SharesOutstanding,
    num? SharesFloat,
    num? PercentInsiders,
    num? PercentInstitutions,
    String? SharesShort,
    String? SharesShortPriorMonth,
    String? ShortRatio,
    String? ShortPercentOutstanding,
    num? ShortPercentFloat,
    int? stock_type,
  }) = _SharesData;

  factory SharesData.fromJson(Map<String, dynamic> json) =>
      _$SharesDataFromJson(json);
}
