import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_volume_model.freezed.dart';
part 'short_volume_model.g.dart';

@freezed
abstract class ShortVolumeModel with _$ShortVolumeModel {
  const factory ShortVolumeModel({
    required int status,
    required String msg,
    ShortVolumeData? data,
    Map<String, dynamic>? errors,
  }) = _ShortVolumeModel;

  factory ShortVolumeModel.fromJson(Map<String, dynamic> json) =>
      _$ShortVolumeModelFromJson(json);
}

@freezed
abstract class ShortVolumeData with _$ShortVolumeData {
  const factory ShortVolumeData({required List<ChartData> Charts}) =
      _ShortVolumeData;

  factory ShortVolumeData.fromJson(Map<String, dynamic> json) =>
      _$ShortVolumeDataFromJson(json);
}

@freezed
abstract class ChartData with _$ChartData {
  const factory ChartData({
    required String name,
    required List<List<dynamic>> data,
  }) = _ChartData;

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);
}
