// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CryptoMarketModel {

 List<ExchangeData> get data; String? get msg; int? get status; String? get errors;
/// Create a copy of CryptoMarketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CryptoMarketModelCopyWith<CryptoMarketModel> get copyWith => _$CryptoMarketModelCopyWithImpl<CryptoMarketModel>(this as CryptoMarketModel, _$identity);

  /// Serializes this CryptoMarketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CryptoMarketModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status,errors);

@override
String toString() {
  return 'CryptoMarketModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $CryptoMarketModelCopyWith<$Res>  {
  factory $CryptoMarketModelCopyWith(CryptoMarketModel value, $Res Function(CryptoMarketModel) _then) = _$CryptoMarketModelCopyWithImpl;
@useResult
$Res call({
 List<ExchangeData> data, String? msg, int? status, String? errors
});




}
/// @nodoc
class _$CryptoMarketModelCopyWithImpl<$Res>
    implements $CryptoMarketModelCopyWith<$Res> {
  _$CryptoMarketModelCopyWithImpl(this._self, this._then);

  final CryptoMarketModel _self;
  final $Res Function(CryptoMarketModel) _then;

/// Create a copy of CryptoMarketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ExchangeData>,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CryptoMarketModel].
extension CryptoMarketModelPatterns on CryptoMarketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CryptoMarketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CryptoMarketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CryptoMarketModel value)  $default,){
final _that = this;
switch (_that) {
case _CryptoMarketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CryptoMarketModel value)?  $default,){
final _that = this;
switch (_that) {
case _CryptoMarketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExchangeData> data,  String? msg,  int? status,  String? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CryptoMarketModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExchangeData> data,  String? msg,  int? status,  String? errors)  $default,) {final _that = this;
switch (_that) {
case _CryptoMarketModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExchangeData> data,  String? msg,  int? status,  String? errors)?  $default,) {final _that = this;
switch (_that) {
case _CryptoMarketModel() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CryptoMarketModel implements CryptoMarketModel {
  const _CryptoMarketModel({required final  List<ExchangeData> data, this.msg, this.status, this.errors}): _data = data;
  factory _CryptoMarketModel.fromJson(Map<String, dynamic> json) => _$CryptoMarketModelFromJson(json);

 final  List<ExchangeData> _data;
@override List<ExchangeData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? msg;
@override final  int? status;
@override final  String? errors;

/// Create a copy of CryptoMarketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CryptoMarketModelCopyWith<_CryptoMarketModel> get copyWith => __$CryptoMarketModelCopyWithImpl<_CryptoMarketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CryptoMarketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CryptoMarketModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&(identical(other.errors, errors) || other.errors == errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status,errors);

@override
String toString() {
  return 'CryptoMarketModel(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$CryptoMarketModelCopyWith<$Res> implements $CryptoMarketModelCopyWith<$Res> {
  factory _$CryptoMarketModelCopyWith(_CryptoMarketModel value, $Res Function(_CryptoMarketModel) _then) = __$CryptoMarketModelCopyWithImpl;
@override @useResult
$Res call({
 List<ExchangeData> data, String? msg, int? status, String? errors
});




}
/// @nodoc
class __$CryptoMarketModelCopyWithImpl<$Res>
    implements _$CryptoMarketModelCopyWith<$Res> {
  __$CryptoMarketModelCopyWithImpl(this._self, this._then);

  final _CryptoMarketModel _self;
  final $Res Function(_CryptoMarketModel) _then;

/// Create a copy of CryptoMarketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_CryptoMarketModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ExchangeData>,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ExchangeData {

 String get exchange; String get pair; double get price; double get spread;@JsonKey(name: 'volume_24hrs') dynamic get volume24hrs;@JsonKey(name: 'last_updated_at') String? get lastUpdatedAt;@JsonKey(name: 'trust_score') String? get trustScore;@JsonKey(name: 'pos_two_percent_depth') String? get posTwoPercentDepth;@JsonKey(name: 'neg_two_percent_depth') String? get negTwoPercentDepth;
/// Create a copy of ExchangeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExchangeDataCopyWith<ExchangeData> get copyWith => _$ExchangeDataCopyWithImpl<ExchangeData>(this as ExchangeData, _$identity);

  /// Serializes this ExchangeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExchangeData&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.pair, pair) || other.pair == pair)&&(identical(other.price, price) || other.price == price)&&(identical(other.spread, spread) || other.spread == spread)&&const DeepCollectionEquality().equals(other.volume24hrs, volume24hrs)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.trustScore, trustScore) || other.trustScore == trustScore)&&(identical(other.posTwoPercentDepth, posTwoPercentDepth) || other.posTwoPercentDepth == posTwoPercentDepth)&&(identical(other.negTwoPercentDepth, negTwoPercentDepth) || other.negTwoPercentDepth == negTwoPercentDepth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exchange,pair,price,spread,const DeepCollectionEquality().hash(volume24hrs),lastUpdatedAt,trustScore,posTwoPercentDepth,negTwoPercentDepth);

@override
String toString() {
  return 'ExchangeData(exchange: $exchange, pair: $pair, price: $price, spread: $spread, volume24hrs: $volume24hrs, lastUpdatedAt: $lastUpdatedAt, trustScore: $trustScore, posTwoPercentDepth: $posTwoPercentDepth, negTwoPercentDepth: $negTwoPercentDepth)';
}


}

/// @nodoc
abstract mixin class $ExchangeDataCopyWith<$Res>  {
  factory $ExchangeDataCopyWith(ExchangeData value, $Res Function(ExchangeData) _then) = _$ExchangeDataCopyWithImpl;
@useResult
$Res call({
 String exchange, String pair, double price, double spread,@JsonKey(name: 'volume_24hrs') dynamic volume24hrs,@JsonKey(name: 'last_updated_at') String? lastUpdatedAt,@JsonKey(name: 'trust_score') String? trustScore,@JsonKey(name: 'pos_two_percent_depth') String? posTwoPercentDepth,@JsonKey(name: 'neg_two_percent_depth') String? negTwoPercentDepth
});




}
/// @nodoc
class _$ExchangeDataCopyWithImpl<$Res>
    implements $ExchangeDataCopyWith<$Res> {
  _$ExchangeDataCopyWithImpl(this._self, this._then);

  final ExchangeData _self;
  final $Res Function(ExchangeData) _then;

/// Create a copy of ExchangeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exchange = null,Object? pair = null,Object? price = null,Object? spread = null,Object? volume24hrs = freezed,Object? lastUpdatedAt = freezed,Object? trustScore = freezed,Object? posTwoPercentDepth = freezed,Object? negTwoPercentDepth = freezed,}) {
  return _then(_self.copyWith(
exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,pair: null == pair ? _self.pair : pair // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,spread: null == spread ? _self.spread : spread // ignore: cast_nullable_to_non_nullable
as double,volume24hrs: freezed == volume24hrs ? _self.volume24hrs : volume24hrs // ignore: cast_nullable_to_non_nullable
as dynamic,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String?,trustScore: freezed == trustScore ? _self.trustScore : trustScore // ignore: cast_nullable_to_non_nullable
as String?,posTwoPercentDepth: freezed == posTwoPercentDepth ? _self.posTwoPercentDepth : posTwoPercentDepth // ignore: cast_nullable_to_non_nullable
as String?,negTwoPercentDepth: freezed == negTwoPercentDepth ? _self.negTwoPercentDepth : negTwoPercentDepth // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExchangeData].
extension ExchangeDataPatterns on ExchangeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExchangeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExchangeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExchangeData value)  $default,){
final _that = this;
switch (_that) {
case _ExchangeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExchangeData value)?  $default,){
final _that = this;
switch (_that) {
case _ExchangeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String exchange,  String pair,  double price,  double spread, @JsonKey(name: 'volume_24hrs')  dynamic volume24hrs, @JsonKey(name: 'last_updated_at')  String? lastUpdatedAt, @JsonKey(name: 'trust_score')  String? trustScore, @JsonKey(name: 'pos_two_percent_depth')  String? posTwoPercentDepth, @JsonKey(name: 'neg_two_percent_depth')  String? negTwoPercentDepth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExchangeData() when $default != null:
return $default(_that.exchange,_that.pair,_that.price,_that.spread,_that.volume24hrs,_that.lastUpdatedAt,_that.trustScore,_that.posTwoPercentDepth,_that.negTwoPercentDepth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String exchange,  String pair,  double price,  double spread, @JsonKey(name: 'volume_24hrs')  dynamic volume24hrs, @JsonKey(name: 'last_updated_at')  String? lastUpdatedAt, @JsonKey(name: 'trust_score')  String? trustScore, @JsonKey(name: 'pos_two_percent_depth')  String? posTwoPercentDepth, @JsonKey(name: 'neg_two_percent_depth')  String? negTwoPercentDepth)  $default,) {final _that = this;
switch (_that) {
case _ExchangeData():
return $default(_that.exchange,_that.pair,_that.price,_that.spread,_that.volume24hrs,_that.lastUpdatedAt,_that.trustScore,_that.posTwoPercentDepth,_that.negTwoPercentDepth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String exchange,  String pair,  double price,  double spread, @JsonKey(name: 'volume_24hrs')  dynamic volume24hrs, @JsonKey(name: 'last_updated_at')  String? lastUpdatedAt, @JsonKey(name: 'trust_score')  String? trustScore, @JsonKey(name: 'pos_two_percent_depth')  String? posTwoPercentDepth, @JsonKey(name: 'neg_two_percent_depth')  String? negTwoPercentDepth)?  $default,) {final _that = this;
switch (_that) {
case _ExchangeData() when $default != null:
return $default(_that.exchange,_that.pair,_that.price,_that.spread,_that.volume24hrs,_that.lastUpdatedAt,_that.trustScore,_that.posTwoPercentDepth,_that.negTwoPercentDepth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExchangeData implements ExchangeData {
  const _ExchangeData({required this.exchange, required this.pair, required this.price, required this.spread, @JsonKey(name: 'volume_24hrs') this.volume24hrs, @JsonKey(name: 'last_updated_at') this.lastUpdatedAt, @JsonKey(name: 'trust_score') this.trustScore, @JsonKey(name: 'pos_two_percent_depth') this.posTwoPercentDepth, @JsonKey(name: 'neg_two_percent_depth') this.negTwoPercentDepth});
  factory _ExchangeData.fromJson(Map<String, dynamic> json) => _$ExchangeDataFromJson(json);

@override final  String exchange;
@override final  String pair;
@override final  double price;
@override final  double spread;
@override@JsonKey(name: 'volume_24hrs') final  dynamic volume24hrs;
@override@JsonKey(name: 'last_updated_at') final  String? lastUpdatedAt;
@override@JsonKey(name: 'trust_score') final  String? trustScore;
@override@JsonKey(name: 'pos_two_percent_depth') final  String? posTwoPercentDepth;
@override@JsonKey(name: 'neg_two_percent_depth') final  String? negTwoPercentDepth;

/// Create a copy of ExchangeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExchangeDataCopyWith<_ExchangeData> get copyWith => __$ExchangeDataCopyWithImpl<_ExchangeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExchangeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExchangeData&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.pair, pair) || other.pair == pair)&&(identical(other.price, price) || other.price == price)&&(identical(other.spread, spread) || other.spread == spread)&&const DeepCollectionEquality().equals(other.volume24hrs, volume24hrs)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.trustScore, trustScore) || other.trustScore == trustScore)&&(identical(other.posTwoPercentDepth, posTwoPercentDepth) || other.posTwoPercentDepth == posTwoPercentDepth)&&(identical(other.negTwoPercentDepth, negTwoPercentDepth) || other.negTwoPercentDepth == negTwoPercentDepth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exchange,pair,price,spread,const DeepCollectionEquality().hash(volume24hrs),lastUpdatedAt,trustScore,posTwoPercentDepth,negTwoPercentDepth);

@override
String toString() {
  return 'ExchangeData(exchange: $exchange, pair: $pair, price: $price, spread: $spread, volume24hrs: $volume24hrs, lastUpdatedAt: $lastUpdatedAt, trustScore: $trustScore, posTwoPercentDepth: $posTwoPercentDepth, negTwoPercentDepth: $negTwoPercentDepth)';
}


}

/// @nodoc
abstract mixin class _$ExchangeDataCopyWith<$Res> implements $ExchangeDataCopyWith<$Res> {
  factory _$ExchangeDataCopyWith(_ExchangeData value, $Res Function(_ExchangeData) _then) = __$ExchangeDataCopyWithImpl;
@override @useResult
$Res call({
 String exchange, String pair, double price, double spread,@JsonKey(name: 'volume_24hrs') dynamic volume24hrs,@JsonKey(name: 'last_updated_at') String? lastUpdatedAt,@JsonKey(name: 'trust_score') String? trustScore,@JsonKey(name: 'pos_two_percent_depth') String? posTwoPercentDepth,@JsonKey(name: 'neg_two_percent_depth') String? negTwoPercentDepth
});




}
/// @nodoc
class __$ExchangeDataCopyWithImpl<$Res>
    implements _$ExchangeDataCopyWith<$Res> {
  __$ExchangeDataCopyWithImpl(this._self, this._then);

  final _ExchangeData _self;
  final $Res Function(_ExchangeData) _then;

/// Create a copy of ExchangeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exchange = null,Object? pair = null,Object? price = null,Object? spread = null,Object? volume24hrs = freezed,Object? lastUpdatedAt = freezed,Object? trustScore = freezed,Object? posTwoPercentDepth = freezed,Object? negTwoPercentDepth = freezed,}) {
  return _then(_ExchangeData(
exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,pair: null == pair ? _self.pair : pair // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,spread: null == spread ? _self.spread : spread // ignore: cast_nullable_to_non_nullable
as double,volume24hrs: freezed == volume24hrs ? _self.volume24hrs : volume24hrs // ignore: cast_nullable_to_non_nullable
as dynamic,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String?,trustScore: freezed == trustScore ? _self.trustScore : trustScore // ignore: cast_nullable_to_non_nullable
as String?,posTwoPercentDepth: freezed == posTwoPercentDepth ? _self.posTwoPercentDepth : posTwoPercentDepth // ignore: cast_nullable_to_non_nullable
as String?,negTwoPercentDepth: freezed == negTwoPercentDepth ? _self.negTwoPercentDepth : negTwoPercentDepth // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
