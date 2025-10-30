// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) =>
    _FeedbackModel(
      message: json['message'] as String,
      messageId: json['message_id'] as String,
      traceId: json['trace_id'] as String,
      userId: json['user_id'] as String,
      feedback: FeedbackData.fromJson(json['feedback'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedbackModelToJson(_FeedbackModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'message_id': instance.messageId,
      'trace_id': instance.traceId,
      'user_id': instance.userId,
      'feedback': instance.feedback,
    };

_FeedbackData _$FeedbackDataFromJson(Map<String, dynamic> json) =>
    _FeedbackData(
      key: json['key'] as String,
      score: (json['score'] as num).toDouble(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$FeedbackDataToJson(_FeedbackData instance) =>
    <String, dynamic>{
      'key': instance.key,
      'score': instance.score,
      'comment': instance.comment,
    };
