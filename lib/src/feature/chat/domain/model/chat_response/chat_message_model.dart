import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
abstract class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    @JsonKey(name: '_id') required String id,
    required String chatId,
    required String message,
    required String type,
    required String userId,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? followup,
    UserFeedbackModel? feedback,
    @Default('') String runId,
    String? tempMessageId,
    String? symbol,
    @Default("Pending") String status,
    Displayable? displayable,
    dynamic tracing,
    List<dynamic>? updates,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

@freezed
abstract class Displayable with _$Displayable {
  const factory Displayable({
    @Default([]) List<String> Worker,
    @Default([]) List<String> Display,
  }) = _Displayable;

  factory Displayable.fromJson(Map<String, dynamic> json) =>
      _$DisplayableFromJson(json);
}

@freezed
abstract class UserFeedbackModel with _$UserFeedbackModel {
  const factory UserFeedbackModel({
    @Default('') String key,
    @Default('') String comment,
    @Default(0) int score,
    @Default('') String userid,
    @Default('') String traceId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _UserFeedbackModel;

  factory UserFeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$UserFeedbackModelFromJson(json);
}

// @freezed
// class StockData with _$StockData {
//   const factory StockData({
//     required String redis_key,
//     required String symbol,
//     String? type,
//     @JsonKey(name: 'dataframe_shape') List<dynamic>? dataframeShape,
//     List<String>? columns,
//     List<Map<String, dynamic>>? data,
//     String? stored_at,
//     Map<String, dynamic>? data_stats,
//   }) = _StockData;

//   factory StockData.fromJson(Map<String, dynamic> json) =>
//       _$StockDataFromJson(json);
// }

@freezed
abstract class DisplayData with _$DisplayData {
  const factory DisplayData({
    @JsonKey(name: "chart_type") String? chartType,
    @JsonKey(name: "sub_type") String? subType,
    required String type,
    required String title,
    AxisData? xAxis,
    AxisData? yAxis,
    List<dynamic>? data,
  }) = _DisplayData;

  factory DisplayData.fromJson(Map<String, dynamic> json) =>
      _$DisplayDataFromJson(json);
}

@freezed
abstract class AxisData with _$AxisData {
  const factory AxisData({
    @JsonKey(name: "X_title") String? xTitle,
    @JsonKey(name: "Y_title") String? yTitle,
    List<dynamic>? data,
  }) = _AxisData;

  factory AxisData.fromJson(Map<String, dynamic> json) =>
      _$AxisDataFromJson(json);
}
