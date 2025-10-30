import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_dto.freezed.dart';
part 'feedback_dto.g.dart';

@freezed
abstract class FeedbackDto with _$FeedbackDto {
  const factory FeedbackDto({
    required String comment,
    required String key,
    @JsonKey(name: "messageid") required String messageId,
    required int score,
    @JsonKey(name: "trace_id") required String traceId,
  }) = _FeedbackDto;

  factory FeedbackDto.fromJson(Map<String, dynamic> json) =>
      _$FeedbackDtoFromJson(json);
}
