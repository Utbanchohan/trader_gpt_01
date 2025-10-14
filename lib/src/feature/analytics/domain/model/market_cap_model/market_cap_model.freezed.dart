// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_cap_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MarketCapResponse {

 List<MarketCapData>? get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of MarketCapResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCapResponseCopyWith<MarketCapResponse> get copyWith => _$MarketCapResponseCopyWithImpl<MarketCapResponse>(this as MarketCapResponse, _$identity);

  /// Serializes this MarketCapResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCapResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'MarketCapResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $MarketCapResponseCopyWith<$Res>  {
  factory $MarketCapResponseCopyWith(MarketCapResponse value, $Res Function(MarketCapResponse) _then) = _$MarketCapResponseCopyWithImpl;
@useResult
$Res call({
 List<MarketCapData>? data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class _$MarketCapResponseCopyWithImpl<$Res>
    implements $MarketCapResponseCopyWith<$Res> {
  _$MarketCapResponseCopyWithImpl(this._self, this._then);

  final MarketCapResponse _self;
  final $Res Function(MarketCapResponse) _then;

/// Create a copy of MarketCapResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MarketCapData>?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketCapResponse].
extension MarketCapResponsePatterns on MarketCapResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketCapResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCapResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketCapResponse value)  $default,){
final _that = this;
switch (_that) {
case _MarketCapResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketCapResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MarketCapResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MarketCapData>? data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCapResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MarketCapData>? data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _MarketCapResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MarketCapData>? data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _MarketCapResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketCapResponse implements MarketCapResponse {
  const _MarketCapResponse({required final  List<MarketCapData>? data, required this.msg, required this.status, required this.errors}): _data = data;
  factory _MarketCapResponse.fromJson(Map<String, dynamic> json) => _$MarketCapResponseFromJson(json);

 final  List<MarketCapData>? _data;
@override List<MarketCapData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of MarketCapResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCapResponseCopyWith<_MarketCapResponse> get copyWith => __$MarketCapResponseCopyWithImpl<_MarketCapResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketCapResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCapResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'MarketCapResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$MarketCapResponseCopyWith<$Res> implements $MarketCapResponseCopyWith<$Res> {
  factory _$MarketCapResponseCopyWith(_MarketCapResponse value, $Res Function(_MarketCapResponse) _then) = __$MarketCapResponseCopyWithImpl;
@override @useResult
$Res call({
 List<MarketCapData>? data, String? msg, int? status, dynamic errors
});




}
/// @nodoc
class __$MarketCapResponseCopyWithImpl<$Res>
    implements _$MarketCapResponseCopyWith<$Res> {
  __$MarketCapResponseCopyWithImpl(this._self, this._then);

  final _MarketCapResponse _self;
  final $Res Function(_MarketCapResponse) _then;

/// Create a copy of MarketCapResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_MarketCapResponse(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MarketCapData>?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$MarketCapData {

 String? get symbol;@JsonKey(name: 'market_cap') num? get marketCap; String? get date;@JsonKey(name: 'coin_gecko_id') String? get coinGeckoId;
/// Create a copy of MarketCapData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCapDataCopyWith<MarketCapData> get copyWith => _$MarketCapDataCopyWithImpl<MarketCapData>(this as MarketCapData, _$identity);

  /// Serializes this MarketCapData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCapData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.date, date) || other.date == date)&&(identical(other.coinGeckoId, coinGeckoId) || other.coinGeckoId == coinGeckoId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,marketCap,date,coinGeckoId);

@override
String toString() {
  return 'MarketCapData(symbol: $symbol, marketCap: $marketCap, date: $date, coinGeckoId: $coinGeckoId)';
}


}

/// @nodoc
abstract mixin class $MarketCapDataCopyWith<$Res>  {
  factory $MarketCapDataCopyWith(MarketCapData value, $Res Function(MarketCapData) _then) = _$MarketCapDataCopyWithImpl;
@useResult
$Res call({
 String? symbol,@JsonKey(name: 'market_cap') num? marketCap, String? date,@JsonKey(name: 'coin_gecko_id') String? coinGeckoId
});




}
/// @nodoc
class _$MarketCapDataCopyWithImpl<$Res>
    implements $MarketCapDataCopyWith<$Res> {
  _$MarketCapDataCopyWithImpl(this._self, this._then);

  final MarketCapData _self;
  final $Res Function(MarketCapData) _then;

/// Create a copy of MarketCapData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = freezed,Object? marketCap = freezed,Object? date = freezed,Object? coinGeckoId = freezed,}) {
  return _then(_self.copyWith(
symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as num?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,coinGeckoId: freezed == coinGeckoId ? _self.coinGeckoId : coinGeckoId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketCapData].
extension MarketCapDataPatterns on MarketCapData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketCapData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCapData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketCapData value)  $default,){
final _that = this;
switch (_that) {
case _MarketCapData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketCapData value)?  $default,){
final _that = this;
switch (_that) {
case _MarketCapData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? symbol, @JsonKey(name: 'market_cap')  num? marketCap,  String? date, @JsonKey(name: 'coin_gecko_id')  String? coinGeckoId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCapData() when $default != null:
return $default(_that.symbol,_that.marketCap,_that.date,_that.coinGeckoId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? symbol, @JsonKey(name: 'market_cap')  num? marketCap,  String? date, @JsonKey(name: 'coin_gecko_id')  String? coinGeckoId)  $default,) {final _that = this;
switch (_that) {
case _MarketCapData():
return $default(_that.symbol,_that.marketCap,_that.date,_that.coinGeckoId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? symbol, @JsonKey(name: 'market_cap')  num? marketCap,  String? date, @JsonKey(name: 'coin_gecko_id')  String? coinGeckoId)?  $default,) {final _that = this;
switch (_that) {
case _MarketCapData() when $default != null:
return $default(_that.symbol,_that.marketCap,_that.date,_that.coinGeckoId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketCapData implements MarketCapData {
  const _MarketCapData({required this.symbol, @JsonKey(name: 'market_cap') required this.marketCap, required this.date, @JsonKey(name: 'coin_gecko_id') required this.coinGeckoId});
  factory _MarketCapData.fromJson(Map<String, dynamic> json) => _$MarketCapDataFromJson(json);

@override final  String? symbol;
@override@JsonKey(name: 'market_cap') final  num? marketCap;
@override final  String? date;
@override@JsonKey(name: 'coin_gecko_id') final  String? coinGeckoId;

/// Create a copy of MarketCapData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCapDataCopyWith<_MarketCapData> get copyWith => __$MarketCapDataCopyWithImpl<_MarketCapData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketCapDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCapData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.date, date) || other.date == date)&&(identical(other.coinGeckoId, coinGeckoId) || other.coinGeckoId == coinGeckoId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,marketCap,date,coinGeckoId);

@override
String toString() {
  return 'MarketCapData(symbol: $symbol, marketCap: $marketCap, date: $date, coinGeckoId: $coinGeckoId)';
}


}

/// @nodoc
abstract mixin class _$MarketCapDataCopyWith<$Res> implements $MarketCapDataCopyWith<$Res> {
  factory _$MarketCapDataCopyWith(_MarketCapData value, $Res Function(_MarketCapData) _then) = __$MarketCapDataCopyWithImpl;
@override @useResult
$Res call({
 String? symbol,@JsonKey(name: 'market_cap') num? marketCap, String? date,@JsonKey(name: 'coin_gecko_id') String? coinGeckoId
});




}
/// @nodoc
class __$MarketCapDataCopyWithImpl<$Res>
    implements _$MarketCapDataCopyWith<$Res> {
  __$MarketCapDataCopyWithImpl(this._self, this._then);

  final _MarketCapData _self;
  final $Res Function(_MarketCapData) _then;

/// Create a copy of MarketCapData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = freezed,Object? marketCap = freezed,Object? date = freezed,Object? coinGeckoId = freezed,}) {
  return _then(_MarketCapData(
symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as num?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,coinGeckoId: freezed == coinGeckoId ? _self.coinGeckoId : coinGeckoId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
