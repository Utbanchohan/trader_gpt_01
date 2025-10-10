// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earning_chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EarningChartModel {

 int get status; String get msg; List<EarningChartData> get data; dynamic get errors;
/// Create a copy of EarningChartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningChartModelCopyWith<EarningChartModel> get copyWith => _$EarningChartModelCopyWithImpl<EarningChartModel>(this as EarningChartModel, _$identity);

  /// Serializes this EarningChartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningChartModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EarningChartModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $EarningChartModelCopyWith<$Res>  {
  factory $EarningChartModelCopyWith(EarningChartModel value, $Res Function(EarningChartModel) _then) = _$EarningChartModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, List<EarningChartData> data, dynamic errors
});




}
/// @nodoc
class _$EarningChartModelCopyWithImpl<$Res>
    implements $EarningChartModelCopyWith<$Res> {
  _$EarningChartModelCopyWithImpl(this._self, this._then);

  final EarningChartModel _self;
  final $Res Function(EarningChartModel) _then;

/// Create a copy of EarningChartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<EarningChartData>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningChartModel].
extension EarningChartModelPatterns on EarningChartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningChartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningChartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningChartModel value)  $default,){
final _that = this;
switch (_that) {
case _EarningChartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningChartModel value)?  $default,){
final _that = this;
switch (_that) {
case _EarningChartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  List<EarningChartData> data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningChartModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  List<EarningChartData> data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _EarningChartModel():
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  List<EarningChartData> data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _EarningChartModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EarningChartModel implements EarningChartModel {
  const _EarningChartModel({required this.status, required this.msg, required final  List<EarningChartData> data, this.errors}): _data = data;
  factory _EarningChartModel.fromJson(Map<String, dynamic> json) => _$EarningChartModelFromJson(json);

@override final  int status;
@override final  String msg;
 final  List<EarningChartData> _data;
@override List<EarningChartData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  dynamic errors;

/// Create a copy of EarningChartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningChartModelCopyWith<_EarningChartModel> get copyWith => __$EarningChartModelCopyWithImpl<_EarningChartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EarningChartModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningChartModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'EarningChartModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$EarningChartModelCopyWith<$Res> implements $EarningChartModelCopyWith<$Res> {
  factory _$EarningChartModelCopyWith(_EarningChartModel value, $Res Function(_EarningChartModel) _then) = __$EarningChartModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, List<EarningChartData> data, dynamic errors
});




}
/// @nodoc
class __$EarningChartModelCopyWithImpl<$Res>
    implements _$EarningChartModelCopyWith<$Res> {
  __$EarningChartModelCopyWithImpl(this._self, this._then);

  final _EarningChartModel _self;
  final $Res Function(_EarningChartModel) _then;

/// Create a copy of EarningChartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = null,Object? errors = freezed,}) {
  return _then(_EarningChartModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<EarningChartData>,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$EarningChartData {

 List<String> get x;// ["Q4-2023", "beat"]
 List<double> get y;
/// Create a copy of EarningChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningChartDataCopyWith<EarningChartData> get copyWith => _$EarningChartDataCopyWithImpl<EarningChartData>(this as EarningChartData, _$identity);

  /// Serializes this EarningChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningChartData&&const DeepCollectionEquality().equals(other.x, x)&&const DeepCollectionEquality().equals(other.y, y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(x),const DeepCollectionEquality().hash(y));

@override
String toString() {
  return 'EarningChartData(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class $EarningChartDataCopyWith<$Res>  {
  factory $EarningChartDataCopyWith(EarningChartData value, $Res Function(EarningChartData) _then) = _$EarningChartDataCopyWithImpl;
@useResult
$Res call({
 List<String> x, List<double> y
});




}
/// @nodoc
class _$EarningChartDataCopyWithImpl<$Res>
    implements $EarningChartDataCopyWith<$Res> {
  _$EarningChartDataCopyWithImpl(this._self, this._then);

  final EarningChartData _self;
  final $Res Function(EarningChartData) _then;

/// Create a copy of EarningChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? x = null,Object? y = null,}) {
  return _then(_self.copyWith(
x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as List<String>,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningChartData].
extension EarningChartDataPatterns on EarningChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningChartData value)  $default,){
final _that = this;
switch (_that) {
case _EarningChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningChartData value)?  $default,){
final _that = this;
switch (_that) {
case _EarningChartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> x,  List<double> y)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningChartData() when $default != null:
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> x,  List<double> y)  $default,) {final _that = this;
switch (_that) {
case _EarningChartData():
return $default(_that.x,_that.y);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> x,  List<double> y)?  $default,) {final _that = this;
switch (_that) {
case _EarningChartData() when $default != null:
return $default(_that.x,_that.y);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EarningChartData implements EarningChartData {
  const _EarningChartData({required final  List<String> x, required final  List<double> y}): _x = x,_y = y;
  factory _EarningChartData.fromJson(Map<String, dynamic> json) => _$EarningChartDataFromJson(json);

 final  List<String> _x;
@override List<String> get x {
  if (_x is EqualUnmodifiableListView) return _x;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_x);
}

// ["Q4-2023", "beat"]
 final  List<double> _y;
// ["Q4-2023", "beat"]
@override List<double> get y {
  if (_y is EqualUnmodifiableListView) return _y;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_y);
}


/// Create a copy of EarningChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningChartDataCopyWith<_EarningChartData> get copyWith => __$EarningChartDataCopyWithImpl<_EarningChartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EarningChartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningChartData&&const DeepCollectionEquality().equals(other._x, _x)&&const DeepCollectionEquality().equals(other._y, _y));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_x),const DeepCollectionEquality().hash(_y));

@override
String toString() {
  return 'EarningChartData(x: $x, y: $y)';
}


}

/// @nodoc
abstract mixin class _$EarningChartDataCopyWith<$Res> implements $EarningChartDataCopyWith<$Res> {
  factory _$EarningChartDataCopyWith(_EarningChartData value, $Res Function(_EarningChartData) _then) = __$EarningChartDataCopyWithImpl;
@override @useResult
$Res call({
 List<String> x, List<double> y
});




}
/// @nodoc
class __$EarningChartDataCopyWithImpl<$Res>
    implements _$EarningChartDataCopyWith<$Res> {
  __$EarningChartDataCopyWithImpl(this._self, this._then);

  final _EarningChartData _self;
  final $Res Function(_EarningChartData) _then;

/// Create a copy of EarningChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? x = null,Object? y = null,}) {
  return _then(_EarningChartData(
x: null == x ? _self._x : x // ignore: cast_nullable_to_non_nullable
as List<String>,y: null == y ? _self._y : y // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
