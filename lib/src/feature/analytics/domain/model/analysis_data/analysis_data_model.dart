import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysis_data_model.freezed.dart';
part 'analysis_data_model.g.dart';

@freezed
abstract class AnalysisDataModel with _$AnalysisDataModel {
  const factory AnalysisDataModel({
    required AnalysisData? data,
    String? msg,
    int? status,
    dynamic errors,
  }) = _AnalysisDataModel;

  factory AnalysisDataModel.fromJson(Map<String, dynamic> json) =>
      _$AnalysisDataModelFromJson(json);
}

@freezed
abstract class AnalysisData with _$AnalysisData {
  const factory AnalysisData({
    required List<ChartData>? chart,
    @JsonKey(name: "chart_vol") required List<ChartVolume>? chartVol,
    @JsonKey(name: "eod_data") required Map<dynamic, EodData>? eodData,
  }) = _AnalysisData;

  factory AnalysisData.fromJson(Map<String, dynamic> json) =>
      _$AnalysisDataFromJson(json);
}

@freezed
abstract class ChartData with _$ChartData {
  const factory ChartData({required String? x, required List<double>? y}) =
      _ChartData;

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);
}

@freezed
abstract class ChartVolume with _$ChartVolume {
  const factory ChartVolume({
    required String? x,
    required int? y,
    @JsonKey(name: 'fillColor') String? fillColor,
  }) = _ChartVolume;

  factory ChartVolume.fromJson(Map<String, dynamic> json) =>
      _$ChartVolumeFromJson(json);
}

@freezed
abstract class EodData with _$EodData {
  const factory EodData({
    double? open,
    double? high,
    double? low,
    double? close,
    @JsonKey(name: 'avolume') int? volume,
    @JsonKey(name: 'totaltrades') String? totalTrades,
    dynamic change,
    dynamic changepercent,
    double? vwap,
  }) = _EodData;

  factory EodData.fromJson(Map<String, dynamic> json) =>
      _$EodDataFromJson(json);
}
