// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_flow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkflowsData {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'total_workflows') int get totalWorkflows; List<Workflow> get workflows;
/// Create a copy of WorkflowsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkflowsDataCopyWith<WorkflowsData> get copyWith => _$WorkflowsDataCopyWithImpl<WorkflowsData>(this as WorkflowsData, _$identity);

  /// Serializes this WorkflowsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkflowsData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.totalWorkflows, totalWorkflows) || other.totalWorkflows == totalWorkflows)&&const DeepCollectionEquality().equals(other.workflows, workflows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,totalWorkflows,const DeepCollectionEquality().hash(workflows));

@override
String toString() {
  return 'WorkflowsData(userId: $userId, totalWorkflows: $totalWorkflows, workflows: $workflows)';
}


}

/// @nodoc
abstract mixin class $WorkflowsDataCopyWith<$Res>  {
  factory $WorkflowsDataCopyWith(WorkflowsData value, $Res Function(WorkflowsData) _then) = _$WorkflowsDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'total_workflows') int totalWorkflows, List<Workflow> workflows
});




}
/// @nodoc
class _$WorkflowsDataCopyWithImpl<$Res>
    implements $WorkflowsDataCopyWith<$Res> {
  _$WorkflowsDataCopyWithImpl(this._self, this._then);

  final WorkflowsData _self;
  final $Res Function(WorkflowsData) _then;

/// Create a copy of WorkflowsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? totalWorkflows = null,Object? workflows = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,totalWorkflows: null == totalWorkflows ? _self.totalWorkflows : totalWorkflows // ignore: cast_nullable_to_non_nullable
as int,workflows: null == workflows ? _self.workflows : workflows // ignore: cast_nullable_to_non_nullable
as List<Workflow>,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkflowsData].
extension WorkflowsDataPatterns on WorkflowsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkflowsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkflowsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkflowsData value)  $default,){
final _that = this;
switch (_that) {
case _WorkflowsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkflowsData value)?  $default,){
final _that = this;
switch (_that) {
case _WorkflowsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'total_workflows')  int totalWorkflows,  List<Workflow> workflows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkflowsData() when $default != null:
return $default(_that.userId,_that.totalWorkflows,_that.workflows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'total_workflows')  int totalWorkflows,  List<Workflow> workflows)  $default,) {final _that = this;
switch (_that) {
case _WorkflowsData():
return $default(_that.userId,_that.totalWorkflows,_that.workflows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'total_workflows')  int totalWorkflows,  List<Workflow> workflows)?  $default,) {final _that = this;
switch (_that) {
case _WorkflowsData() when $default != null:
return $default(_that.userId,_that.totalWorkflows,_that.workflows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkflowsData implements WorkflowsData {
  const _WorkflowsData({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'total_workflows') required this.totalWorkflows, required final  List<Workflow> workflows}): _workflows = workflows;
  factory _WorkflowsData.fromJson(Map<String, dynamic> json) => _$WorkflowsDataFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'total_workflows') final  int totalWorkflows;
 final  List<Workflow> _workflows;
@override List<Workflow> get workflows {
  if (_workflows is EqualUnmodifiableListView) return _workflows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workflows);
}


/// Create a copy of WorkflowsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkflowsDataCopyWith<_WorkflowsData> get copyWith => __$WorkflowsDataCopyWithImpl<_WorkflowsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkflowsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkflowsData&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.totalWorkflows, totalWorkflows) || other.totalWorkflows == totalWorkflows)&&const DeepCollectionEquality().equals(other._workflows, _workflows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,totalWorkflows,const DeepCollectionEquality().hash(_workflows));

@override
String toString() {
  return 'WorkflowsData(userId: $userId, totalWorkflows: $totalWorkflows, workflows: $workflows)';
}


}

