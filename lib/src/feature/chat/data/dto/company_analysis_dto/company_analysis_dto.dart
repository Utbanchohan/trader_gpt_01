import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_analysis_dto.freezed.dart';
part 'company_analysis_dto.g.dart';

@freezed
abstract class StreamDto with _$StreamDto {
  const factory StreamDto({
    required String task,
    required String symbol,
    @JsonKey(name: "symbol_name") required String symbolName,
    required bool report,
    @JsonKey(name: "is_web_research") required bool isWebResearch,
    @JsonKey(name: "deep_search") required bool deepSearch,
    @JsonKey(name: "chat_id") required String chatId,
    @JsonKey(name: "reply_id") required String replyId,
    @JsonKey(name: "workflow_object") WorkflowObject? workflowObject,
    @JsonKey(name: "analysis_required") required bool analysisRequired,
    @JsonKey(name: "is_workflow") required bool isWorkflow,
  }) = _StreamDto;

  factory StreamDto.fromJson(Map<String, dynamic> json) =>
      _$StreamDtoFromJson(json);
}

@freezed
abstract class WorkflowObject with _$WorkflowObject {
  const factory WorkflowObject({
    required String name,
    @JsonKey(name: "display_name") required String displayName,
    required String description,
    required String query,
    required List<WorkflowParameter> parameters,
    required String label,
    String? companyName,
  }) = _WorkflowObject;

  factory WorkflowObject.fromJson(Map<String, dynamic> json) =>
      _$WorkflowObjectFromJson(json);
}

@freezed
abstract class WorkflowParameter with _$WorkflowParameter {
  const factory WorkflowParameter({
    required String name,
    required bool required,
    required String description,
    String? value,
    bool? disabled,
  }) = _WorkflowParameter;

  factory WorkflowParameter.fromJson(Map<String, dynamic> json) =>
      _$WorkflowParameterFromJson(json);
}
