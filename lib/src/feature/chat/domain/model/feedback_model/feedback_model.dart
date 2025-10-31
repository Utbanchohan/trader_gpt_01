import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';
part 'feedback_model.g.dart';

@freezed
abstract class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    required String message,
    @JsonKey(name: 'message_id') required String messageId,
    @JsonKey(name: 'trace_id') required String traceId,
    @JsonKey(name: 'user_id') required String userId,
    required FeedbackData feedback,
  }) = _FeedbackModel;

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}

@freezed
abstract class FeedbackData with _$FeedbackData {
  const factory FeedbackData({
    required String key,
    required double score,
    required String comment,
  }) = _FeedbackData;

  factory FeedbackData.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDataFromJson(json);
}
