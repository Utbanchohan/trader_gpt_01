// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updates_questions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisTask {

 String get definition;@JsonKey(name: 'child_tasks') List<ChildTask>? get childTasks;
/// Create a copy of AnalysisTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisTaskCopyWith<AnalysisTask> get copyWith => _$AnalysisTaskCopyWithImpl<AnalysisTask>(this as AnalysisTask, _$identity);

  /// Serializes this AnalysisTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisTask&&(identical(other.definition, definition) || other.definition == definition)&&const DeepCollectionEquality().equals(other.childTasks, childTasks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,definition,const DeepCollectionEquality().hash(childTasks));

@override
String toString() {
  return 'AnalysisTask(definition: $definition, childTasks: $childTasks)';
}


}

/// @nodoc
abstract mixin class $AnalysisTaskCopyWith<$Res>  {
  factory $AnalysisTaskCopyWith(AnalysisTask value, $Res Function(AnalysisTask) _then) = _$AnalysisTaskCopyWithImpl;
@useResult
$Res call({
 String definition,@JsonKey(name: 'child_tasks') List<ChildTask>? childTasks
});




}
/// @nodoc
class _$AnalysisTaskCopyWithImpl<$Res>
    implements $AnalysisTaskCopyWith<$Res> {
  _$AnalysisTaskCopyWithImpl(this._self, this._then);

  final AnalysisTask _self;
  final $Res Function(AnalysisTask) _then;

/// Create a copy of AnalysisTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? definition = null,Object? childTasks = freezed,}) {
  return _then(_self.copyWith(
definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String,childTasks: freezed == childTasks ? _self.childTasks : childTasks // ignore: cast_nullable_to_non_nullable
as List<ChildTask>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalysisTask].
extension AnalysisTaskPatterns on AnalysisTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisTask value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisTask value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String definition, @JsonKey(name: 'child_tasks')  List<ChildTask>? childTasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisTask() when $default != null:
return $default(_that.definition,_that.childTasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String definition, @JsonKey(name: 'child_tasks')  List<ChildTask>? childTasks)  $default,) {final _that = this;
switch (_that) {
case _AnalysisTask():
return $default(_that.definition,_that.childTasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String definition, @JsonKey(name: 'child_tasks')  List<ChildTask>? childTasks)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisTask() when $default != null:
return $default(_that.definition,_that.childTasks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisTask implements AnalysisTask {
  const _AnalysisTask({required this.definition, @JsonKey(name: 'child_tasks') required final  List<ChildTask>? childTasks}): _childTasks = childTasks;
  factory _AnalysisTask.fromJson(Map<String, dynamic> json) => _$AnalysisTaskFromJson(json);

@override final  String definition;
 final  List<ChildTask>? _childTasks;
@override@JsonKey(name: 'child_tasks') List<ChildTask>? get childTasks {
  final value = _childTasks;
  if (value == null) return null;
  if (_childTasks is EqualUnmodifiableListView) return _childTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AnalysisTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisTaskCopyWith<_AnalysisTask> get copyWith => __$AnalysisTaskCopyWithImpl<_AnalysisTask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisTaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisTask&&(identical(other.definition, definition) || other.definition == definition)&&const DeepCollectionEquality().equals(other._childTasks, _childTasks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,definition,const DeepCollectionEquality().hash(_childTasks));

@override
String toString() {
  return 'AnalysisTask(definition: $definition, childTasks: $childTasks)';
}


}

/// @nodoc
abstract mixin class _$AnalysisTaskCopyWith<$Res> implements $AnalysisTaskCopyWith<$Res> {
  factory _$AnalysisTaskCopyWith(_AnalysisTask value, $Res Function(_AnalysisTask) _then) = __$AnalysisTaskCopyWithImpl;
@override @useResult
$Res call({
 String definition,@JsonKey(name: 'child_tasks') List<ChildTask>? childTasks
});




}
/// @nodoc
class __$AnalysisTaskCopyWithImpl<$Res>
    implements _$AnalysisTaskCopyWith<$Res> {
  __$AnalysisTaskCopyWithImpl(this._self, this._then);

  final _AnalysisTask _self;
  final $Res Function(_AnalysisTask) _then;

/// Create a copy of AnalysisTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? definition = null,Object? childTasks = freezed,}) {
  return _then(_AnalysisTask(
definition: null == definition ? _self.definition : definition // ignore: cast_nullable_to_non_nullable
as String,childTasks: freezed == childTasks ? _self._childTasks : childTasks // ignore: cast_nullable_to_non_nullable
as List<ChildTask>?,
  ));
}


}


/// @nodoc
mixin _$ChildTask {

@JsonKey(name: 'task_id') String get taskId; String get description; String get status;
/// Create a copy of ChildTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChildTaskCopyWith<ChildTask> get copyWith => _$ChildTaskCopyWithImpl<ChildTask>(this as ChildTask, _$identity);

  /// Serializes this ChildTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChildTask&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taskId,description,status);

@override
String toString() {
  return 'ChildTask(taskId: $taskId, description: $description, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChildTaskCopyWith<$Res>  {
  factory $ChildTaskCopyWith(ChildTask value, $Res Function(ChildTask) _then) = _$ChildTaskCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'task_id') String taskId, String description, String status
});




}
/// @nodoc
class _$ChildTaskCopyWithImpl<$Res>
    implements $ChildTaskCopyWith<$Res> {
  _$ChildTaskCopyWithImpl(this._self, this._then);

  final ChildTask _self;
  final $Res Function(ChildTask) _then;

/// Create a copy of ChildTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskId = null,Object? description = null,Object? status = null,}) {
  return _then(_self.copyWith(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChildTask].
extension ChildTaskPatterns on ChildTask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChildTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChildTask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChildTask value)  $default,){
final _that = this;
switch (_that) {
case _ChildTask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChildTask value)?  $default,){
final _that = this;
switch (_that) {
case _ChildTask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'task_id')  String taskId,  String description,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChildTask() when $default != null:
return $default(_that.taskId,_that.description,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'task_id')  String taskId,  String description,  String status)  $default,) {final _that = this;
switch (_that) {
case _ChildTask():
return $default(_that.taskId,_that.description,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'task_id')  String taskId,  String description,  String status)?  $default,) {final _that = this;
switch (_that) {
case _ChildTask() when $default != null:
return $default(_that.taskId,_that.description,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChildTask implements ChildTask {
  const _ChildTask({@JsonKey(name: 'task_id') required this.taskId, required this.description, required this.status});
  factory _ChildTask.fromJson(Map<String, dynamic> json) => _$ChildTaskFromJson(json);

@override@JsonKey(name: 'task_id') final  String taskId;
@override final  String description;
@override final  String status;

/// Create a copy of ChildTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChildTaskCopyWith<_ChildTask> get copyWith => __$ChildTaskCopyWithImpl<_ChildTask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChildTaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChildTask&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taskId,description,status);

@override
String toString() {
  return 'ChildTask(taskId: $taskId, description: $description, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChildTaskCopyWith<$Res> implements $ChildTaskCopyWith<$Res> {
  factory _$ChildTaskCopyWith(_ChildTask value, $Res Function(_ChildTask) _then) = __$ChildTaskCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'task_id') String taskId, String description, String status
});




}
/// @nodoc
class __$ChildTaskCopyWithImpl<$Res>
    implements _$ChildTaskCopyWith<$Res> {
  __$ChildTaskCopyWithImpl(this._self, this._then);

  final _ChildTask _self;
  final $Res Function(_ChildTask) _then;

/// Create a copy of ChildTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? description = null,Object? status = null,}) {
  return _then(_ChildTask(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