/// @nodoc
abstract mixin class _$WorkflowsDataCopyWith<$Res> implements $WorkflowsDataCopyWith<$Res> {
  factory _$WorkflowsDataCopyWith(_WorkflowsData value, $Res Function(_WorkflowsData) _then) = __$WorkflowsDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'total_workflows') int totalWorkflows, List<Workflow> workflows
});




}
/// @nodoc
class __$WorkflowsDataCopyWithImpl<$Res>
    implements _$WorkflowsDataCopyWith<$Res> {
  __$WorkflowsDataCopyWithImpl(this._self, this._then);

  final _WorkflowsData _self;
  final $Res Function(_WorkflowsData) _then;

/// Create a copy of WorkflowsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? totalWorkflows = null,Object? workflows = null,}) {
  return _then(_WorkflowsData(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,totalWorkflows: null == totalWorkflows ? _self.totalWorkflows : totalWorkflows // ignore: cast_nullable_to_non_nullable
as int,workflows: null == workflows ? _self._workflows : workflows // ignore: cast_nullable_to_non_nullable
as List<Workflow>,
  ));
}


}


/// @nodoc
mixin _$Workflow {

 String get name;@JsonKey(name: 'display_name') String get displayName; String get description; String get query; List<Parameter>? get parameters;
/// Create a copy of Workflow
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkflowCopyWith<Workflow> get copyWith => _$WorkflowCopyWithImpl<Workflow>(this as Workflow, _$identity);

  /// Serializes this Workflow to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Workflow&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.parameters, parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,displayName,description,query,const DeepCollectionEquality().hash(parameters));

@override
String toString() {
  return 'Workflow(name: $name, displayName: $displayName, description: $description, query: $query, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class $WorkflowCopyWith<$Res>  {
  factory $WorkflowCopyWith(Workflow value, $Res Function(Workflow) _then) = _$WorkflowCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'display_name') String displayName, String description, String query, List<Parameter>? parameters
});




}
/// @nodoc
class _$WorkflowCopyWithImpl<$Res>
    implements $WorkflowCopyWith<$Res> {
  _$WorkflowCopyWithImpl(this._self, this._then);

  final Workflow _self;
  final $Res Function(Workflow) _then;

/// Create a copy of Workflow
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? displayName = null,Object? description = null,Object? query = null,Object? parameters = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,parameters: freezed == parameters ? _self.parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Workflow].
extension WorkflowPatterns on Workflow {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Workflow value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Workflow() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Workflow value)  $default,){
final _that = this;
switch (_that) {
case _Workflow():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Workflow value)?  $default,){
final _that = this;
switch (_that) {
case _Workflow() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'display_name')  String displayName,  String description,  String query,  List<Parameter>? parameters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Workflow() when $default != null:
return $default(_that.name,_that.displayName,_that.description,_that.query,_that.parameters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'display_name')  String displayName,  String description,  String query,  List<Parameter>? parameters)  $default,) {final _that = this;
switch (_that) {
case _Workflow():
return $default(_that.name,_that.displayName,_that.description,_that.query,_that.parameters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'display_name')  String displayName,  String description,  String query,  List<Parameter>? parameters)?  $default,) {final _that = this;
switch (_that) {
case _Workflow() when $default != null:
return $default(_that.name,_that.displayName,_that.description,_that.query,_that.parameters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Workflow implements Workflow {
  const _Workflow({required this.name, @JsonKey(name: 'display_name') required this.displayName, required this.description, required this.query, final  List<Parameter>? parameters}): _parameters = parameters;
  factory _Workflow.fromJson(Map<String, dynamic> json) => _$WorkflowFromJson(json);

@override final  String name;
@override@JsonKey(name: 'display_name') final  String displayName;
@override final  String description;
@override final  String query;
 final  List<Parameter>? _parameters;
@override List<Parameter>? get parameters {
  final value = _parameters;
  if (value == null) return null;
  if (_parameters is EqualUnmodifiableListView) return _parameters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Workflow
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkflowCopyWith<_Workflow> get copyWith => __$WorkflowCopyWithImpl<_Workflow>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkflowToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Workflow&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.description, description) || other.description == description)&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._parameters, _parameters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,displayName,description,query,const DeepCollectionEquality().hash(_parameters));

@override
String toString() {
  return 'Workflow(name: $name, displayName: $displayName, description: $description, query: $query, parameters: $parameters)';
}


}

/// @nodoc
abstract mixin class _$WorkflowCopyWith<$Res> implements $WorkflowCopyWith<$Res> {
  factory _$WorkflowCopyWith(_Workflow value, $Res Function(_Workflow) _then) = __$WorkflowCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'display_name') String displayName, String description, String query, List<Parameter>? parameters
});




}
/// @nodoc
class __$WorkflowCopyWithImpl<$Res>
    implements _$WorkflowCopyWith<$Res> {
  __$WorkflowCopyWithImpl(this._self, this._then);

  final _Workflow _self;
  final $Res Function(_Workflow) _then;

/// Create a copy of Workflow
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? displayName = null,Object? description = null,Object? query = null,Object? parameters = freezed,}) {
  return _then(_Workflow(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,parameters: freezed == parameters ? _self._parameters : parameters // ignore: cast_nullable_to_non_nullable
as List<Parameter>?,
  ));
}


}


