import 'package:freezed_annotation/freezed_annotation.dart';
part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
abstract class MediaModel with _$MediaModel {
  const factory MediaModel({
    required String url,
    required String type,
    String? thumbnail,
    String? name,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
