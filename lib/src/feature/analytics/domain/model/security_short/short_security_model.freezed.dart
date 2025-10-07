// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_security_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShortSecurityResponse {

 int get status; String get msg; List<ShortSecurity>? get data; dynamic get errors;
/// Create a copy of ShortSecurityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortSecurityResponseCopyWith<ShortSecurityResponse> get copyWith => _$ShortSecurityResponseCopyWithImpl<ShortSecurityResponse>(this as ShortSecurityResponse, _$identity);

  /// Serializes this ShortSecurityResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortSecurityResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ShortSecurityResponse(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ShortSecurityResponseCopyWith<$Res>  {
  factory $ShortSecurityResponseCopyWith(ShortSecurityResponse value, $Res Function(ShortSecurityResponse) _then) = _$ShortSecurityResponseCopyWithImpl;
@useResult
$Res call({
 int status, String msg, List<ShortSecurity>? data, dynamic errors
});




}
/// @nodoc
class _$ShortSecurityResponseCopyWithImpl<$Res>
    implements $ShortSecurityResponseCopyWith<$Res> {
  _$ShortSecurityResponseCopyWithImpl(this._self, this._then);

  final ShortSecurityResponse _self;
  final $Res Function(ShortSecurityResponse) _then;

/// Create a copy of ShortSecurityResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ShortSecurity>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ShortSecurityResponse].
extension ShortSecurityResponsePatterns on ShortSecurityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortSecurityResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortSecurityResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortSecurityResponse value)  $default,){
final _that = this;
switch (_that) {
case _ShortSecurityResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortSecurityResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ShortSecurityResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  List<ShortSecurity>? data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortSecurityResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  List<ShortSecurity>? data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _ShortSecurityResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  List<ShortSecurity>? data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _ShortSecurityResponse() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortSecurityResponse implements ShortSecurityResponse {
  const _ShortSecurityResponse({required this.status, required this.msg, final  List<ShortSecurity>? data, this.errors}): _data = data;
  factory _ShortSecurityResponse.fromJson(Map<String, dynamic> json) => _$ShortSecurityResponseFromJson(json);

@override final  int status;
@override final  String msg;
 final  List<ShortSecurity>? _data;
@override List<ShortSecurity>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  dynamic errors;

/// Create a copy of ShortSecurityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortSecurityResponseCopyWith<_ShortSecurityResponse> get copyWith => __$ShortSecurityResponseCopyWithImpl<_ShortSecurityResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortSecurityResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortSecurityResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ShortSecurityResponse(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ShortSecurityResponseCopyWith<$Res> implements $ShortSecurityResponseCopyWith<$Res> {
  factory _$ShortSecurityResponseCopyWith(_ShortSecurityResponse value, $Res Function(_ShortSecurityResponse) _then) = __$ShortSecurityResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, List<ShortSecurity>? data, dynamic errors
});




}
/// @nodoc
class __$ShortSecurityResponseCopyWithImpl<$Res>
    implements _$ShortSecurityResponseCopyWith<$Res> {
  __$ShortSecurityResponseCopyWithImpl(this._self, this._then);

  final _ShortSecurityResponse _self;
  final $Res Function(_ShortSecurityResponse) _then;

/// Create a copy of ShortSecurityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_ShortSecurityResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ShortSecurity>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$ShortSecurity {

 String get marketDate; int get shortVolume; double get shortVolumeRatio; int get totalVolume;@JsonKey(name: 'stock_type') int get stockType;
/// Create a copy of ShortSecurity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortSecurityCopyWith<ShortSecurity> get copyWith => _$ShortSecurityCopyWithImpl<ShortSecurity>(this as ShortSecurity, _$identity);

  /// Serializes this ShortSecurity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortSecurity&&(identical(other.marketDate, marketDate) || other.marketDate == marketDate)&&(identical(other.shortVolume, shortVolume) || other.shortVolume == shortVolume)&&(identical(other.shortVolumeRatio, shortVolumeRatio) || other.shortVolumeRatio == shortVolumeRatio)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marketDate,shortVolume,shortVolumeRatio,totalVolume,stockType);

@override
String toString() {
  return 'ShortSecurity(marketDate: $marketDate, shortVolume: $shortVolume, shortVolumeRatio: $shortVolumeRatio, totalVolume: $totalVolume, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $ShortSecurityCopyWith<$Res>  {
  factory $ShortSecurityCopyWith(ShortSecurity value, $Res Function(ShortSecurity) _then) = _$ShortSecurityCopyWithImpl;
@useResult
$Res call({
 String marketDate, int shortVolume, double shortVolumeRatio, int totalVolume,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class _$ShortSecurityCopyWithImpl<$Res>
    implements $ShortSecurityCopyWith<$Res> {
  _$ShortSecurityCopyWithImpl(this._self, this._then);

  final ShortSecurity _self;
  final $Res Function(ShortSecurity) _then;

/// Create a copy of ShortSecurity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marketDate = null,Object? shortVolume = null,Object? shortVolumeRatio = null,Object? totalVolume = null,Object? stockType = null,}) {
  return _then(_self.copyWith(
marketDate: null == marketDate ? _self.marketDate : marketDate // ignore: cast_nullable_to_non_nullable
as String,shortVolume: null == shortVolume ? _self.shortVolume : shortVolume // ignore: cast_nullable_to_non_nullable
as int,shortVolumeRatio: null == shortVolumeRatio ? _self.shortVolumeRatio : shortVolumeRatio // ignore: cast_nullable_to_non_nullable
as double,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as int,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShortSecurity].
extension ShortSecurityPatterns on ShortSecurity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortSecurity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortSecurity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortSecurity value)  $default,){
final _that = this;
switch (_that) {
case _ShortSecurity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortSecurity value)?  $default,){
final _that = this;
switch (_that) {
case _ShortSecurity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String marketDate,  int shortVolume,  double shortVolumeRatio,  int totalVolume, @JsonKey(name: 'stock_type')  int stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortSecurity() when $default != null:
return $default(_that.marketDate,_that.shortVolume,_that.shortVolumeRatio,_that.totalVolume,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String marketDate,  int shortVolume,  double shortVolumeRatio,  int totalVolume, @JsonKey(name: 'stock_type')  int stockType)  $default,) {final _that = this;
switch (_that) {
case _ShortSecurity():
return $default(_that.marketDate,_that.shortVolume,_that.shortVolumeRatio,_that.totalVolume,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String marketDate,  int shortVolume,  double shortVolumeRatio,  int totalVolume, @JsonKey(name: 'stock_type')  int stockType)?  $default,) {final _that = this;
switch (_that) {
case _ShortSecurity() when $default != null:
return $default(_that.marketDate,_that.shortVolume,_that.shortVolumeRatio,_that.totalVolume,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortSecurity implements ShortSecurity {
  const _ShortSecurity({required this.marketDate, required this.shortVolume, required this.shortVolumeRatio, required this.totalVolume, @JsonKey(name: 'stock_type') required this.stockType});
  factory _ShortSecurity.fromJson(Map<String, dynamic> json) => _$ShortSecurityFromJson(json);

@override final  String marketDate;
@override final  int shortVolume;
@override final  double shortVolumeRatio;
@override final  int totalVolume;
@override@JsonKey(name: 'stock_type') final  int stockType;

/// Create a copy of ShortSecurity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortSecurityCopyWith<_ShortSecurity> get copyWith => __$ShortSecurityCopyWithImpl<_ShortSecurity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortSecurityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortSecurity&&(identical(other.marketDate, marketDate) || other.marketDate == marketDate)&&(identical(other.shortVolume, shortVolume) || other.shortVolume == shortVolume)&&(identical(other.shortVolumeRatio, shortVolumeRatio) || other.shortVolumeRatio == shortVolumeRatio)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marketDate,shortVolume,shortVolumeRatio,totalVolume,stockType);

@override
String toString() {
  return 'ShortSecurity(marketDate: $marketDate, shortVolume: $shortVolume, shortVolumeRatio: $shortVolumeRatio, totalVolume: $totalVolume, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$ShortSecurityCopyWith<$Res> implements $ShortSecurityCopyWith<$Res> {
  factory _$ShortSecurityCopyWith(_ShortSecurity value, $Res Function(_ShortSecurity) _then) = __$ShortSecurityCopyWithImpl;
@override @useResult
$Res call({
 String marketDate, int shortVolume, double shortVolumeRatio, int totalVolume,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class __$ShortSecurityCopyWithImpl<$Res>
    implements _$ShortSecurityCopyWith<$Res> {
  __$ShortSecurityCopyWithImpl(this._self, this._then);

  final _ShortSecurity _self;
  final $Res Function(_ShortSecurity) _then;

/// Create a copy of ShortSecurity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marketDate = null,Object? shortVolume = null,Object? shortVolumeRatio = null,Object? totalVolume = null,Object? stockType = null,}) {
  return _then(_ShortSecurity(
marketDate: null == marketDate ? _self.marketDate : marketDate // ignore: cast_nullable_to_non_nullable
as String,shortVolume: null == shortVolume ? _self.shortVolume : shortVolume // ignore: cast_nullable_to_non_nullable
as int,shortVolumeRatio: null == shortVolumeRatio ? _self.shortVolumeRatio : shortVolumeRatio // ignore: cast_nullable_to_non_nullable
as double,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as int,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
