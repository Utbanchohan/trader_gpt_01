// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskRequestDto {

@JsonKey(name: 'analysis_required') bool get analysisRequired;@JsonKey(name: 'chat_id') String get chatId;@JsonKey(name: 'deep_search') bool get deepSearch;@JsonKey(name: 'is_web_research') bool get isWebResearch;@JsonKey(name: 'is_workflow') bool get isWorkflow;@JsonKey(name: 'reply_id') String get replyId; bool get report; String get symbol;@JsonKey(name: 'symbol_name') String get symbolName; String get task;@JsonKey(name: 'workflow_object') dynamic get workflowObject;
/// Create a copy of TaskRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskRequestDtoCopyWith<TaskRequestDto> get copyWith => _$TaskRequestDtoCopyWithImpl<TaskRequestDto>(this as TaskRequestDto, _$identity);

  /// Serializes this TaskRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskRequestDto&&(identical(other.analysisRequired, analysisRequired) || other.analysisRequired == analysisRequired)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.deepSearch, deepSearch) || other.deepSearch == deepSearch)&&(identical(other.isWebResearch, isWebResearch) || other.isWebResearch == isWebResearch)&&(identical(other.isWorkflow, isWorkflow) || other.isWorkflow == isWorkflow)&&(identical(other.replyId, replyId) || other.replyId == replyId)&&(identical(other.report, report) || other.report == report)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.symbolName, symbolName) || other.symbolName == symbolName)&&(identical(other.task, task) || other.task == task)&&const DeepCollectionEquality().equals(other.workflowObject, workflowObject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,analysisRequired,chatId,deepSearch,isWebResearch,isWorkflow,replyId,report,symbol,symbolName,task,const DeepCollectionEquality().hash(workflowObject));

@override
String toString() {
  return 'TaskRequestDto(analysisRequired: $analysisRequired, chatId: $chatId, deepSearch: $deepSearch, isWebResearch: $isWebResearch, isWorkflow: $isWorkflow, replyId: $replyId, report: $report, symbol: $symbol, symbolName: $symbolName, task: $task, workflowObject: $workflowObject)';
}


}

