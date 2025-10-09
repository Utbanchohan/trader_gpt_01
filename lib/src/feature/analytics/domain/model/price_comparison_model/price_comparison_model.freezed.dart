// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_comparison_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceComparisonModel {

 PriceComparisonData get data; String get msg; int get status; dynamic get errors;
/// Create a copy of PriceComparisonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceComparisonModelCopyWith<PriceComparisonModel> get copyWith => _$PriceComparisonModelCopyWithImpl<PriceComparisonModel>(this as PriceComparisonModel, _$identity);

  /// Serializes this PriceComparisonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceComparisonModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PriceComparisonModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $PriceComparisonModelCopyWith<$Res>  {
  factory $PriceComparisonModelCopyWith(PriceComparisonModel value, $Res Function(PriceComparisonModel) _then) = _$PriceComparisonModelCopyWithImpl;
@useResult
$Res call({
 PriceComparisonData data, String msg, int status, dynamic errors
});


$PriceComparisonDataCopyWith<$Res> get data;

}
/// @nodoc
class _$PriceComparisonModelCopyWithImpl<$Res>
    implements $PriceComparisonModelCopyWith<$Res> {
  _$PriceComparisonModelCopyWithImpl(this._self, this._then);

  final PriceComparisonModel _self;
  final $Res Function(PriceComparisonModel) _then;

/// Create a copy of PriceComparisonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PriceComparisonData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PriceComparisonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceComparisonDataCopyWith<$Res> get data {
  
  return $PriceComparisonDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceComparisonModel].
extension PriceComparisonModelPatterns on PriceComparisonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceComparisonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceComparisonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceComparisonModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceComparisonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceComparisonModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceComparisonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PriceComparisonData data,  String msg,  int status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceComparisonModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PriceComparisonData data,  String msg,  int status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _PriceComparisonModel():
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PriceComparisonData data,  String msg,  int status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _PriceComparisonModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceComparisonModel implements PriceComparisonModel {
  const _PriceComparisonModel({required this.data, required this.msg, required this.status, this.errors});
  factory _PriceComparisonModel.fromJson(Map<String, dynamic> json) => _$PriceComparisonModelFromJson(json);

@override final  PriceComparisonData data;
@override final  String msg;
@override final  int status;
@override final  dynamic errors;

/// Create a copy of PriceComparisonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceComparisonModelCopyWith<_PriceComparisonModel> get copyWith => __$PriceComparisonModelCopyWithImpl<_PriceComparisonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceComparisonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceComparisonModel&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'PriceComparisonModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$PriceComparisonModelCopyWith<$Res> implements $PriceComparisonModelCopyWith<$Res> {
  factory _$PriceComparisonModelCopyWith(_PriceComparisonModel value, $Res Function(_PriceComparisonModel) _then) = __$PriceComparisonModelCopyWithImpl;
@override @useResult
$Res call({
 PriceComparisonData data, String msg, int status, dynamic errors
});


@override $PriceComparisonDataCopyWith<$Res> get data;

}
/// @nodoc
class __$PriceComparisonModelCopyWithImpl<$Res>
    implements _$PriceComparisonModelCopyWith<$Res> {
  __$PriceComparisonModelCopyWithImpl(this._self, this._then);

  final _PriceComparisonModel _self;
  final $Res Function(_PriceComparisonModel) _then;

/// Create a copy of PriceComparisonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_PriceComparisonModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PriceComparisonData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PriceComparisonModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceComparisonDataCopyWith<$Res> get data {
  
  return $PriceComparisonDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$PriceComparisonData {

@_DynamicSymbolsConverter() Map<String, Map<String, double>> get data;
/// Create a copy of PriceComparisonData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceComparisonDataCopyWith<PriceComparisonData> get copyWith => _$PriceComparisonDataCopyWithImpl<PriceComparisonData>(this as PriceComparisonData, _$identity);

  /// Serializes this PriceComparisonData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceComparisonData&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PriceComparisonData(data: $data)';
}


}

/// @nodoc
abstract mixin class $PriceComparisonDataCopyWith<$Res>  {
  factory $PriceComparisonDataCopyWith(PriceComparisonData value, $Res Function(PriceComparisonData) _then) = _$PriceComparisonDataCopyWithImpl;
@useResult
$Res call({
@_DynamicSymbolsConverter() Map<String, Map<String, double>> data
});




}
/// @nodoc
class _$PriceComparisonDataCopyWithImpl<$Res>
    implements $PriceComparisonDataCopyWith<$Res> {
  _$PriceComparisonDataCopyWithImpl(this._self, this._then);

  final PriceComparisonData _self;
  final $Res Function(PriceComparisonData) _then;

/// Create a copy of PriceComparisonData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, double>>,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceComparisonData].
extension PriceComparisonDataPatterns on PriceComparisonData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceComparisonData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceComparisonData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceComparisonData value)  $default,){
final _that = this;
switch (_that) {
case _PriceComparisonData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceComparisonData value)?  $default,){
final _that = this;
switch (_that) {
case _PriceComparisonData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@_DynamicSymbolsConverter()  Map<String, Map<String, double>> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceComparisonData() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@_DynamicSymbolsConverter()  Map<String, Map<String, double>> data)  $default,) {final _that = this;
switch (_that) {
case _PriceComparisonData():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@_DynamicSymbolsConverter()  Map<String, Map<String, double>> data)?  $default,) {final _that = this;
switch (_that) {
case _PriceComparisonData() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceComparisonData implements PriceComparisonData {
  const _PriceComparisonData({@_DynamicSymbolsConverter() required final  Map<String, Map<String, double>> data}): _data = data;
  factory _PriceComparisonData.fromJson(Map<String, dynamic> json) => _$PriceComparisonDataFromJson(json);

 final  Map<String, Map<String, double>> _data;
@override@_DynamicSymbolsConverter() Map<String, Map<String, double>> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of PriceComparisonData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceComparisonDataCopyWith<_PriceComparisonData> get copyWith => __$PriceComparisonDataCopyWithImpl<_PriceComparisonData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceComparisonDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceComparisonData&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PriceComparisonData(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PriceComparisonDataCopyWith<$Res> implements $PriceComparisonDataCopyWith<$Res> {
  factory _$PriceComparisonDataCopyWith(_PriceComparisonData value, $Res Function(_PriceComparisonData) _then) = __$PriceComparisonDataCopyWithImpl;
@override @useResult
$Res call({
@_DynamicSymbolsConverter() Map<String, Map<String, double>> data
});




}
/// @nodoc
class __$PriceComparisonDataCopyWithImpl<$Res>
    implements _$PriceComparisonDataCopyWith<$Res> {
  __$PriceComparisonDataCopyWithImpl(this._self, this._then);

  final _PriceComparisonData _self;
  final $Res Function(_PriceComparisonData) _then;

/// Create a copy of PriceComparisonData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PriceComparisonData(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, double>>,
  ));
}


}

// dart format on
