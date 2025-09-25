// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_analysis_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StreamDto {

 String get task; String get symbol;@JsonKey(name: "symbol_name") String get symbolName; bool get report;@JsonKey(name: "is_web_research") bool get isWebResearch;@JsonKey(name: "deep_search") bool get deepSearch;@JsonKey(name: "chat_id") String get chatId;@JsonKey(name: "reply_id") String get replyId;@JsonKey(name: "workflow_object") WorkflowObject? get workflowObject;@JsonKey(name: "analysis_required") bool get analysisRequired;@JsonKey(name: "is_workflow") bool get isWorkflow;
/// Create a copy of StreamDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamDtoCopyWith<StreamDto> get copyWith => _$StreamDtoCopyWithImpl<StreamDto>(this as StreamDto, _$identity);

  /// Serializes this StreamDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamDto&&(identical(other.task, task) || other.task == task)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.symbolName, symbolName) || other.symbolName == symbolName)&&(identical(other.report, report) || other.report == report)&&(identical(other.isWebResearch, isWebResearch) || other.isWebResearch == isWebResearch)&&(identical(other.deepSearch, deepSearch) || other.deepSearch == deepSearch)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.replyId, replyId) || other.replyId == replyId)&&(identical(other.workflowObject, workflowObject) || other.workflowObject == workflowObject)&&(identical(other.analysisRequired, analysisRequired) || other.analysisRequired == analysisRequired)&&(identical(other.isWorkflow, isWorkflow) || other.isWorkflow == isWorkflow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,task,symbol,symbolName,report,isWebResearch,deepSearch,chatId,replyId,workflowObject,analysisRequired,isWorkflow);

@override
String toString() {
  return 'StreamDto(task: $task, symbol: $symbol, symbolName: $symbolName, report: $report, isWebResearch: $isWebResearch, deepSearch: $deepSearch, chatId: $chatId, replyId: $replyId, workflowObject: $workflowObject, analysisRequired: $analysisRequired, isWorkflow: $isWorkflow)';
}


}

