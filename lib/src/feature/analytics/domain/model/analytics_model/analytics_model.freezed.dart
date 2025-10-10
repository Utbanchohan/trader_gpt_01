// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalystRatingResponse {

 List<AnalystRatingData> get data; String get msg; int get status; dynamic get errors;
/// Create a copy of AnalystRatingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalystRatingResponseCopyWith<AnalystRatingResponse> get copyWith => _$AnalystRatingResponseCopyWithImpl<AnalystRatingResponse>(this as AnalystRatingResponse, _$identity);

  /// Serializes this AnalystRatingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalystRatingResponse&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AnalystRatingResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $AnalystRatingResponseCopyWith<$Res>  {
  factory $AnalystRatingResponseCopyWith(AnalystRatingResponse value, $Res Function(AnalystRatingResponse) _then) = _$AnalystRatingResponseCopyWithImpl;
@useResult
$Res call({
 List<AnalystRatingData> data, String msg, int status, dynamic errors
});




}
/// @nodoc
class _$AnalystRatingResponseCopyWithImpl<$Res>
    implements $AnalystRatingResponseCopyWith<$Res> {
  _$AnalystRatingResponseCopyWithImpl(this._self, this._then);

  final AnalystRatingResponse _self;
  final $Res Function(AnalystRatingResponse) _then;

/// Create a copy of AnalystRatingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AnalystRatingData>,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalystRatingResponse].
extension AnalystRatingResponsePatterns on AnalystRatingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalystRatingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalystRatingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalystRatingResponse value)  $default,){
final _that = this;
switch (_that) {
case _AnalystRatingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalystRatingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AnalystRatingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AnalystRatingData> data,  String msg,  int status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalystRatingResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AnalystRatingData> data,  String msg,  int status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _AnalystRatingResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AnalystRatingData> data,  String msg,  int status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _AnalystRatingResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalystRatingResponse implements AnalystRatingResponse {
  const _AnalystRatingResponse({required final  List<AnalystRatingData> data, required this.msg, required this.status, this.errors}): _data = data;
  factory _AnalystRatingResponse.fromJson(Map<String, dynamic> json) => _$AnalystRatingResponseFromJson(json);

 final  List<AnalystRatingData> _data;
@override List<AnalystRatingData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String msg;
@override final  int status;
@override final  dynamic errors;

/// Create a copy of AnalystRatingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalystRatingResponseCopyWith<_AnalystRatingResponse> get copyWith => __$AnalystRatingResponseCopyWithImpl<_AnalystRatingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalystRatingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalystRatingResponse&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'AnalystRatingResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$AnalystRatingResponseCopyWith<$Res> implements $AnalystRatingResponseCopyWith<$Res> {
  factory _$AnalystRatingResponseCopyWith(_AnalystRatingResponse value, $Res Function(_AnalystRatingResponse) _then) = __$AnalystRatingResponseCopyWithImpl;
@override @useResult
$Res call({
 List<AnalystRatingData> data, String msg, int status, dynamic errors
});




}
/// @nodoc
class __$AnalystRatingResponseCopyWithImpl<$Res>
    implements _$AnalystRatingResponseCopyWith<$Res> {
  __$AnalystRatingResponseCopyWithImpl(this._self, this._then);

  final _AnalystRatingResponse _self;
  final $Res Function(_AnalystRatingResponse) _then;

/// Create a copy of AnalystRatingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = null,Object? status = null,Object? errors = freezed,}) {
  return _then(_AnalystRatingResponse(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AnalystRatingData>,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$AnalystRatingData {

 String get symbol; String get consensus;@JsonKey(name: 'analyst_count') int get analystCount;@JsonKey(name: 'strong_buy') int get strongBuy; int get buy; int get hold; int get sell;@JsonKey(name: 'strong_sell') int get strongSell;@JsonKey(name: 'last_updated_at') String get lastUpdatedAt;
/// Create a copy of AnalystRatingData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalystRatingDataCopyWith<AnalystRatingData> get copyWith => _$AnalystRatingDataCopyWithImpl<AnalystRatingData>(this as AnalystRatingData, _$identity);

  /// Serializes this AnalystRatingData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalystRatingData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.consensus, consensus) || other.consensus == consensus)&&(identical(other.analystCount, analystCount) || other.analystCount == analystCount)&&(identical(other.strongBuy, strongBuy) || other.strongBuy == strongBuy)&&(identical(other.buy, buy) || other.buy == buy)&&(identical(other.hold, hold) || other.hold == hold)&&(identical(other.sell, sell) || other.sell == sell)&&(identical(other.strongSell, strongSell) || other.strongSell == strongSell)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,consensus,analystCount,strongBuy,buy,hold,sell,strongSell,lastUpdatedAt);

@override
String toString() {
  return 'AnalystRatingData(symbol: $symbol, consensus: $consensus, analystCount: $analystCount, strongBuy: $strongBuy, buy: $buy, hold: $hold, sell: $sell, strongSell: $strongSell, lastUpdatedAt: $lastUpdatedAt)';
}


}

/// @nodoc
abstract mixin class $AnalystRatingDataCopyWith<$Res>  {
  factory $AnalystRatingDataCopyWith(AnalystRatingData value, $Res Function(AnalystRatingData) _then) = _$AnalystRatingDataCopyWithImpl;
@useResult
$Res call({
 String symbol, String consensus,@JsonKey(name: 'analyst_count') int analystCount,@JsonKey(name: 'strong_buy') int strongBuy, int buy, int hold, int sell,@JsonKey(name: 'strong_sell') int strongSell,@JsonKey(name: 'last_updated_at') String lastUpdatedAt
});




}
/// @nodoc
class _$AnalystRatingDataCopyWithImpl<$Res>
    implements $AnalystRatingDataCopyWith<$Res> {
  _$AnalystRatingDataCopyWithImpl(this._self, this._then);

  final AnalystRatingData _self;
  final $Res Function(AnalystRatingData) _then;

/// Create a copy of AnalystRatingData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? consensus = null,Object? analystCount = null,Object? strongBuy = null,Object? buy = null,Object? hold = null,Object? sell = null,Object? strongSell = null,Object? lastUpdatedAt = null,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,consensus: null == consensus ? _self.consensus : consensus // ignore: cast_nullable_to_non_nullable
as String,analystCount: null == analystCount ? _self.analystCount : analystCount // ignore: cast_nullable_to_non_nullable
as int,strongBuy: null == strongBuy ? _self.strongBuy : strongBuy // ignore: cast_nullable_to_non_nullable
as int,buy: null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as int,hold: null == hold ? _self.hold : hold // ignore: cast_nullable_to_non_nullable
as int,sell: null == sell ? _self.sell : sell // ignore: cast_nullable_to_non_nullable
as int,strongSell: null == strongSell ? _self.strongSell : strongSell // ignore: cast_nullable_to_non_nullable
as int,lastUpdatedAt: null == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalystRatingData].
extension AnalystRatingDataPatterns on AnalystRatingData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalystRatingData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalystRatingData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalystRatingData value)  $default,){
final _that = this;
switch (_that) {
case _AnalystRatingData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalystRatingData value)?  $default,){
final _that = this;
switch (_that) {
case _AnalystRatingData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol,  String consensus, @JsonKey(name: 'analyst_count')  int analystCount, @JsonKey(name: 'strong_buy')  int strongBuy,  int buy,  int hold,  int sell, @JsonKey(name: 'strong_sell')  int strongSell, @JsonKey(name: 'last_updated_at')  String lastUpdatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalystRatingData() when $default != null:
return $default(_that.symbol,_that.consensus,_that.analystCount,_that.strongBuy,_that.buy,_that.hold,_that.sell,_that.strongSell,_that.lastUpdatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol,  String consensus, @JsonKey(name: 'analyst_count')  int analystCount, @JsonKey(name: 'strong_buy')  int strongBuy,  int buy,  int hold,  int sell, @JsonKey(name: 'strong_sell')  int strongSell, @JsonKey(name: 'last_updated_at')  String lastUpdatedAt)  $default,) {final _that = this;
switch (_that) {
case _AnalystRatingData():
return $default(_that.symbol,_that.consensus,_that.analystCount,_that.strongBuy,_that.buy,_that.hold,_that.sell,_that.strongSell,_that.lastUpdatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol,  String consensus, @JsonKey(name: 'analyst_count')  int analystCount, @JsonKey(name: 'strong_buy')  int strongBuy,  int buy,  int hold,  int sell, @JsonKey(name: 'strong_sell')  int strongSell, @JsonKey(name: 'last_updated_at')  String lastUpdatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AnalystRatingData() when $default != null:
return $default(_that.symbol,_that.consensus,_that.analystCount,_that.strongBuy,_that.buy,_that.hold,_that.sell,_that.strongSell,_that.lastUpdatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalystRatingData implements AnalystRatingData {
  const _AnalystRatingData({required this.symbol, required this.consensus, @JsonKey(name: 'analyst_count') required this.analystCount, @JsonKey(name: 'strong_buy') required this.strongBuy, required this.buy, required this.hold, required this.sell, @JsonKey(name: 'strong_sell') required this.strongSell, @JsonKey(name: 'last_updated_at') required this.lastUpdatedAt});
  factory _AnalystRatingData.fromJson(Map<String, dynamic> json) => _$AnalystRatingDataFromJson(json);

@override final  String symbol;
@override final  String consensus;
@override@JsonKey(name: 'analyst_count') final  int analystCount;
@override@JsonKey(name: 'strong_buy') final  int strongBuy;
@override final  int buy;
@override final  int hold;
@override final  int sell;
@override@JsonKey(name: 'strong_sell') final  int strongSell;
@override@JsonKey(name: 'last_updated_at') final  String lastUpdatedAt;

/// Create a copy of AnalystRatingData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalystRatingDataCopyWith<_AnalystRatingData> get copyWith => __$AnalystRatingDataCopyWithImpl<_AnalystRatingData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalystRatingDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalystRatingData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.consensus, consensus) || other.consensus == consensus)&&(identical(other.analystCount, analystCount) || other.analystCount == analystCount)&&(identical(other.strongBuy, strongBuy) || other.strongBuy == strongBuy)&&(identical(other.buy, buy) || other.buy == buy)&&(identical(other.hold, hold) || other.hold == hold)&&(identical(other.sell, sell) || other.sell == sell)&&(identical(other.strongSell, strongSell) || other.strongSell == strongSell)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,consensus,analystCount,strongBuy,buy,hold,sell,strongSell,lastUpdatedAt);

@override
String toString() {
  return 'AnalystRatingData(symbol: $symbol, consensus: $consensus, analystCount: $analystCount, strongBuy: $strongBuy, buy: $buy, hold: $hold, sell: $sell, strongSell: $strongSell, lastUpdatedAt: $lastUpdatedAt)';
}


}

/// @nodoc
abstract mixin class _$AnalystRatingDataCopyWith<$Res> implements $AnalystRatingDataCopyWith<$Res> {
  factory _$AnalystRatingDataCopyWith(_AnalystRatingData value, $Res Function(_AnalystRatingData) _then) = __$AnalystRatingDataCopyWithImpl;
@override @useResult
$Res call({
 String symbol, String consensus,@JsonKey(name: 'analyst_count') int analystCount,@JsonKey(name: 'strong_buy') int strongBuy, int buy, int hold, int sell,@JsonKey(name: 'strong_sell') int strongSell,@JsonKey(name: 'last_updated_at') String lastUpdatedAt
});




}
/// @nodoc
class __$AnalystRatingDataCopyWithImpl<$Res>
    implements _$AnalystRatingDataCopyWith<$Res> {
  __$AnalystRatingDataCopyWithImpl(this._self, this._then);

  final _AnalystRatingData _self;
  final $Res Function(_AnalystRatingData) _then;

/// Create a copy of AnalystRatingData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? consensus = null,Object? analystCount = null,Object? strongBuy = null,Object? buy = null,Object? hold = null,Object? sell = null,Object? strongSell = null,Object? lastUpdatedAt = null,}) {
  return _then(_AnalystRatingData(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,consensus: null == consensus ? _self.consensus : consensus // ignore: cast_nullable_to_non_nullable
as String,analystCount: null == analystCount ? _self.analystCount : analystCount // ignore: cast_nullable_to_non_nullable
as int,strongBuy: null == strongBuy ? _self.strongBuy : strongBuy // ignore: cast_nullable_to_non_nullable
as int,buy: null == buy ? _self.buy : buy // ignore: cast_nullable_to_non_nullable
as int,hold: null == hold ? _self.hold : hold // ignore: cast_nullable_to_non_nullable
as int,sell: null == sell ? _self.sell : sell // ignore: cast_nullable_to_non_nullable
as int,strongSell: null == strongSell ? _self.strongSell : strongSell // ignore: cast_nullable_to_non_nullable
as int,lastUpdatedAt: null == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
