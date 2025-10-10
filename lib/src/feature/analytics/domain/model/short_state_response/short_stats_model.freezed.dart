// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShortStatsResponse {

 int get status; String get msg; ShortStatsData? get data; dynamic get errors;
/// Create a copy of ShortStatsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortStatsResponseCopyWith<ShortStatsResponse> get copyWith => _$ShortStatsResponseCopyWithImpl<ShortStatsResponse>(this as ShortStatsResponse, _$identity);

  /// Serializes this ShortStatsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortStatsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ShortStatsResponse(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ShortStatsResponseCopyWith<$Res>  {
  factory $ShortStatsResponseCopyWith(ShortStatsResponse value, $Res Function(ShortStatsResponse) _then) = _$ShortStatsResponseCopyWithImpl;
@useResult
$Res call({
 int status, String msg, ShortStatsData? data, dynamic errors
});


$ShortStatsDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ShortStatsResponseCopyWithImpl<$Res>
    implements $ShortStatsResponseCopyWith<$Res> {
  _$ShortStatsResponseCopyWithImpl(this._self, this._then);

  final ShortStatsResponse _self;
  final $Res Function(ShortStatsResponse) _then;

/// Create a copy of ShortStatsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShortStatsData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of ShortStatsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShortStatsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ShortStatsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShortStatsResponse].
extension ShortStatsResponsePatterns on ShortStatsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortStatsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortStatsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortStatsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ShortStatsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortStatsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ShortStatsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  ShortStatsData? data,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortStatsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  ShortStatsData? data,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _ShortStatsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  ShortStatsData? data,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _ShortStatsResponse() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortStatsResponse implements ShortStatsResponse {
  const _ShortStatsResponse({required this.status, required this.msg, this.data, this.errors});
  factory _ShortStatsResponse.fromJson(Map<String, dynamic> json) => _$ShortStatsResponseFromJson(json);

@override final  int status;
@override final  String msg;
@override final  ShortStatsData? data;
@override final  dynamic errors;

/// Create a copy of ShortStatsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortStatsResponseCopyWith<_ShortStatsResponse> get copyWith => __$ShortStatsResponseCopyWithImpl<_ShortStatsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortStatsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortStatsResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ShortStatsResponse(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ShortStatsResponseCopyWith<$Res> implements $ShortStatsResponseCopyWith<$Res> {
  factory _$ShortStatsResponseCopyWith(_ShortStatsResponse value, $Res Function(_ShortStatsResponse) _then) = __$ShortStatsResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, ShortStatsData? data, dynamic errors
});