/// @nodoc
abstract mixin class $TaskRequestDtoCopyWith<$Res>  {
  factory $TaskRequestDtoCopyWith(TaskRequestDto value, $Res Function(TaskRequestDto) _then) = _$TaskRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'analysis_required') bool analysisRequired,@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'deep_search') bool deepSearch,@JsonKey(name: 'is_web_research') bool isWebResearch,@JsonKey(name: 'is_workflow') bool isWorkflow,@JsonKey(name: 'reply_id') String replyId, bool report, String symbol,@JsonKey(name: 'symbol_name') String symbolName, String task,@JsonKey(name: 'workflow_object') dynamic workflowObject
});




}
/// @nodoc
class _$TaskRequestDtoCopyWithImpl<$Res>
    implements $TaskRequestDtoCopyWith<$Res> {
  _$TaskRequestDtoCopyWithImpl(this._self, this._then);

  final TaskRequestDto _self;
  final $Res Function(TaskRequestDto) _then;

/// Create a copy of TaskRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? analysisRequired = null,Object? chatId = null,Object? deepSearch = null,Object? isWebResearch = null,Object? isWorkflow = null,Object? replyId = null,Object? report = null,Object? symbol = null,Object? symbolName = null,Object? task = null,Object? workflowObject = freezed,}) {
  return _then(_self.copyWith(
analysisRequired: null == analysisRequired ? _self.analysisRequired : analysisRequired // ignore: cast_nullable_to_non_nullable
as bool,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,deepSearch: null == deepSearch ? _self.deepSearch : deepSearch // ignore: cast_nullable_to_non_nullable
as bool,isWebResearch: null == isWebResearch ? _self.isWebResearch : isWebResearch // ignore: cast_nullable_to_non_nullable
as bool,isWorkflow: null == isWorkflow ? _self.isWorkflow : isWorkflow // ignore: cast_nullable_to_non_nullable
as bool,replyId: null == replyId ? _self.replyId : replyId // ignore: cast_nullable_to_non_nullable
as String,report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as bool,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,symbolName: null == symbolName ? _self.symbolName : symbolName // ignore: cast_nullable_to_non_nullable
as String,task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String,workflowObject: freezed == workflowObject ? _self.workflowObject : workflowObject // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskRequestDto].
extension TaskRequestDtoPatterns on TaskRequestDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskRequestDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TaskRequestDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TaskRequestDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'analysis_required')  bool analysisRequired, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'deep_search')  bool deepSearch, @JsonKey(name: 'is_web_research')  bool isWebResearch, @JsonKey(name: 'is_workflow')  bool isWorkflow, @JsonKey(name: 'reply_id')  String replyId,  bool report,  String symbol, @JsonKey(name: 'symbol_name')  String symbolName,  String task, @JsonKey(name: 'workflow_object')  dynamic workflowObject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskRequestDto() when $default != null:
return $default(_that.analysisRequired,_that.chatId,_that.deepSearch,_that.isWebResearch,_that.isWorkflow,_that.replyId,_that.report,_that.symbol,_that.symbolName,_that.task,_that.workflowObject);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'analysis_required')  bool analysisRequired, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'deep_search')  bool deepSearch, @JsonKey(name: 'is_web_research')  bool isWebResearch, @JsonKey(name: 'is_workflow')  bool isWorkflow, @JsonKey(name: 'reply_id')  String replyId,  bool report,  String symbol, @JsonKey(name: 'symbol_name')  String symbolName,  String task, @JsonKey(name: 'workflow_object')  dynamic workflowObject)  $default,) {final _that = this;
switch (_that) {
case _TaskRequestDto():
return $default(_that.analysisRequired,_that.chatId,_that.deepSearch,_that.isWebResearch,_that.isWorkflow,_that.replyId,_that.report,_that.symbol,_that.symbolName,_that.task,_that.workflowObject);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'analysis_required')  bool analysisRequired, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'deep_search')  bool deepSearch, @JsonKey(name: 'is_web_research')  bool isWebResearch, @JsonKey(name: 'is_workflow')  bool isWorkflow, @JsonKey(name: 'reply_id')  String replyId,  bool report,  String symbol, @JsonKey(name: 'symbol_name')  String symbolName,  String task, @JsonKey(name: 'workflow_object')  dynamic workflowObject)?  $default,) {final _that = this;
switch (_that) {
case _TaskRequestDto() when $default != null:
return $default(_that.analysisRequired,_that.chatId,_that.deepSearch,_that.isWebResearch,_that.isWorkflow,_that.replyId,_that.report,_that.symbol,_that.symbolName,_that.task,_that.workflowObject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskRequestDto implements TaskRequestDto {
  const _TaskRequestDto({@JsonKey(name: 'analysis_required') required this.analysisRequired, @JsonKey(name: 'chat_id') required this.chatId, @JsonKey(name: 'deep_search') required this.deepSearch, @JsonKey(name: 'is_web_research') required this.isWebResearch, @JsonKey(name: 'is_workflow') required this.isWorkflow, @JsonKey(name: 'reply_id') required this.replyId, required this.report, required this.symbol, @JsonKey(name: 'symbol_name') required this.symbolName, required this.task, @JsonKey(name: 'workflow_object') this.workflowObject});
  factory _TaskRequestDto.fromJson(Map<String, dynamic> json) => _$TaskRequestDtoFromJson(json);

@override@JsonKey(name: 'analysis_required') final  bool analysisRequired;
@override@JsonKey(name: 'chat_id') final  String chatId;
@override@JsonKey(name: 'deep_search') final  bool deepSearch;
@override@JsonKey(name: 'is_web_research') final  bool isWebResearch;
@override@JsonKey(name: 'is_workflow') final  bool isWorkflow;
@override@JsonKey(name: 'reply_id') final  String replyId;
@override final  bool report;
@override final  String symbol;
@override@JsonKey(name: 'symbol_name') final  String symbolName;
@override final  String task;
@override@JsonKey(name: 'workflow_object') final  dynamic workflowObject;

/// Create a copy of TaskRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskRequestDtoCopyWith<_TaskRequestDto> get copyWith => __$TaskRequestDtoCopyWithImpl<_TaskRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskRequestDto&&(identical(other.analysisRequired, analysisRequired) || other.analysisRequired == analysisRequired)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.deepSearch, deepSearch) || other.deepSearch == deepSearch)&&(identical(other.isWebResearch, isWebResearch) || other.isWebResearch == isWebResearch)&&(identical(other.isWorkflow, isWorkflow) || other.isWorkflow == isWorkflow)&&(identical(other.replyId, replyId) || other.replyId == replyId)&&(identical(other.report, report) || other.report == report)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.symbolName, symbolName) || other.symbolName == symbolName)&&(identical(other.task, task) || other.task == task)&&const DeepCollectionEquality().equals(other.workflowObject, workflowObject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,analysisRequired,chatId,deepSearch,isWebResearch,isWorkflow,replyId,report,symbol,symbolName,task,const DeepCollectionEquality().hash(workflowObject));

@override
String toString() {
  return 'TaskRequestDto(analysisRequired: $analysisRequired, chatId: $chatId, deepSearch: $deepSearch, isWebResearch: $isWebResearch, isWorkflow: $isWorkflow, replyId: $replyId, report: $report, symbol: $symbol, symbolName: $symbolName, task: $task, workflowObject: $workflowObject)';
}


}

/// @nodoc
abstract mixin class _$TaskRequestDtoCopyWith<$Res> implements $TaskRequestDtoCopyWith<$Res> {
  factory _$TaskRequestDtoCopyWith(_TaskRequestDto value, $Res Function(_TaskRequestDto) _then) = __$TaskRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'analysis_required') bool analysisRequired,@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'deep_search') bool deepSearch,@JsonKey(name: 'is_web_research') bool isWebResearch,@JsonKey(name: 'is_workflow') bool isWorkflow,@JsonKey(name: 'reply_id') String replyId, bool report, String symbol,@JsonKey(name: 'symbol_name') String symbolName, String task,@JsonKey(name: 'workflow_object') dynamic workflowObject
});




}
/// @nodoc
class __$TaskRequestDtoCopyWithImpl<$Res>
    implements _$TaskRequestDtoCopyWith<$Res> {
  __$TaskRequestDtoCopyWithImpl(this._self, this._then);

  final _TaskRequestDto _self;
  final $Res Function(_TaskRequestDto) _then;

/// Create a copy of TaskRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? analysisRequired = null,Object? chatId = null,Object? deepSearch = null,Object? isWebResearch = null,Object? isWorkflow = null,Object? replyId = null,Object? report = null,Object? symbol = null,Object? symbolName = null,Object? task = null,Object? workflowObject = freezed,}) {
  return _then(_TaskRequestDto(
analysisRequired: null == analysisRequired ? _self.analysisRequired : analysisRequired // ignore: cast_nullable_to_non_nullable
as bool,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,deepSearch: null == deepSearch ? _self.deepSearch : deepSearch // ignore: cast_nullable_to_non_nullable
as bool,isWebResearch: null == isWebResearch ? _self.isWebResearch : isWebResearch // ignore: cast_nullable_to_non_nullable
as bool,isWorkflow: null == isWorkflow ? _self.isWorkflow : isWorkflow // ignore: cast_nullable_to_non_nullable
as bool,replyId: null == replyId ? _self.replyId : replyId // ignore: cast_nullable_to_non_nullable
as String,report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as bool,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,symbolName: null == symbolName ? _self.symbolName : symbolName // ignore: cast_nullable_to_non_nullable
as String,task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String,workflowObject: freezed == workflowObject ? _self.workflowObject : workflowObject // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