/// @nodoc
mixin _$Parameter {

 String get name;@JsonKey(name: 'required') bool get isRequired; String? get description;@JsonKey(name: 'default') dynamic get defaultValue;
/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParameterCopyWith<Parameter> get copyWith => _$ParameterCopyWithImpl<Parameter>(this as Parameter, _$identity);

  /// Serializes this Parameter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Parameter&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,isRequired,description,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'Parameter(name: $name, isRequired: $isRequired, description: $description, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class $ParameterCopyWith<$Res>  {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) _then) = _$ParameterCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'required') bool isRequired, String? description,@JsonKey(name: 'default') dynamic defaultValue
});




}
/// @nodoc
class _$ParameterCopyWithImpl<$Res>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._self, this._then);

  final Parameter _self;
  final $Res Function(Parameter) _then;

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? isRequired = null,Object? description = freezed,Object? defaultValue = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [Parameter].
extension ParameterPatterns on Parameter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Parameter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Parameter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Parameter value)  $default,){
final _that = this;
switch (_that) {
case _Parameter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Parameter value)?  $default,){
final _that = this;
switch (_that) {
case _Parameter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'required')  bool isRequired,  String? description, @JsonKey(name: 'default')  dynamic defaultValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Parameter() when $default != null:
return $default(_that.name,_that.isRequired,_that.description,_that.defaultValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'required')  bool isRequired,  String? description, @JsonKey(name: 'default')  dynamic defaultValue)  $default,) {final _that = this;
switch (_that) {
case _Parameter():
return $default(_that.name,_that.isRequired,_that.description,_that.defaultValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'required')  bool isRequired,  String? description, @JsonKey(name: 'default')  dynamic defaultValue)?  $default,) {final _that = this;
switch (_that) {
case _Parameter() when $default != null:
return $default(_that.name,_that.isRequired,_that.description,_that.defaultValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Parameter implements Parameter {
  const _Parameter({required this.name, @JsonKey(name: 'required') required this.isRequired, this.description, @JsonKey(name: 'default') this.defaultValue});
  factory _Parameter.fromJson(Map<String, dynamic> json) => _$ParameterFromJson(json);

@override final  String name;
@override@JsonKey(name: 'required') final  bool isRequired;
@override final  String? description;
@override@JsonKey(name: 'default') final  dynamic defaultValue;

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParameterCopyWith<_Parameter> get copyWith => __$ParameterCopyWithImpl<_Parameter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParameterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Parameter&&(identical(other.name, name) || other.name == name)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.defaultValue, defaultValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,isRequired,description,const DeepCollectionEquality().hash(defaultValue));

@override
String toString() {
  return 'Parameter(name: $name, isRequired: $isRequired, description: $description, defaultValue: $defaultValue)';
}


}

/// @nodoc
abstract mixin class _$ParameterCopyWith<$Res> implements $ParameterCopyWith<$Res> {
  factory _$ParameterCopyWith(_Parameter value, $Res Function(_Parameter) _then) = __$ParameterCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'required') bool isRequired, String? description,@JsonKey(name: 'default') dynamic defaultValue
});




}
/// @nodoc
class __$ParameterCopyWithImpl<$Res>
    implements _$ParameterCopyWith<$Res> {
  __$ParameterCopyWithImpl(this._self, this._then);

  final _Parameter _self;
  final $Res Function(_Parameter) _then;

/// Create a copy of Parameter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? isRequired = null,Object? description = freezed,Object? defaultValue = freezed,}) {
  return _then(_Parameter(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
