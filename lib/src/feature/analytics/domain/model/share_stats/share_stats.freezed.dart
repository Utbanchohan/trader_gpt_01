// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SharesResponse {

 SharesData get data; String get msg; int get status; dynamic get errors;
/// Create a copy of SharesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharesResponseCopyWith<SharesResponse> get copyWith => _$SharesResponseCopyWithImpl<SharesResponse>(this as SharesResponse, _$identity);

  /// Serializes this SharesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharesResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SharesResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $SharesResponseCopyWith<$Res>  {
  factory $SharesResponseCopyWith(SharesResponse value, $Res Function(SharesResponse) _then) = _$SharesResponseCopyWithImpl;
@useResult
$Res call({
 SharesData data, String msg, int status, dynamic errors
});


$SharesDataCopyWith<$Res> get data;

}
/// @nodoc
class _$SharesResponseCopyWithImpl<$Res>
    implements $SharesResponseCopyWith<$Res> {
  _$SharesResponseCopyWithImpl(this._self, this._then);

  final SharesResponse _self;
  final $Res Function(SharesResponse) _then;

/// Create a copy of SharesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SharesData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of SharesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SharesDataCopyWith<$Res> get data {
  
  return $SharesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [SharesResponse].
extension SharesResponsePatterns on SharesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SharesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SharesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SharesResponse value)  $default,){
final _that = this;
switch (_that) {
case _SharesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SharesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SharesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SharesData data,  String msg,  int status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SharesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SharesData data,  String msg,  int status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _SharesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SharesData data,  String msg,  int status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _SharesResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SharesResponse implements SharesResponse {
  const _SharesResponse({required this.data, required this.msg, required this.status, this.errors});
  factory _SharesResponse.fromJson(Map<String, dynamic> json) => _$SharesResponseFromJson(json);

@override final  SharesData data;
@override final  String msg;
@override final  int status;
@override final  dynamic errors;

/// Create a copy of SharesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharesResponseCopyWith<_SharesResponse> get copyWith => __$SharesResponseCopyWithImpl<_SharesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SharesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharesResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'SharesResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$SharesResponseCopyWith<$Res> implements $SharesResponseCopyWith<$Res> {
  factory _$SharesResponseCopyWith(_SharesResponse value, $Res Function(_SharesResponse) _then) = __$SharesResponseCopyWithImpl;
@override @useResult
$Res call({
 SharesData data, String msg, int status, dynamic errors
});


@override $SharesDataCopyWith<$Res> get data;

}
/// @nodoc
class __$SharesResponseCopyWithImpl<$Res>
    implements _$SharesResponseCopyWith<$Res> {
  __$SharesResponseCopyWithImpl(this._self, this._then);

  final _SharesResponse _self;
  final $Res Function(_SharesResponse) _then;

/// Create a copy of SharesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_SharesResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as SharesData,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of SharesResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SharesDataCopyWith<$Res> get data {
  
  return $SharesDataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$SharesData {

 String? get SharesOutstanding; num? get SharesFloat; num? get PercentInsiders; num? get PercentInstitutions; String? get SharesShort; String? get SharesShortPriorMonth; String? get ShortRatio; String? get ShortPercentOutstanding; num? get ShortPercentFloat; int? get stock_type;
/// Create a copy of SharesData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SharesDataCopyWith<SharesData> get copyWith => _$SharesDataCopyWithImpl<SharesData>(this as SharesData, _$identity);

  /// Serializes this SharesData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SharesData&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.SharesFloat, SharesFloat) || other.SharesFloat == SharesFloat)&&(identical(other.PercentInsiders, PercentInsiders) || other.PercentInsiders == PercentInsiders)&&(identical(other.PercentInstitutions, PercentInstitutions) || other.PercentInstitutions == PercentInstitutions)&&(identical(other.SharesShort, SharesShort) || other.SharesShort == SharesShort)&&(identical(other.SharesShortPriorMonth, SharesShortPriorMonth) || other.SharesShortPriorMonth == SharesShortPriorMonth)&&(identical(other.ShortRatio, ShortRatio) || other.ShortRatio == ShortRatio)&&(identical(other.ShortPercentOutstanding, ShortPercentOutstanding) || other.ShortPercentOutstanding == ShortPercentOutstanding)&&(identical(other.ShortPercentFloat, ShortPercentFloat) || other.ShortPercentFloat == ShortPercentFloat)&&(identical(other.stock_type, stock_type) || other.stock_type == stock_type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,SharesOutstanding,SharesFloat,PercentInsiders,PercentInstitutions,SharesShort,SharesShortPriorMonth,ShortRatio,ShortPercentOutstanding,ShortPercentFloat,stock_type);

@override
String toString() {
  return 'SharesData(SharesOutstanding: $SharesOutstanding, SharesFloat: $SharesFloat, PercentInsiders: $PercentInsiders, PercentInstitutions: $PercentInstitutions, SharesShort: $SharesShort, SharesShortPriorMonth: $SharesShortPriorMonth, ShortRatio: $ShortRatio, ShortPercentOutstanding: $ShortPercentOutstanding, ShortPercentFloat: $ShortPercentFloat, stock_type: $stock_type)';
}


}

/// @nodoc
abstract mixin class $SharesDataCopyWith<$Res>  {
  factory $SharesDataCopyWith(SharesData value, $Res Function(SharesData) _then) = _$SharesDataCopyWithImpl;
@useResult
$Res call({
 String? SharesOutstanding, num? SharesFloat, num? PercentInsiders, num? PercentInstitutions, String? SharesShort, String? SharesShortPriorMonth, String? ShortRatio, String? ShortPercentOutstanding, num? ShortPercentFloat, int? stock_type
});




}
/// @nodoc
class _$SharesDataCopyWithImpl<$Res>
    implements $SharesDataCopyWith<$Res> {
  _$SharesDataCopyWithImpl(this._self, this._then);

  final SharesData _self;
  final $Res Function(SharesData) _then;

/// Create a copy of SharesData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? SharesOutstanding = freezed,Object? SharesFloat = freezed,Object? PercentInsiders = freezed,Object? PercentInstitutions = freezed,Object? SharesShort = freezed,Object? SharesShortPriorMonth = freezed,Object? ShortRatio = freezed,Object? ShortPercentOutstanding = freezed,Object? ShortPercentFloat = freezed,Object? stock_type = freezed,}) {
  return _then(_self.copyWith(
SharesOutstanding: freezed == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as String?,SharesFloat: freezed == SharesFloat ? _self.SharesFloat : SharesFloat // ignore: cast_nullable_to_non_nullable
as num?,PercentInsiders: freezed == PercentInsiders ? _self.PercentInsiders : PercentInsiders // ignore: cast_nullable_to_non_nullable
as num?,PercentInstitutions: freezed == PercentInstitutions ? _self.PercentInstitutions : PercentInstitutions // ignore: cast_nullable_to_non_nullable
as num?,SharesShort: freezed == SharesShort ? _self.SharesShort : SharesShort // ignore: cast_nullable_to_non_nullable
as String?,SharesShortPriorMonth: freezed == SharesShortPriorMonth ? _self.SharesShortPriorMonth : SharesShortPriorMonth // ignore: cast_nullable_to_non_nullable
as String?,ShortRatio: freezed == ShortRatio ? _self.ShortRatio : ShortRatio // ignore: cast_nullable_to_non_nullable
as String?,ShortPercentOutstanding: freezed == ShortPercentOutstanding ? _self.ShortPercentOutstanding : ShortPercentOutstanding // ignore: cast_nullable_to_non_nullable
as String?,ShortPercentFloat: freezed == ShortPercentFloat ? _self.ShortPercentFloat : ShortPercentFloat // ignore: cast_nullable_to_non_nullable
as num?,stock_type: freezed == stock_type ? _self.stock_type : stock_type // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SharesData].
extension SharesDataPatterns on SharesData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SharesData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SharesData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SharesData value)  $default,){
final _that = this;
switch (_that) {
case _SharesData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SharesData value)?  $default,){
final _that = this;
switch (_that) {
case _SharesData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? SharesOutstanding,  num? SharesFloat,  num? PercentInsiders,  num? PercentInstitutions,  String? SharesShort,  String? SharesShortPriorMonth,  String? ShortRatio,  String? ShortPercentOutstanding,  num? ShortPercentFloat,  int? stock_type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SharesData() when $default != null:
return $default(_that.SharesOutstanding,_that.SharesFloat,_that.PercentInsiders,_that.PercentInstitutions,_that.SharesShort,_that.SharesShortPriorMonth,_that.ShortRatio,_that.ShortPercentOutstanding,_that.ShortPercentFloat,_that.stock_type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? SharesOutstanding,  num? SharesFloat,  num? PercentInsiders,  num? PercentInstitutions,  String? SharesShort,  String? SharesShortPriorMonth,  String? ShortRatio,  String? ShortPercentOutstanding,  num? ShortPercentFloat,  int? stock_type)  $default,) {final _that = this;
switch (_that) {
case _SharesData():
return $default(_that.SharesOutstanding,_that.SharesFloat,_that.PercentInsiders,_that.PercentInstitutions,_that.SharesShort,_that.SharesShortPriorMonth,_that.ShortRatio,_that.ShortPercentOutstanding,_that.ShortPercentFloat,_that.stock_type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? SharesOutstanding,  num? SharesFloat,  num? PercentInsiders,  num? PercentInstitutions,  String? SharesShort,  String? SharesShortPriorMonth,  String? ShortRatio,  String? ShortPercentOutstanding,  num? ShortPercentFloat,  int? stock_type)?  $default,) {final _that = this;
switch (_that) {
case _SharesData() when $default != null:
return $default(_that.SharesOutstanding,_that.SharesFloat,_that.PercentInsiders,_that.PercentInstitutions,_that.SharesShort,_that.SharesShortPriorMonth,_that.ShortRatio,_that.ShortPercentOutstanding,_that.ShortPercentFloat,_that.stock_type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SharesData implements SharesData {
  const _SharesData({this.SharesOutstanding, this.SharesFloat, this.PercentInsiders, this.PercentInstitutions, this.SharesShort, this.SharesShortPriorMonth, this.ShortRatio, this.ShortPercentOutstanding, this.ShortPercentFloat, this.stock_type});
  factory _SharesData.fromJson(Map<String, dynamic> json) => _$SharesDataFromJson(json);

@override final  String? SharesOutstanding;
@override final  num? SharesFloat;
@override final  num? PercentInsiders;
@override final  num? PercentInstitutions;
@override final  String? SharesShort;
@override final  String? SharesShortPriorMonth;
@override final  String? ShortRatio;
@override final  String? ShortPercentOutstanding;
@override final  num? ShortPercentFloat;
@override final  int? stock_type;

/// Create a copy of SharesData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharesDataCopyWith<_SharesData> get copyWith => __$SharesDataCopyWithImpl<_SharesData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SharesDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SharesData&&(identical(other.SharesOutstanding, SharesOutstanding) || other.SharesOutstanding == SharesOutstanding)&&(identical(other.SharesFloat, SharesFloat) || other.SharesFloat == SharesFloat)&&(identical(other.PercentInsiders, PercentInsiders) || other.PercentInsiders == PercentInsiders)&&(identical(other.PercentInstitutions, PercentInstitutions) || other.PercentInstitutions == PercentInstitutions)&&(identical(other.SharesShort, SharesShort) || other.SharesShort == SharesShort)&&(identical(other.SharesShortPriorMonth, SharesShortPriorMonth) || other.SharesShortPriorMonth == SharesShortPriorMonth)&&(identical(other.ShortRatio, ShortRatio) || other.ShortRatio == ShortRatio)&&(identical(other.ShortPercentOutstanding, ShortPercentOutstanding) || other.ShortPercentOutstanding == ShortPercentOutstanding)&&(identical(other.ShortPercentFloat, ShortPercentFloat) || other.ShortPercentFloat == ShortPercentFloat)&&(identical(other.stock_type, stock_type) || other.stock_type == stock_type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,SharesOutstanding,SharesFloat,PercentInsiders,PercentInstitutions,SharesShort,SharesShortPriorMonth,ShortRatio,ShortPercentOutstanding,ShortPercentFloat,stock_type);

@override
String toString() {
  return 'SharesData(SharesOutstanding: $SharesOutstanding, SharesFloat: $SharesFloat, PercentInsiders: $PercentInsiders, PercentInstitutions: $PercentInstitutions, SharesShort: $SharesShort, SharesShortPriorMonth: $SharesShortPriorMonth, ShortRatio: $ShortRatio, ShortPercentOutstanding: $ShortPercentOutstanding, ShortPercentFloat: $ShortPercentFloat, stock_type: $stock_type)';
}


}

/// @nodoc
abstract mixin class _$SharesDataCopyWith<$Res> implements $SharesDataCopyWith<$Res> {
  factory _$SharesDataCopyWith(_SharesData value, $Res Function(_SharesData) _then) = __$SharesDataCopyWithImpl;
@override @useResult
$Res call({
 String? SharesOutstanding, num? SharesFloat, num? PercentInsiders, num? PercentInstitutions, String? SharesShort, String? SharesShortPriorMonth, String? ShortRatio, String? ShortPercentOutstanding, num? ShortPercentFloat, int? stock_type
});




}
/// @nodoc
class __$SharesDataCopyWithImpl<$Res>
    implements _$SharesDataCopyWith<$Res> {
  __$SharesDataCopyWithImpl(this._self, this._then);

  final _SharesData _self;
  final $Res Function(_SharesData) _then;

/// Create a copy of SharesData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? SharesOutstanding = freezed,Object? SharesFloat = freezed,Object? PercentInsiders = freezed,Object? PercentInstitutions = freezed,Object? SharesShort = freezed,Object? SharesShortPriorMonth = freezed,Object? ShortRatio = freezed,Object? ShortPercentOutstanding = freezed,Object? ShortPercentFloat = freezed,Object? stock_type = freezed,}) {
  return _then(_SharesData(
SharesOutstanding: freezed == SharesOutstanding ? _self.SharesOutstanding : SharesOutstanding // ignore: cast_nullable_to_non_nullable
as String?,SharesFloat: freezed == SharesFloat ? _self.SharesFloat : SharesFloat // ignore: cast_nullable_to_non_nullable
as num?,PercentInsiders: freezed == PercentInsiders ? _self.PercentInsiders : PercentInsiders // ignore: cast_nullable_to_non_nullable
as num?,PercentInstitutions: freezed == PercentInstitutions ? _self.PercentInstitutions : PercentInstitutions // ignore: cast_nullable_to_non_nullable
as num?,SharesShort: freezed == SharesShort ? _self.SharesShort : SharesShort // ignore: cast_nullable_to_non_nullable
as String?,SharesShortPriorMonth: freezed == SharesShortPriorMonth ? _self.SharesShortPriorMonth : SharesShortPriorMonth // ignore: cast_nullable_to_non_nullable
as String?,ShortRatio: freezed == ShortRatio ? _self.ShortRatio : ShortRatio // ignore: cast_nullable_to_non_nullable
as String?,ShortPercentOutstanding: freezed == ShortPercentOutstanding ? _self.ShortPercentOutstanding : ShortPercentOutstanding // ignore: cast_nullable_to_non_nullable
as String?,ShortPercentFloat: freezed == ShortPercentFloat ? _self.ShortPercentFloat : ShortPercentFloat // ignore: cast_nullable_to_non_nullable
as num?,stock_type: freezed == stock_type ? _self.stock_type : stock_type // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