@override $ShortStatsDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ShortStatsResponseCopyWithImpl<$Res>
    implements _$ShortStatsResponseCopyWith<$Res> {
  __$ShortStatsResponseCopyWithImpl(this._self, this._then);

  final _ShortStatsResponse _self;
  final $Res Function(_ShortStatsResponse) _then;

/// Create a copy of ShortStatsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_ShortStatsResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShortStatsData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of ShortStatsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShortStatsDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ShortStatsDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ShortStatsData {

 int get SharesOutstanding; int get SharesFloat; double get PercentInsiders; double get PercentInstitutions; double? get SharesShort; double? get SharesShortPriorMonth; double? get ShortRatio; double? get ShortPercentOutstanding; double? get ShortPercentFloat;@JsonKey(name: 'stock_type') int get stockType;
/// Create a copy of ShortStatsData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortStatsDataCopyWith<ShortStatsData> get copyWith => _$ShortStatsDataCopyWithImpl<ShortStatsData>(this as ShortStatsData, _$identity);

  /// Serializes this ShortStatsData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortStatsData&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.SharesFloat, SharesFloat) || other.SharesFloat == SharesFloat)&&(identical(other.PercentInsiders, PercentInsiders) || other.PercentInsiders == PercentInsiders)&&(identical(other.PercentInstitutions, PercentInstitutions) || other.PercentInstitutions == PercentInstitutions)&&(identical(other.SharesShort, SharesShort) || other.SharesShort == SharesShort)&&(identical(other.SharesShortPriorMonth, SharesShortPriorMonth) || other.SharesShortPriorMonth == SharesShortPriorMonth)&&(identical(other.ShortRatio, ShortRatio) || other.ShortRatio == ShortRatio)&&(identical(other.ShortPercentOutstanding, ShortPercentOutstanding) || other.ShortPercentOutstanding == ShortPercentOutstanding)&&(identical(other.ShortPercentFloat, ShortPercentFloat) || other.ShortPercentFloat == ShortPercentFloat)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,SharesOutstanding,SharesFloat,PercentInsiders,PercentInstitutions,SharesShort,SharesShortPriorMonth,ShortRatio,ShortPercentOutstanding,ShortPercentFloat,stockType);

@override
String toString() {
  return 'ShortStatsData(SharesOutstanding: $SharesOutstanding, SharesFloat: $SharesFloat, PercentInsiders: $PercentInsiders, PercentInstitutions: $PercentInstitutions, SharesShort: $SharesShort, SharesShortPriorMonth: $SharesShortPriorMonth, ShortRatio: $ShortRatio, ShortPercentOutstanding: $ShortPercentOutstanding, ShortPercentFloat: $ShortPercentFloat, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class $ShortStatsDataCopyWith<$Res>  {
  factory $ShortStatsDataCopyWith(ShortStatsData value, $Res Function(ShortStatsData) _then) = _$ShortStatsDataCopyWithImpl;
@useResult
$Res call({
 int SharesOutstanding, int SharesFloat, double PercentInsiders, double PercentInstitutions, double? SharesShort, double? SharesShortPriorMonth, double? ShortRatio, double? ShortPercentOutstanding, double? ShortPercentFloat,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class _$ShortStatsDataCopyWithImpl<$Res>
    implements $ShortStatsDataCopyWith<$Res> {
  _$ShortStatsDataCopyWithImpl(this._self, this._then);

  final ShortStatsData _self;
  final $Res Function(ShortStatsData) _then;

/// Create a copy of ShortStatsData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? SharesOutstanding = null,Object? SharesFloat = null,Object? PercentInsiders = null,Object? PercentInstitutions = null,Object? SharesShort = freezed,Object? SharesShortPriorMonth = freezed,Object? ShortRatio = freezed,Object? ShortPercentOutstanding = freezed,Object? ShortPercentFloat = freezed,Object? stockType = null,}) {
  return _then(_self.copyWith(
SharesOutstanding: null == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as int,SharesFloat: null == SharesFloat ? _self.SharesFloat : SharesFloat // ignore: cast_nullable_to_non_nullable
as int,PercentInsiders: null == PercentInsiders ? _self.PercentInsiders : PercentInsiders // ignore: cast_nullable_to_non_nullable
as double,PercentInstitutions: null == PercentInstitutions ? _self.PercentInstitutions : PercentInstitutions // ignore: cast_nullable_to_non_nullable
as double,SharesShort: freezed == SharesShort ? _self.SharesShort : SharesShort // ignore: cast_nullable_to_non_nullable
as double?,SharesShortPriorMonth: freezed == SharesShortPriorMonth ? _self.SharesShortPriorMonth : SharesShortPriorMonth // ignore: cast_nullable_to_non_nullable
as double?,ShortRatio: freezed == ShortRatio ? _self.ShortRatio : ShortRatio // ignore: cast_nullable_to_non_nullable
as double?,ShortPercentOutstanding: freezed == ShortPercentOutstanding ? _self.ShortPercentOutstanding : ShortPercentOutstanding // ignore: cast_nullable_to_non_nullable
as double?,ShortPercentFloat: freezed == ShortPercentFloat ? _self.ShortPercentFloat : ShortPercentFloat // ignore: cast_nullable_to_non_nullable
as double?,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ShortStatsData].
extension ShortStatsDataPatterns on ShortStatsData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortStatsData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortStatsData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortStatsData value)  $default,){
final _that = this;
switch (_that) {
case _ShortStatsData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortStatsData value)?  $default,){
final _that = this;
switch (_that) {
case _ShortStatsData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int SharesOutstanding,  int SharesFloat,  double PercentInsiders,  double PercentInstitutions,  double? SharesShort,  double? SharesShortPriorMonth,  double? ShortRatio,  double? ShortPercentOutstanding,  double? ShortPercentFloat, @JsonKey(name: 'stock_type')  int stockType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortStatsData() when $default != null:
return $default(_that.SharesOutstanding,_that.SharesFloat,_that.PercentInsiders,_that.PercentInstitutions,_that.SharesShort,_that.SharesShortPriorMonth,_that.ShortRatio,_that.ShortPercentOutstanding,_that.ShortPercentFloat,_that.stockType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int SharesOutstanding,  int SharesFloat,  double PercentInsiders,  double PercentInstitutions,  double? SharesShort,  double? SharesShortPriorMonth,  double? ShortRatio,  double? ShortPercentOutstanding,  double? ShortPercentFloat, @JsonKey(name: 'stock_type')  int stockType)  $default,) {final _that = this;
switch (_that) {
case _ShortStatsData():
return $default(_that.SharesOutstanding,_that.SharesFloat,_that.PercentInsiders,_that.PercentInstitutions,_that.SharesShort,_that.SharesShortPriorMonth,_that.ShortRatio,_that.ShortPercentOutstanding,_that.ShortPercentFloat,_that.stockType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int SharesOutstanding,  int SharesFloat,  double PercentInsiders,  double PercentInstitutions,  double? SharesShort,  double? SharesShortPriorMonth,  double? ShortRatio,  double? ShortPercentOutstanding,  double? ShortPercentFloat, @JsonKey(name: 'stock_type')  int stockType)?  $default,) {final _that = this;
switch (_that) {
case _ShortStatsData() when $default != null:
return $default(_that.SharesOutstanding,_that.SharesFloat,_that.PercentInsiders,_that.PercentInstitutions,_that.SharesShort,_that.SharesShortPriorMonth,_that.ShortRatio,_that.ShortPercentOutstanding,_that.ShortPercentFloat,_that.stockType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortStatsData implements ShortStatsData {
  const _ShortStatsData({required this.SharesOutstanding, required this.SharesFloat, required this.PercentInsiders, required this.PercentInstitutions, this.SharesShort, this.SharesShortPriorMonth, this.ShortRatio, this.ShortPercentOutstanding, this.ShortPercentFloat, @JsonKey(name: 'stock_type') required this.stockType});
  factory _ShortStatsData.fromJson(Map<String, dynamic> json) => _$ShortStatsDataFromJson(json);

@override final  int SharesOutstanding;
@override final  int SharesFloat;
@override final  double PercentInsiders;
@override final  double PercentInstitutions;
@override final  double? SharesShort;
@override final  double? SharesShortPriorMonth;
@override final  double? ShortRatio;
@override final  double? ShortPercentOutstanding;
@override final  double? ShortPercentFloat;
@override@JsonKey(name: 'stock_type') final  int stockType;

/// Create a copy of ShortStatsData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortStatsDataCopyWith<_ShortStatsData> get copyWith => __$ShortStatsDataCopyWithImpl<_ShortStatsData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortStatsDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortStatsData&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.SharesFloat, SharesFloat) || other.SharesFloat == SharesFloat)&&(identical(other.PercentInsiders, PercentInsiders) || other.PercentInsiders == PercentInsiders)&&(identical(other.PercentInstitutions, PercentInstitutions) || other.PercentInstitutions == PercentInstitutions)&&(identical(other.SharesShort, SharesShort) || other.SharesShort == SharesShort)&&(identical(other.SharesShortPriorMonth, SharesShortPriorMonth) || other.SharesShortPriorMonth == SharesShortPriorMonth)&&(identical(other.ShortRatio, ShortRatio) || other.ShortRatio == ShortRatio)&&(identical(other.ShortPercentOutstanding, ShortPercentOutstanding) || other.ShortPercentOutstanding == ShortPercentOutstanding)&&(identical(other.ShortPercentFloat, ShortPercentFloat) || other.ShortPercentFloat == ShortPercentFloat)&&(identical(other.stockType, stockType) || other.stockType == stockType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,SharesOutstanding,SharesFloat,PercentInsiders,PercentInstitutions,SharesShort,SharesShortPriorMonth,ShortRatio,ShortPercentOutstanding,ShortPercentFloat,stockType);

@override
String toString() {
  return 'ShortStatsData(SharesOutstanding: $SharesOutstanding, SharesFloat: $SharesFloat, PercentInsiders: $PercentInsiders, PercentInstitutions: $PercentInstitutions, SharesShort: $SharesShort, SharesShortPriorMonth: $SharesShortPriorMonth, ShortRatio: $ShortRatio, ShortPercentOutstanding: $ShortPercentOutstanding, ShortPercentFloat: $ShortPercentFloat, stockType: $stockType)';
}


}

/// @nodoc
abstract mixin class _$ShortStatsDataCopyWith<$Res> implements $ShortStatsDataCopyWith<$Res> {
  factory _$ShortStatsDataCopyWith(_ShortStatsData value, $Res Function(_ShortStatsData) _then) = __$ShortStatsDataCopyWithImpl;
@override @useResult
$Res call({
 int SharesOutstanding, int SharesFloat, double PercentInsiders, double PercentInstitutions, double? SharesShort, double? SharesShortPriorMonth, double? ShortRatio, double? ShortPercentOutstanding, double? ShortPercentFloat,@JsonKey(name: 'stock_type') int stockType
});




}
/// @nodoc
class __$ShortStatsDataCopyWithImpl<$Res>
    implements _$ShortStatsDataCopyWith<$Res> {
  __$ShortStatsDataCopyWithImpl(this._self, this._then);

  final _ShortStatsData _self;
  final $Res Function(_ShortStatsData) _then;

/// Create a copy of ShortStatsData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? SharesOutstanding = null,Object? SharesFloat = null,Object? PercentInsiders = null,Object? PercentInstitutions = null,Object? SharesShort = freezed,Object? SharesShortPriorMonth = freezed,Object? ShortRatio = freezed,Object? ShortPercentOutstanding = freezed,Object? ShortPercentFloat = freezed,Object? stockType = null,}) {
  return _then(_ShortStatsData(
SharesOutstanding: null == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as int,SharesFloat: null == SharesFloat ? _self.SharesFloat : SharesFloat // ignore: cast_nullable_to_non_nullable
as int,PercentInsiders: null == PercentInsiders ? _self.PercentInsiders : PercentInsiders // ignore: cast_nullable_to_non_nullable
as double,PercentInstitutions: null == PercentInstitutions ? _self.PercentInstitutions : PercentInstitutions // ignore: cast_nullable_to_non_nullable
as double,SharesShort: freezed == SharesShort ? _self.SharesShort : SharesShort // ignore: cast_nullable_to_non_nullable
as double?,SharesShortPriorMonth: freezed == SharesShortPriorMonth ? _self.SharesShortPriorMonth : SharesShortPriorMonth // ignore: cast_nullable_to_non_nullable
as double?,ShortRatio: freezed == ShortRatio ? _self.ShortRatio : ShortRatio // ignore: cast_nullable_to_non_nullable
as double?,ShortPercentOutstanding: freezed == ShortPercentOutstanding ? _self.ShortPercentOutstanding : ShortPercentOutstanding // ignore: cast_nullable_to_non_nullable
as double?,ShortPercentFloat: freezed == ShortPercentFloat ? _self.ShortPercentFloat : ShortPercentFloat // ignore: cast_nullable_to_non_nullable
as double?,stockType: null == stockType ? _self.stockType : stockType // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