/// @nodoc
abstract mixin class $StreamDtoCopyWith<$Res>  {
  factory $StreamDtoCopyWith(StreamDto value, $Res Function(StreamDto) _then) = _$StreamDtoCopyWithImpl;
@useResult
$Res call({
 String task, String symbol,@JsonKey(name: "symbol_name") String symbolName, bool report,@JsonKey(name: "is_web_research") bool isWebResearch,@JsonKey(name: "deep_search") bool deepSearch,@JsonKey(name: "chat_id") String chatId,@JsonKey(name: "reply_id") String replyId,@JsonKey(name: "workflow_object") WorkflowObject? workflowObject,@JsonKey(name: "analysis_required") bool analysisRequired,@JsonKey(name: "is_workflow") bool isWorkflow
});


$WorkflowObjectCopyWith<$Res>? get workflowObject;

}
/// @nodoc
class _$StreamDtoCopyWithImpl<$Res>
    implements $StreamDtoCopyWith<$Res> {
  _$StreamDtoCopyWithImpl(this._self, this._then);

  final StreamDto _self;
  final $Res Function(StreamDto) _then;

/// Create a copy of StreamDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? task = null,Object? symbol = null,Object? symbolName = null,Object? report = null,Object? isWebResearch = null,Object? deepSearch = null,Object? chatId = null,Object? replyId = null,Object? workflowObject = freezed,Object? analysisRequired = null,Object? isWorkflow = null,}) {
  return _then(_self.copyWith(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,symbolName: null == symbolName ? _self.symbolName : symbolName // ignore: cast_nullable_to_non_nullable
as String,report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as bool,isWebResearch: null == isWebResearch ? _self.isWebResearch : isWebResearch // ignore: cast_nullable_to_non_nullable
as bool,deepSearch: null == deepSearch ? _self.deepSearch : deepSearch // ignore: cast_nullable_to_non_nullable
as bool,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,replyId: null == replyId ? _self.replyId : replyId // ignore: cast_nullable_to_non_nullable
as String,workflowObject: freezed == workflowObject ? _self.workflowObject : workflowObject // ignore: cast_nullable_to_non_nullable
as WorkflowObject?,analysisRequired: null == analysisRequired ? _self.analysisRequired : analysisRequired // ignore: cast_nullable_to_non_nullable
as bool,isWorkflow: null == isWorkflow ? _self.isWorkflow : isWorkflow // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of StreamDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkflowObjectCopyWith<$Res>? get workflowObject {
    if (_self.workflowObject == null) {
    return null;
  }

  return $WorkflowObjectCopyWith<$Res>(_self.workflowObject!, (value) {
    return _then(_self.copyWith(workflowObject: value));
  });
}
}


/// Adds pattern-matching-related methods to [StreamDto].
extension StreamDtoPatterns on StreamDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamDto value)  $default,){
final _that = this;
switch (_that) {
case _StreamDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamDto value)?  $default,){
final _that = this;
switch (_that) {
case _StreamDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String task,  String symbol, @JsonKey(name: "symbol_name")  String symbolName,  bool report, @JsonKey(name: "is_web_research")  bool isWebResearch, @JsonKey(name: "deep_search")  bool deepSearch, @JsonKey(name: "chat_id")  String chatId, @JsonKey(name: "reply_id")  String replyId, @JsonKey(name: "workflow_object")  WorkflowObject? workflowObject, @JsonKey(name: "analysis_required")  bool analysisRequired, @JsonKey(name: "is_workflow")  bool isWorkflow)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamDto() when $default != null:
return $default(_that.task,_that.symbol,_that.symbolName,_that.report,_that.isWebResearch,_that.deepSearch,_that.chatId,_that.replyId,_that.workflowObject,_that.analysisRequired,_that.isWorkflow);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String task,  String symbol, @JsonKey(name: "symbol_name")  String symbolName,  bool report, @JsonKey(name: "is_web_research")  bool isWebResearch, @JsonKey(name: "deep_search")  bool deepSearch, @JsonKey(name: "chat_id")  String chatId, @JsonKey(name: "reply_id")  String replyId, @JsonKey(name: "workflow_object")  WorkflowObject? workflowObject, @JsonKey(name: "analysis_required")  bool analysisRequired, @JsonKey(name: "is_workflow")  bool isWorkflow)  $default,) {final _that = this;
switch (_that) {
case _StreamDto():
return $default(_that.task,_that.symbol,_that.symbolName,_that.report,_that.isWebResearch,_that.deepSearch,_that.chatId,_that.replyId,_that.workflowObject,_that.analysisRequired,_that.isWorkflow);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String task,  String symbol, @JsonKey(name: "symbol_name")  String symbolName,  bool report, @JsonKey(name: "is_web_research")  bool isWebResearch, @JsonKey(name: "deep_search")  bool deepSearch, @JsonKey(name: "chat_id")  String chatId, @JsonKey(name: "reply_id")  String replyId, @JsonKey(name: "workflow_object")  WorkflowObject? workflowObject, @JsonKey(name: "analysis_required")  bool analysisRequired, @JsonKey(name: "is_workflow")  bool isWorkflow)?  $default,) {final _that = this;
switch (_that) {
case _StreamDto() when $default != null:
return $default(_that.task,_that.symbol,_that.symbolName,_that.report,_that.isWebResearch,_that.deepSearch,_that.chatId,_that.replyId,_that.workflowObject,_that.analysisRequired,_that.isWorkflow);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamDto implements StreamDto {
  const _StreamDto({required this.task, required this.symbol, @JsonKey(name: "symbol_name") required this.symbolName, required this.report, @JsonKey(name: "is_web_research") required this.isWebResearch, @JsonKey(name: "deep_search") required this.deepSearch, @JsonKey(name: "chat_id") required this.chatId, @JsonKey(name: "reply_id") required this.replyId, @JsonKey(name: "workflow_object") this.workflowObject, @JsonKey(name: "analysis_required") required this.analysisRequired, @JsonKey(name: "is_workflow") required this.isWorkflow});
  factory _StreamDto.fromJson(Map<String, dynamic> json) => _$StreamDtoFromJson(json);

@override final  String task;
@override final  String symbol;
@override@JsonKey(name: "symbol_name") final  String symbolName;
@override final  bool report;
@override@JsonKey(name: "is_web_research") final  bool isWebResearch;
@override@JsonKey(name: "deep_search") final  bool deepSearch;
@override@JsonKey(name: "chat_id") final  String chatId;
@override@JsonKey(name: "reply_id") final  String replyId;
@override@JsonKey(name: "workflow_object") final  WorkflowObject? workflowObject;
@override@JsonKey(name: "analysis_required") final  bool analysisRequired;
@override@JsonKey(name: "is_workflow") final  bool isWorkflow;

/// Create a copy of StreamDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamDtoCopyWith<_StreamDto> get copyWith => __$StreamDtoCopyWithImpl<_StreamDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamDto&&(identical(other.task, task) || other.task == task)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.symbolName, symbolName) || other.symbolName == symbolName)&&(identical(other.report, report) || other.report == report)&&(identical(other.isWebResearch, isWebResearch) || other.isWebResearch == isWebResearch)&&(identical(other.deepSearch, deepSearch) || other.deepSearch == deepSearch)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.replyId, replyId) || other.replyId == replyId)&&(identical(other.workflowObject, workflowObject) || other.workflowObject == workflowObject)&&(identical(other.analysisRequired, analysisRequired) || other.analysisRequired == analysisRequired)&&(identical(other.isWorkflow, isWorkflow) || other.isWorkflow == isWorkflow));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,task,symbol,symbolName,report,isWebResearch,deepSearch,chatId,replyId,workflowObject,analysisRequired,isWorkflow);

@override
String toString() {
  return 'StreamDto(task: $task, symbol: $symbol, symbolName: $symbolName, report: $report, isWebResearch: $isWebResearch, deepSearch: $deepSearch, chatId: $chatId, replyId: $replyId, workflowObject: $workflowObject, analysisRequired: $analysisRequired, isWorkflow: $isWorkflow)';
}


}

/// @nodoc
abstract mixin class _$StreamDtoCopyWith<$Res> implements $StreamDtoCopyWith<$Res> {
  factory _$StreamDtoCopyWith(_StreamDto value, $Res Function(_StreamDto) _then) = __$StreamDtoCopyWithImpl;
@override @useResult
$Res call({
 String task, String symbol,@JsonKey(name: "symbol_name") String symbolName, bool report,@JsonKey(name: "is_web_research") bool isWebResearch,@JsonKey(name: "deep_search") bool deepSearch,@JsonKey(name: "chat_id") String chatId,@JsonKey(name: "reply_id") String replyId,@JsonKey(name: "workflow_object") WorkflowObject? workflowObject,@JsonKey(name: "analysis_required") bool analysisRequired,@JsonKey(name: "is_workflow") bool isWorkflow
});


@override $WorkflowObjectCopyWith<$Res>? get workflowObject;

}
/// @nodoc
class __$StreamDtoCopyWithImpl<$Res>
    implements _$StreamDtoCopyWith<$Res> {
  __$StreamDtoCopyWithImpl(this._self, this._then);

  final _StreamDto _self;
  final $Res Function(_StreamDto) _then;

/// Create a copy of StreamDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? task = null,Object? symbol = null,Object? symbolName = null,Object? report = null,Object? isWebResearch = null,Object? deepSearch = null,Object? chatId = null,Object? replyId = null,Object? workflowObject = freezed,Object? analysisRequired = null,Object? isWorkflow = null,}) {
  return _then(_StreamDto(
task: null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,symbolName: null == symbolName ? _self.symbolName : symbolName // ignore: cast_nullable_to_non_nullable
as String,report: null == report ? _self.report : report // ignore: cast_nullable_to_non_nullable
as bool,isWebResearch: null == isWebResearch ? _self.isWebResearch : isWebResearch // ignore: cast_nullable_to_non_nullable
as bool,deepSearch: null == deepSearch ? _self.deepSearch : deepSearch // ignore: cast_nullable_to_non_nullable
as bool,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,replyId: null == replyId ? _self.replyId : replyId // ignore: cast_nullable_to_non_nullable
as String,workflowObject: freezed == workflowObject ? _self.workflowObject : workflowObject // ignore: cast_nullable_to_non_nullable
as WorkflowObject?,analysisRequired: null == analysisRequired ? _self.analysisRequired : analysisRequired // ignore: cast_nullable_to_non_nullable
as bool,isWorkflow: null == isWorkflow ? _self.isWorkflow : isWorkflow // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of StreamDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkflowObjectCopyWith<$Res>? get workflowObject {
    if (_self.workflowObject == null) {
    return null;
  }

  return $WorkflowObjectCopyWith<$Res>(_self.workflowObject!, (value) {
    return _then(_self.copyWith(workflowObject: value));
  });
}
}


/// @nodoc
mixin _$WorkflowObject {

 String get name;@JsonKey(name: "display_name") String get displayName; String get description; String get query; List<WorkflowParameter> get parameters; String get label; String? get companyName;
/// Create a copy of WorkflowObject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkflowObjectCopyWith<WorkflowObject> get copyWith => _$WorkflowObjectCopyWithImpl<WorkflowObject>(this as WorkflowObject, _$identity);

  /// Serializes this WorkflowObject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkflowObject&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.parameters, parameters)&&(identical(other.label, label) || other.label == label)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,displayName,description,query,const DeepCollectionEquality().hash(parameters),label,companyName);

@override
String toString() {
  return 'WorkflowObject(name: $name, displayName: $displayName, description: $description, query: $query, parameters: $parameters, label: $label, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class $WorkflowObjectCopyWith<$Res>  {
  factory $WorkflowObjectCopyWith(WorkflowObject value, $Res Function(WorkflowObject) _then) = _$WorkflowObjectCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: "display_name") String displayName, String description, String query, List<WorkflowParameter> parameters, String label, String? companyName
});




}
/// @nodoc
class _$WorkflowObjectCopyWithImpl<$Res>
    implements $WorkflowObjectCopyWith<$Res> {
  _$WorkflowObjectCopyWithImpl(this._self, this._then);

  final WorkflowObject _self;
  final $Res Function(WorkflowObject) _then;

/// Create a copy of WorkflowObject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? displayName = null,Object? description = null,Object? query = null,Object? parameters = null,Object? label = null,Object? companyName = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,parameters: null == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<WorkflowParameter>,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkflowObject].
extension WorkflowObjectPatterns on WorkflowObject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkflowObject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkflowObject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkflowObject value)  $default,){
final _that = this;
switch (_that) {
case _WorkflowObject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkflowObject value)?  $default,){
final _that = this;
switch (_that) {
case _WorkflowObject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: "display_name")  String displayName,  String description,  String query,  List<WorkflowParameter> parameters,  String label,  String? companyName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkflowObject() when $default != null:
return $default(_that.name,_that.displayName,_that.description,_that.query,_that.parameters,_that.label,_that.companyName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: "display_name")  String displayName,  String description,  String query,  List<WorkflowParameter> parameters,  String label,  String? companyName)  $default,) {final _that = this;
switch (_that) {
case _WorkflowObject():
return $default(_that.name,_that.displayName,_that.description,_that.query,_that.parameters,_that.label,_that.companyName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: "display_name")  String displayName,  String description,  String query,  List<WorkflowParameter> parameters,  String label,  String? companyName)?  $default,) {final _that = this;
switch (_that) {
case _WorkflowObject() when $default != null:
return $default(_that.name,_that.displayName,_that.description,_that.query,_that.parameters,_that.label,_that.companyName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkflowObject implements WorkflowObject {
  const _WorkflowObject({required this.name, @JsonKey(name: "display_name") required this.displayName, required this.description, required this.query, required final  List<WorkflowParameter> parameters, required this.label, this.companyName}): _parameters = parameters;
  factory _WorkflowObject.fromJson(Map<String, dynamic> json) => _$WorkflowObjectFromJson(json);

@override final  String name;
@override@JsonKey(name: "display_name") final  String displayName;
@override final  String description;
@override final  String query;
 final  List<WorkflowParameter> _parameters;
@override List<WorkflowParameter> get parameters {
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parameters);
}

@override final  String label;
@override final  String? companyName;

/// Create a copy of WorkflowObject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkflowObjectCopyWith<_WorkflowObject> get copyWith => __$WorkflowObjectCopyWithImpl<_WorkflowObject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkflowObjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkflowObject&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._parameters, _parameters)&&(identical(other.label, label) || other.label == label)&&(identical(other.companyName, companyName) || other.companyName == companyName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,displayName,description,query,const DeepCollectionEquality().hash(_parameters),label,companyName);

@override
String toString() {
  return 'WorkflowObject(name: $name, displayName: $displayName, description: $description, query: $query, parameters: $parameters, label: $label, companyName: $companyName)';
}


}

/// @nodoc
abstract mixin class _$WorkflowObjectCopyWith<$Res> implements $WorkflowObjectCopyWith<$Res> {
  factory _$WorkflowObjectCopyWith(_WorkflowObject value, $Res Function(_WorkflowObject) _then) = __$WorkflowObjectCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: "display_name") String displayName, String description, String query, List<WorkflowParameter> parameters, String label, String? companyName
});




}
/// @nodoc
class __$WorkflowObjectCopyWithImpl<$Res>
    implements _$WorkflowObjectCopyWith<$Res> {
  __$WorkflowObjectCopyWithImpl(this._self, this._then);

  final _WorkflowObject _self;
  final $Res Function(_WorkflowObject) _then;

/// Create a copy of WorkflowObject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? displayName = null,Object? description = null,Object? query = null,Object? parameters = null,Object? label = null,Object? companyName = freezed,}) {
  return _then(_WorkflowObject(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,parameters: null == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<WorkflowParameter>,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$WorkflowParameter {

 String get name; bool get required; String get description; String? get value; bool? get disabled;
/// Create a copy of WorkflowParameter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkflowParameterCopyWith<WorkflowParameter> get copyWith => _$WorkflowParameterCopyWithImpl<WorkflowParameter>(this as WorkflowParameter, _$identity);

  /// Serializes this WorkflowParameter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkflowParameter&&(identical(other.name, name) || other.name == name)&&(identical(other.required, required) || other.required == required)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&(identical(other.disabled, disabled) || other.disabled == disabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,required,description,value,disabled);

@override
String toString() {
  return 'WorkflowParameter(name: $name, required: $required, description: $description, value: $value, disabled: $disabled)';
}


}

/// @nodoc
abstract mixin class $WorkflowParameterCopyWith<$Res>  {
  factory $WorkflowParameterCopyWith(WorkflowParameter value, $Res Function(WorkflowParameter) _then) = _$WorkflowParameterCopyWithImpl;
@useResult
$Res call({
 String name, bool required, String description, String? value, bool? disabled
});




}
/// @nodoc
class _$WorkflowParameterCopyWithImpl<$Res>
    implements $WorkflowParameterCopyWith<$Res> {
  _$WorkflowParameterCopyWithImpl(this._self, this._then);

  final WorkflowParameter _self;
  final $Res Function(WorkflowParameter) _then;

/// Create a copy of WorkflowParameter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? required = null,Object? description = null,Object? value = freezed,Object? disabled = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,disabled: freezed == disabled ? _self.disabled : disabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkflowParameter].
extension WorkflowParameterPatterns on WorkflowParameter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkflowParameter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkflowParameter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkflowParameter value)  $default,){
final _that = this;
switch (_that) {
case _WorkflowParameter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkflowParameter value)?  $default,){
final _that = this;
switch (_that) {
case _WorkflowParameter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  bool required,  String description,  String? value,  bool? disabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkflowParameter() when $default != null:
return $default(_that.name,_that.required,_that.description,_that.value,_that.disabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  bool required,  String description,  String? value,  bool? disabled)  $default,) {final _that = this;
switch (_that) {
case _WorkflowParameter():
return $default(_that.name,_that.required,_that.description,_that.value,_that.disabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  bool required,  String description,  String? value,  bool? disabled)?  $default,) {final _that = this;
switch (_that) {
case _WorkflowParameter() when $default != null:
return $default(_that.name,_that.required,_that.description,_that.value,_that.disabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkflowParameter implements WorkflowParameter {
  const _WorkflowParameter({required this.name, required this.required, required this.description, this.value, this.disabled});
  factory _WorkflowParameter.fromJson(Map<String, dynamic> json) => _$WorkflowParameterFromJson(json);

@override final  String name;
@override final  bool required;
@override final  String description;
@override final  String? value;
@override final  bool? disabled;

/// Create a copy of WorkflowParameter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkflowParameterCopyWith<_WorkflowParameter> get copyWith => __$WorkflowParameterCopyWithImpl<_WorkflowParameter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkflowParameterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkflowParameter&&(identical(other.name, name) || other.name == name)&&(identical(other.required, required) || other.required == required)&&(identical(other.description, description) || other.description == description)&&(identical(other.value, value) || other.value == value)&&(identical(other.disabled, disabled) || other.disabled == disabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,required,description,value,disabled);

@override
String toString() {
  return 'WorkflowParameter(name: $name, required: $required, description: $description, value: $value, disabled: $disabled)';
}


}

/// @nodoc
abstract mixin class _$WorkflowParameterCopyWith<$Res> implements $WorkflowParameterCopyWith<$Res> {
  factory _$WorkflowParameterCopyWith(_WorkflowParameter value, $Res Function(_WorkflowParameter) _then) = __$WorkflowParameterCopyWithImpl;
@override @useResult
$Res call({
 String name, bool required, String description, String? value, bool? disabled
});




}
/// @nodoc
class __$WorkflowParameterCopyWithImpl<$Res>
    implements _$WorkflowParameterCopyWith<$Res> {
  __$WorkflowParameterCopyWithImpl(this._self, this._then);

  final _WorkflowParameter _self;
  final $Res Function(_WorkflowParameter) _then;

/// Create a copy of WorkflowParameter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? required = null,Object? description = null,Object? value = freezed,Object? disabled = freezed,}) {
  return _then(_WorkflowParameter(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,disabled: freezed == disabled ? _self.disabled : disabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
