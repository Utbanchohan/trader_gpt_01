import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_dto.freezed.dart';
part 'task_dto.g.dart';


@freezed
abstract class TaskRequestDto with _$TaskRequestDto {
  const factory TaskRequestDto({
    @JsonKey(name: 'analysis_required') required bool analysisRequired,
    @JsonKey(name: 'chat_id') required String chatId,
    @JsonKey(name: 'deep_search') required bool deepSearch,
    @JsonKey(name: 'is_web_research') required bool isWebResearch,
    @JsonKey(name: 'is_workflow') required bool isWorkflow,
    @JsonKey(name: 'reply_id') required String replyId,
    required bool report,
    required String symbol,
    @JsonKey(name: 'symbol_name') required String symbolName,
    required String task,
    @JsonKey(name: 'workflow_object') dynamic workflowObject,
  }) = _TaskRequestDto;

  factory TaskRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TaskRequestDtoFromJson(json);
}
