// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlight_model_crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HighlightResponse {

 List<HighlightData>? get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of HighlightResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighlightResponseCopyWith<HighlightResponse> get copyWith => _$HighlightResponseCopyWithImpl<HighlightResponse>(this as HighlightResponse, _$identity);

  /// Serializes this HighlightResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighlightResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HighlightResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $HighlightResponseCopyWith<$Res>  {
  factory $HighlightResponseCopyWith(HighlightResponse value, $Res Function(HighlightResponse) _then) = _$HighlightResponseCopyWithImpl;
@useResult
$Res call({
 List<HighlightData>? data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class _$HighlightResponseCopyWithImpl<$Res>
    implements $HighlightResponseCopyWith<$Res> {
  _$HighlightResponseCopyWithImpl(this._self, this._then);

  final HighlightResponse _self;
  final $Res Function(HighlightResponse) _then;

/// Create a copy of HighlightResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<HighlightData>?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [HighlightResponse].
extension HighlightResponsePatterns on HighlightResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HighlightResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HighlightResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HighlightResponse value)  $default,){
final _that = this;
switch (_that) {
case _HighlightResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HighlightResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HighlightResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HighlightData>? data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HighlightResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HighlightData>? data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _HighlightResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HighlightData>? data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _HighlightResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HighlightResponse implements HighlightResponse {
  const _HighlightResponse({required final  List<HighlightData>? data, required this.msg, required this.status, required this.errors}): _data = data;
  factory _HighlightResponse.fromJson(Map<String, dynamic> json) => _$HighlightResponseFromJson(json);

 final  List<HighlightData>? _data;
@override List<HighlightData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of HighlightResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighlightResponseCopyWith<_HighlightResponse> get copyWith => __$HighlightResponseCopyWithImpl<_HighlightResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HighlightResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighlightResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HighlightResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$HighlightResponseCopyWith<$Res> implements $HighlightResponseCopyWith<$Res> {
  factory _$HighlightResponseCopyWith(_HighlightResponse value, $Res Function(_HighlightResponse) _then) = __$HighlightResponseCopyWithImpl;
@override @useResult
$Res call({
 List<HighlightData>? data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class __$HighlightResponseCopyWithImpl<$Res>
    implements _$HighlightResponseCopyWith<$Res> {
  __$HighlightResponseCopyWithImpl(this._self, this._then);

  final _HighlightResponse _self;
  final $Res Function(_HighlightResponse) _then;

/// Create a copy of HighlightResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_HighlightResponse(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<HighlightData>?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$HighlightData {

 num? get volume;@JsonKey(name: 'circulating_supply') num? get circulatingSupply;@JsonKey(name: 'total_supply') num? get totalSupply;@JsonKey(name: 'market_cap_fdv_ratio') num? get marketCapFdvRatio;@JsonKey(name: 'max_supply') num? get maxSupply;@JsonKey(name: 'previous_close_price') num? get previousClosePrice;@JsonKey(name: 'market_captilization') num? get marketCapitalization;@JsonKey(name: 'diluted_market_cap') num? get dilutedMarketCap;
/// Create a copy of HighlightData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HighlightDataCopyWith<HighlightData> get copyWith => _$HighlightDataCopyWithImpl<HighlightData>(this as HighlightData, _$identity);

  /// Serializes this HighlightData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HighlightData&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.circulatingSupply, circulatingSupply) || other.circulatingSupply == circulatingSupply)&&(identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply)&&(identical(other.marketCapFdvRatio, marketCapFdvRatio) || other.marketCapFdvRatio == marketCapFdvRatio)&&(identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply)&&(identical(other.previousClosePrice, previousClosePrice) || other.previousClosePrice == previousClosePrice)&&(identical(other.marketCapitalization, marketCapitalization) || other.marketCapitalization == marketCapitalization)&&(identical(other.dilutedMarketCap, dilutedMarketCap) || other.dilutedMarketCap == dilutedMarketCap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,volume,circulatingSupply,totalSupply,marketCapFdvRatio,maxSupply,previousClosePrice,marketCapitalization,dilutedMarketCap);

@override
String toString() {
  return 'HighlightData(volume: $volume, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, marketCapFdvRatio: $marketCapFdvRatio, maxSupply: $maxSupply, previousClosePrice: $previousClosePrice, marketCapitalization: $marketCapitalization, dilutedMarketCap: $dilutedMarketCap)';
}


}

/// @nodoc
abstract mixin class $HighlightDataCopyWith<$Res>  {
  factory $HighlightDataCopyWith(HighlightData value, $Res Function(HighlightData) _then) = _$HighlightDataCopyWithImpl;
@useResult
$Res call({
 num? volume,@JsonKey(name: 'circulating_supply') num? circulatingSupply,@JsonKey(name: 'total_supply') num? totalSupply,@JsonKey(name: 'market_cap_fdv_ratio') num? marketCapFdvRatio,@JsonKey(name: 'max_supply') num? maxSupply,@JsonKey(name: 'previous_close_price') num? previousClosePrice,@JsonKey(name: 'market_captilization') num? marketCapitalization,@JsonKey(name: 'diluted_market_cap') num? dilutedMarketCap
});




}
/// @nodoc
class _$HighlightDataCopyWithImpl<$Res>
    implements $HighlightDataCopyWith<$Res> {
  _$HighlightDataCopyWithImpl(this._self, this._then);

  final HighlightData _self;
  final $Res Function(HighlightData) _then;

/// Create a copy of HighlightData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volume = freezed,Object? circulatingSupply = freezed,Object? totalSupply = freezed,Object? marketCapFdvRatio = freezed,Object? maxSupply = freezed,Object? previousClosePrice = freezed,Object? marketCapitalization = freezed,Object? dilutedMarketCap = freezed,}) {
  return _then(_self.copyWith(
volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num?,circulatingSupply: freezed == circulatingSupply ? _self.circulatingSupply : circulatingSupply // ignore: cast_nullable_to_non_nullable
as num?,totalSupply: freezed == totalSupply ? _self.totalSupply : totalSupply // ignore: cast_nullable_to_non_nullable
as num?,marketCapFdvRatio: freezed == marketCapFdvRatio ? _self.marketCapFdvRatio : marketCapFdvRatio // ignore: cast_nullable_to_non_nullable
as num?,maxSupply: freezed == maxSupply ? _self.maxSupply : maxSupply // ignore: cast_nullable_to_non_nullable
as num?,previousClosePrice: freezed == previousClosePrice ? _self.previousClosePrice : previousClosePrice // ignore: cast_nullable_to_non_nullable
as num?,marketCapitalization: freezed == marketCapitalization ? _self.marketCapitalization : marketCapitalization // ignore: cast_nullable_to_non_nullable
as num?,dilutedMarketCap: freezed == dilutedMarketCap ? _self.dilutedMarketCap : dilutedMarketCap // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [HighlightData].
extension HighlightDataPatterns on HighlightData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HighlightData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HighlightData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HighlightData value)  $default,){
final _that = this;
switch (_that) {
case _HighlightData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HighlightData value)?  $default,){
final _that = this;
switch (_that) {
case _HighlightData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num? volume, @JsonKey(name: 'circulating_supply')  num? circulatingSupply, @JsonKey(name: 'total_supply')  num? totalSupply, @JsonKey(name: 'market_cap_fdv_ratio')  num? marketCapFdvRatio, @JsonKey(name: 'max_supply')  num? maxSupply, @JsonKey(name: 'previous_close_price')  num? previousClosePrice, @JsonKey(name: 'market_captilization')  num? marketCapitalization, @JsonKey(name: 'diluted_market_cap')  num? dilutedMarketCap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HighlightData() when $default != null:
return $default(_that.volume,_that.circulatingSupply,_that.totalSupply,_that.marketCapFdvRatio,_that.maxSupply,_that.previousClosePrice,_that.marketCapitalization,_that.dilutedMarketCap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num? volume, @JsonKey(name: 'circulating_supply')  num? circulatingSupply, @JsonKey(name: 'total_supply')  num? totalSupply, @JsonKey(name: 'market_cap_fdv_ratio')  num? marketCapFdvRatio, @JsonKey(name: 'max_supply')  num? maxSupply, @JsonKey(name: 'previous_close_price')  num? previousClosePrice, @JsonKey(name: 'market_captilization')  num? marketCapitalization, @JsonKey(name: 'diluted_market_cap')  num? dilutedMarketCap)  $default,) {final _that = this;
switch (_that) {
case _HighlightData():
return $default(_that.volume,_that.circulatingSupply,_that.totalSupply,_that.marketCapFdvRatio,_that.maxSupply,_that.previousClosePrice,_that.marketCapitalization,_that.dilutedMarketCap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num? volume, @JsonKey(name: 'circulating_supply')  num? circulatingSupply, @JsonKey(name: 'total_supply')  num? totalSupply, @JsonKey(name: 'market_cap_fdv_ratio')  num? marketCapFdvRatio, @JsonKey(name: 'max_supply')  num? maxSupply, @JsonKey(name: 'previous_close_price')  num? previousClosePrice, @JsonKey(name: 'market_captilization')  num? marketCapitalization, @JsonKey(name: 'diluted_market_cap')  num? dilutedMarketCap)?  $default,) {final _that = this;
switch (_that) {
case _HighlightData() when $default != null:
return $default(_that.volume,_that.circulatingSupply,_that.totalSupply,_that.marketCapFdvRatio,_that.maxSupply,_that.previousClosePrice,_that.marketCapitalization,_that.dilutedMarketCap);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HighlightData implements HighlightData {
  const _HighlightData({this.volume, @JsonKey(name: 'circulating_supply') this.circulatingSupply, @JsonKey(name: 'total_supply') this.totalSupply, @JsonKey(name: 'market_cap_fdv_ratio') this.marketCapFdvRatio, @JsonKey(name: 'max_supply') this.maxSupply, @JsonKey(name: 'previous_close_price') this.previousClosePrice, @JsonKey(name: 'market_captilization') this.marketCapitalization, @JsonKey(name: 'diluted_market_cap') this.dilutedMarketCap});
  factory _HighlightData.fromJson(Map<String, dynamic> json) => _$HighlightDataFromJson(json);

@override final  num? volume;
@override@JsonKey(name: 'circulating_supply') final  num? circulatingSupply;
@override@JsonKey(name: 'total_supply') final  num? totalSupply;
@override@JsonKey(name: 'market_cap_fdv_ratio') final  num? marketCapFdvRatio;
@override@JsonKey(name: 'max_supply') final  num? maxSupply;
@override@JsonKey(name: 'previous_close_price') final  num? previousClosePrice;
@override@JsonKey(name: 'market_captilization') final  num? marketCapitalization;
@override@JsonKey(name: 'diluted_market_cap') final  num? dilutedMarketCap;

/// Create a copy of HighlightData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HighlightDataCopyWith<_HighlightData> get copyWith => __$HighlightDataCopyWithImpl<_HighlightData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HighlightDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HighlightData&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.circulatingSupply, circulatingSupply) || other.circulatingSupply == circulatingSupply)&&(identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply)&&(identical(other.marketCapFdvRatio, marketCapFdvRatio) || other.marketCapFdvRatio == marketCapFdvRatio)&&(identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply)&&(identical(other.previousClosePrice, previousClosePrice) || other.previousClosePrice == previousClosePrice)&&(identical(other.marketCapitalization, marketCapitalization) || other.marketCapitalization == marketCapitalization)&&(identical(other.dilutedMarketCap, dilutedMarketCap) || other.dilutedMarketCap == dilutedMarketCap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,volume,circulatingSupply,totalSupply,marketCapFdvRatio,maxSupply,previousClosePrice,marketCapitalization,dilutedMarketCap);

@override
String toString() {
  return 'HighlightData(volume: $volume, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, marketCapFdvRatio: $marketCapFdvRatio, maxSupply: $maxSupply, previousClosePrice: $previousClosePrice, marketCapitalization: $marketCapitalization, dilutedMarketCap: $dilutedMarketCap)';
}


}

/// @nodoc
abstract mixin class _$HighlightDataCopyWith<$Res> implements $HighlightDataCopyWith<$Res> {
  factory _$HighlightDataCopyWith(_HighlightData value, $Res Function(_HighlightData) _then) = __$HighlightDataCopyWithImpl;
@override @useResult
$Res call({
 num? volume,@JsonKey(name: 'circulating_supply') num? circulatingSupply,@JsonKey(name: 'total_supply') num? totalSupply,@JsonKey(name: 'market_cap_fdv_ratio') num? marketCapFdvRatio,@JsonKey(name: 'max_supply') num? maxSupply,@JsonKey(name: 'previous_close_price') num? previousClosePrice,@JsonKey(name: 'market_captilization') num? marketCapitalization,@JsonKey(name: 'diluted_market_cap') num? dilutedMarketCap
});




}
/// @nodoc
class __$HighlightDataCopyWithImpl<$Res>
    implements _$HighlightDataCopyWith<$Res> {
  __$HighlightDataCopyWithImpl(this._self, this._then);

  final _HighlightData _self;
  final $Res Function(_HighlightData) _then;

/// Create a copy of HighlightData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volume = freezed,Object? circulatingSupply = freezed,Object? totalSupply = freezed,Object? marketCapFdvRatio = freezed,Object? maxSupply = freezed,Object? previousClosePrice = freezed,Object? marketCapitalization = freezed,Object? dilutedMarketCap = freezed,}) {
  return _then(_HighlightData(
volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as num?,circulatingSupply: freezed == circulatingSupply ? _self.circulatingSupply : circulatingSupply // ignore: cast_nullable_to_non_nullable
as num?,totalSupply: freezed == totalSupply ? _self.totalSupply : totalSupply // ignore: cast_nullable_to_non_nullable
as num?,marketCapFdvRatio: freezed == marketCapFdvRatio ? _self.marketCapFdvRatio : marketCapFdvRatio // ignore: cast_nullable_to_non_nullable
as num?,maxSupply: freezed == maxSupply ? _self.maxSupply : maxSupply // ignore: cast_nullable_to_non_nullable
as num?,previousClosePrice: freezed == previousClosePrice ? _self.previousClosePrice : previousClosePrice // ignore: cast_nullable_to_non_nullable
as num?,marketCapitalization: freezed == marketCapitalization ? _self.marketCapitalization : marketCapitalization // ignore: cast_nullable_to_non_nullable
as num?,dilutedMarketCap: freezed == dilutedMarketCap ? _self.dilutedMarketCap : dilutedMarketCap // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
