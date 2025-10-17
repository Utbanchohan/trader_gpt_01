// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_model_crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoCryptoResponse {

 InfoCryptoData? get data; String? get msg; int? get status; dynamic get errors;
/// Create a copy of InfoCryptoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoCryptoResponseCopyWith<InfoCryptoResponse> get copyWith => _$InfoCryptoResponseCopyWithImpl<InfoCryptoResponse>(this as InfoCryptoResponse, _$identity);

  /// Serializes this InfoCryptoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoCryptoResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'InfoCryptoResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $InfoCryptoResponseCopyWith<$Res>  {
  factory $InfoCryptoResponseCopyWith(InfoCryptoResponse value, $Res Function(InfoCryptoResponse) _then) = _$InfoCryptoResponseCopyWithImpl;
@useResult
$Res call({
 InfoCryptoData? data, String? msg, int? status, dynamic errors
});


$InfoCryptoDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$InfoCryptoResponseCopyWithImpl<$Res>
    implements $InfoCryptoResponseCopyWith<$Res> {
  _$InfoCryptoResponseCopyWithImpl(this._self, this._then);

  final InfoCryptoResponse _self;
  final $Res Function(InfoCryptoResponse) _then;

/// Create a copy of InfoCryptoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InfoCryptoData?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of InfoCryptoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCryptoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $InfoCryptoDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [InfoCryptoResponse].
extension InfoCryptoResponsePatterns on InfoCryptoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoCryptoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoCryptoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoCryptoResponse value)  $default,){
final _that = this;
switch (_that) {
case _InfoCryptoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoCryptoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InfoCryptoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InfoCryptoData? data,  String? msg,  int? status,  dynamic errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoCryptoResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InfoCryptoData? data,  String? msg,  int? status,  dynamic errors)  $default,) {final _that = this;
switch (_that) {
case _InfoCryptoResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InfoCryptoData? data,  String? msg,  int? status,  dynamic errors)?  $default,) {final _that = this;
switch (_that) {
case _InfoCryptoResponse() when $default != null:
return $default(_that.data,_that.msg,_that.status,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoCryptoResponse implements InfoCryptoResponse {
  const _InfoCryptoResponse({required this.data, required this.msg, required this.status, required this.errors});
  factory _InfoCryptoResponse.fromJson(Map<String, dynamic> json) => _$InfoCryptoResponseFromJson(json);

@override final  InfoCryptoData? data;
@override final  String? msg;
@override final  int? status;
@override final  dynamic errors;

/// Create a copy of InfoCryptoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoCryptoResponseCopyWith<_InfoCryptoResponse> get copyWith => __$InfoCryptoResponseCopyWithImpl<_InfoCryptoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoCryptoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoCryptoResponse&&(identical(other.data, data) || other.data == data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,msg,status,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'InfoCryptoResponse(data: $data, msg: $msg, status: $status, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$InfoCryptoResponseCopyWith<$Res> implements $InfoCryptoResponseCopyWith<$Res> {
  factory _$InfoCryptoResponseCopyWith(_InfoCryptoResponse value, $Res Function(_InfoCryptoResponse) _then) = __$InfoCryptoResponseCopyWithImpl;
@override @useResult
$Res call({
 InfoCryptoData? data, String? msg, int? status, dynamic errors
});


@override $InfoCryptoDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$InfoCryptoResponseCopyWithImpl<$Res>
    implements _$InfoCryptoResponseCopyWith<$Res> {
  __$InfoCryptoResponseCopyWithImpl(this._self, this._then);

  final _InfoCryptoResponse _self;
  final $Res Function(_InfoCryptoResponse) _then;

/// Create a copy of InfoCryptoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? msg = freezed,Object? status = freezed,Object? errors = freezed,}) {
  return _then(_InfoCryptoResponse(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InfoCryptoData?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of InfoCryptoResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCryptoDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $InfoCryptoDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$InfoCryptoData {

@JsonKey(name: 'market_data') MarketData? get marketData; Links? get links; List<String>? get categories;@JsonKey(name: 'market_cap') MarketCap? get marketCap;
/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoCryptoDataCopyWith<InfoCryptoData> get copyWith => _$InfoCryptoDataCopyWithImpl<InfoCryptoData>(this as InfoCryptoData, _$identity);

  /// Serializes this InfoCryptoData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoCryptoData&&(identical(other.marketData, marketData) || other.marketData == marketData)&&(identical(other.links, links) || other.links == links)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marketData,links,const DeepCollectionEquality().hash(categories),marketCap);

@override
String toString() {
  return 'InfoCryptoData(marketData: $marketData, links: $links, categories: $categories, marketCap: $marketCap)';
}


}

/// @nodoc
abstract mixin class $InfoCryptoDataCopyWith<$Res>  {
  factory $InfoCryptoDataCopyWith(InfoCryptoData value, $Res Function(InfoCryptoData) _then) = _$InfoCryptoDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'market_data') MarketData? marketData, Links? links, List<String>? categories,@JsonKey(name: 'market_cap') MarketCap? marketCap
});


$MarketDataCopyWith<$Res>? get marketData;$LinksCopyWith<$Res>? get links;$MarketCapCopyWith<$Res>? get marketCap;

}
/// @nodoc
class _$InfoCryptoDataCopyWithImpl<$Res>
    implements $InfoCryptoDataCopyWith<$Res> {
  _$InfoCryptoDataCopyWithImpl(this._self, this._then);

  final InfoCryptoData _self;
  final $Res Function(InfoCryptoData) _then;

/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marketData = freezed,Object? links = freezed,Object? categories = freezed,Object? marketCap = freezed,}) {
  return _then(_self.copyWith(
marketData: freezed == marketData ? _self.marketData : marketData // ignore: cast_nullable_to_non_nullable
as MarketData?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as MarketCap?,
  ));
}
/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketDataCopyWith<$Res>? get marketData {
    if (_self.marketData == null) {
    return null;
  }

  return $MarketDataCopyWith<$Res>(_self.marketData!, (value) {
    return _then(_self.copyWith(marketData: value));
  });
}/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $LinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketCapCopyWith<$Res>? get marketCap {
    if (_self.marketCap == null) {
    return null;
  }

  return $MarketCapCopyWith<$Res>(_self.marketCap!, (value) {
    return _then(_self.copyWith(marketCap: value));
  });
}
}


/// Adds pattern-matching-related methods to [InfoCryptoData].
extension InfoCryptoDataPatterns on InfoCryptoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoCryptoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoCryptoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoCryptoData value)  $default,){
final _that = this;
switch (_that) {
case _InfoCryptoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoCryptoData value)?  $default,){
final _that = this;
switch (_that) {
case _InfoCryptoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'market_data')  MarketData? marketData,  Links? links,  List<String>? categories, @JsonKey(name: 'market_cap')  MarketCap? marketCap)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoCryptoData() when $default != null:
return $default(_that.marketData,_that.links,_that.categories,_that.marketCap);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'market_data')  MarketData? marketData,  Links? links,  List<String>? categories, @JsonKey(name: 'market_cap')  MarketCap? marketCap)  $default,) {final _that = this;
switch (_that) {
case _InfoCryptoData():
return $default(_that.marketData,_that.links,_that.categories,_that.marketCap);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'market_data')  MarketData? marketData,  Links? links,  List<String>? categories, @JsonKey(name: 'market_cap')  MarketCap? marketCap)?  $default,) {final _that = this;
switch (_that) {
case _InfoCryptoData() when $default != null:
return $default(_that.marketData,_that.links,_that.categories,_that.marketCap);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoCryptoData implements InfoCryptoData {
  const _InfoCryptoData({@JsonKey(name: 'market_data') this.marketData, this.links, final  List<String>? categories, @JsonKey(name: 'market_cap') this.marketCap}): _categories = categories;
  factory _InfoCryptoData.fromJson(Map<String, dynamic> json) => _$InfoCryptoDataFromJson(json);

@override@JsonKey(name: 'market_data') final  MarketData? marketData;
@override final  Links? links;
 final  List<String>? _categories;
@override List<String>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'market_cap') final  MarketCap? marketCap;

/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoCryptoDataCopyWith<_InfoCryptoData> get copyWith => __$InfoCryptoDataCopyWithImpl<_InfoCryptoData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoCryptoDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoCryptoData&&(identical(other.marketData, marketData) || other.marketData == marketData)&&(identical(other.links, links) || other.links == links)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marketData,links,const DeepCollectionEquality().hash(_categories),marketCap);

@override
String toString() {
  return 'InfoCryptoData(marketData: $marketData, links: $links, categories: $categories, marketCap: $marketCap)';
}


}

/// @nodoc
abstract mixin class _$InfoCryptoDataCopyWith<$Res> implements $InfoCryptoDataCopyWith<$Res> {
  factory _$InfoCryptoDataCopyWith(_InfoCryptoData value, $Res Function(_InfoCryptoData) _then) = __$InfoCryptoDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'market_data') MarketData? marketData, Links? links, List<String>? categories,@JsonKey(name: 'market_cap') MarketCap? marketCap
});


@override $MarketDataCopyWith<$Res>? get marketData;@override $LinksCopyWith<$Res>? get links;@override $MarketCapCopyWith<$Res>? get marketCap;

}
/// @nodoc
class __$InfoCryptoDataCopyWithImpl<$Res>
    implements _$InfoCryptoDataCopyWith<$Res> {
  __$InfoCryptoDataCopyWithImpl(this._self, this._then);

  final _InfoCryptoData _self;
  final $Res Function(_InfoCryptoData) _then;

/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marketData = freezed,Object? links = freezed,Object? categories = freezed,Object? marketCap = freezed,}) {
  return _then(_InfoCryptoData(
marketData: freezed == marketData ? _self.marketData : marketData // ignore: cast_nullable_to_non_nullable
as MarketData?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as MarketCap?,
  ));
}

/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketDataCopyWith<$Res>? get marketData {
    if (_self.marketData == null) {
    return null;
  }

  return $MarketDataCopyWith<$Res>(_self.marketData!, (value) {
    return _then(_self.copyWith(marketData: value));
  });
}/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $LinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}/// Create a copy of InfoCryptoData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MarketCapCopyWith<$Res>? get marketCap {
    if (_self.marketCap == null) {
    return null;
  }

  return $MarketCapCopyWith<$Res>(_self.marketCap!, (value) {
    return _then(_self.copyWith(marketCap: value));
  });
}
}


/// @nodoc
mixin _$MarketData {

@JsonKey(name: 'high_24h') CurrencyValue? get high24h;@JsonKey(name: 'low_24h') CurrencyValue? get low24h;@JsonKey(name: 'atl') CurrencyValue? get atl;@JsonKey(name: 'ath') CurrencyValue? get ath;@JsonKey(name: 'max_high_7d') num? get maxHigh7d;@JsonKey(name: 'min_low_7d') num? get minLow7d;@JsonKey(name: 'open_24h') num? get open24h;@JsonKey(name: 'price_change_24h') num? get priceChange24h;@JsonKey(name: 'total_volume') CurrencyValue? get totalVolume;@JsonKey(name: 'max_supply') num? get maxSupply;
/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketDataCopyWith<MarketData> get copyWith => _$MarketDataCopyWithImpl<MarketData>(this as MarketData, _$identity);

  /// Serializes this MarketData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketData&&(identical(other.high24h, high24h) || other.high24h == high24h)&&(identical(other.low24h, low24h) || other.low24h == low24h)&&(identical(other.atl, atl) || other.atl == atl)&&(identical(other.ath, ath) || other.ath == ath)&&(identical(other.maxHigh7d, maxHigh7d) || other.maxHigh7d == maxHigh7d)&&(identical(other.minLow7d, minLow7d) || other.minLow7d == minLow7d)&&(identical(other.open24h, open24h) || other.open24h == open24h)&&(identical(other.priceChange24h, priceChange24h) || other.priceChange24h == priceChange24h)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,high24h,low24h,atl,ath,maxHigh7d,minLow7d,open24h,priceChange24h,totalVolume,maxSupply);

@override
String toString() {
  return 'MarketData(high24h: $high24h, low24h: $low24h, atl: $atl, ath: $ath, maxHigh7d: $maxHigh7d, minLow7d: $minLow7d, open24h: $open24h, priceChange24h: $priceChange24h, totalVolume: $totalVolume, maxSupply: $maxSupply)';
}


}

/// @nodoc
abstract mixin class $MarketDataCopyWith<$Res>  {
  factory $MarketDataCopyWith(MarketData value, $Res Function(MarketData) _then) = _$MarketDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'high_24h') CurrencyValue? high24h,@JsonKey(name: 'low_24h') CurrencyValue? low24h,@JsonKey(name: 'atl') CurrencyValue? atl,@JsonKey(name: 'ath') CurrencyValue? ath,@JsonKey(name: 'max_high_7d') num? maxHigh7d,@JsonKey(name: 'min_low_7d') num? minLow7d,@JsonKey(name: 'open_24h') num? open24h,@JsonKey(name: 'price_change_24h') num? priceChange24h,@JsonKey(name: 'total_volume') CurrencyValue? totalVolume,@JsonKey(name: 'max_supply') num? maxSupply
});


$CurrencyValueCopyWith<$Res>? get high24h;$CurrencyValueCopyWith<$Res>? get low24h;$CurrencyValueCopyWith<$Res>? get atl;$CurrencyValueCopyWith<$Res>? get ath;$CurrencyValueCopyWith<$Res>? get totalVolume;

}
/// @nodoc
class _$MarketDataCopyWithImpl<$Res>
    implements $MarketDataCopyWith<$Res> {
  _$MarketDataCopyWithImpl(this._self, this._then);

  final MarketData _self;
  final $Res Function(MarketData) _then;

/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? high24h = freezed,Object? low24h = freezed,Object? atl = freezed,Object? ath = freezed,Object? maxHigh7d = freezed,Object? minLow7d = freezed,Object? open24h = freezed,Object? priceChange24h = freezed,Object? totalVolume = freezed,Object? maxSupply = freezed,}) {
  return _then(_self.copyWith(
high24h: freezed == high24h ? _self.high24h : high24h // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,low24h: freezed == low24h ? _self.low24h : low24h // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,atl: freezed == atl ? _self.atl : atl // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,ath: freezed == ath ? _self.ath : ath // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,maxHigh7d: freezed == maxHigh7d ? _self.maxHigh7d : maxHigh7d // ignore: cast_nullable_to_non_nullable
as num?,minLow7d: freezed == minLow7d ? _self.minLow7d : minLow7d // ignore: cast_nullable_to_non_nullable
as num?,open24h: freezed == open24h ? _self.open24h : open24h // ignore: cast_nullable_to_non_nullable
as num?,priceChange24h: freezed == priceChange24h ? _self.priceChange24h : priceChange24h // ignore: cast_nullable_to_non_nullable
as num?,totalVolume: freezed == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,maxSupply: freezed == maxSupply ? _self.maxSupply : maxSupply // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}
/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get high24h {
    if (_self.high24h == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.high24h!, (value) {
    return _then(_self.copyWith(high24h: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get low24h {
    if (_self.low24h == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.low24h!, (value) {
    return _then(_self.copyWith(low24h: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get atl {
    if (_self.atl == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.atl!, (value) {
    return _then(_self.copyWith(atl: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get ath {
    if (_self.ath == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.ath!, (value) {
    return _then(_self.copyWith(ath: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get totalVolume {
    if (_self.totalVolume == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.totalVolume!, (value) {
    return _then(_self.copyWith(totalVolume: value));
  });
}
}


/// Adds pattern-matching-related methods to [MarketData].
extension MarketDataPatterns on MarketData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketData value)  $default,){
final _that = this;
switch (_that) {
case _MarketData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketData value)?  $default,){
final _that = this;
switch (_that) {
case _MarketData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'high_24h')  CurrencyValue? high24h, @JsonKey(name: 'low_24h')  CurrencyValue? low24h, @JsonKey(name: 'atl')  CurrencyValue? atl, @JsonKey(name: 'ath')  CurrencyValue? ath, @JsonKey(name: 'max_high_7d')  num? maxHigh7d, @JsonKey(name: 'min_low_7d')  num? minLow7d, @JsonKey(name: 'open_24h')  num? open24h, @JsonKey(name: 'price_change_24h')  num? priceChange24h, @JsonKey(name: 'total_volume')  CurrencyValue? totalVolume, @JsonKey(name: 'max_supply')  num? maxSupply)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketData() when $default != null:
return $default(_that.high24h,_that.low24h,_that.atl,_that.ath,_that.maxHigh7d,_that.minLow7d,_that.open24h,_that.priceChange24h,_that.totalVolume,_that.maxSupply);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'high_24h')  CurrencyValue? high24h, @JsonKey(name: 'low_24h')  CurrencyValue? low24h, @JsonKey(name: 'atl')  CurrencyValue? atl, @JsonKey(name: 'ath')  CurrencyValue? ath, @JsonKey(name: 'max_high_7d')  num? maxHigh7d, @JsonKey(name: 'min_low_7d')  num? minLow7d, @JsonKey(name: 'open_24h')  num? open24h, @JsonKey(name: 'price_change_24h')  num? priceChange24h, @JsonKey(name: 'total_volume')  CurrencyValue? totalVolume, @JsonKey(name: 'max_supply')  num? maxSupply)  $default,) {final _that = this;
switch (_that) {
case _MarketData():
return $default(_that.high24h,_that.low24h,_that.atl,_that.ath,_that.maxHigh7d,_that.minLow7d,_that.open24h,_that.priceChange24h,_that.totalVolume,_that.maxSupply);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'high_24h')  CurrencyValue? high24h, @JsonKey(name: 'low_24h')  CurrencyValue? low24h, @JsonKey(name: 'atl')  CurrencyValue? atl, @JsonKey(name: 'ath')  CurrencyValue? ath, @JsonKey(name: 'max_high_7d')  num? maxHigh7d, @JsonKey(name: 'min_low_7d')  num? minLow7d, @JsonKey(name: 'open_24h')  num? open24h, @JsonKey(name: 'price_change_24h')  num? priceChange24h, @JsonKey(name: 'total_volume')  CurrencyValue? totalVolume, @JsonKey(name: 'max_supply')  num? maxSupply)?  $default,) {final _that = this;
switch (_that) {
case _MarketData() when $default != null:
return $default(_that.high24h,_that.low24h,_that.atl,_that.ath,_that.maxHigh7d,_that.minLow7d,_that.open24h,_that.priceChange24h,_that.totalVolume,_that.maxSupply);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketData implements MarketData {
  const _MarketData({@JsonKey(name: 'high_24h') this.high24h, @JsonKey(name: 'low_24h') this.low24h, @JsonKey(name: 'atl') this.atl, @JsonKey(name: 'ath') this.ath, @JsonKey(name: 'max_high_7d') this.maxHigh7d, @JsonKey(name: 'min_low_7d') this.minLow7d, @JsonKey(name: 'open_24h') this.open24h, @JsonKey(name: 'price_change_24h') this.priceChange24h, @JsonKey(name: 'total_volume') this.totalVolume, @JsonKey(name: 'max_supply') this.maxSupply});
  factory _MarketData.fromJson(Map<String, dynamic> json) => _$MarketDataFromJson(json);

@override@JsonKey(name: 'high_24h') final  CurrencyValue? high24h;
@override@JsonKey(name: 'low_24h') final  CurrencyValue? low24h;
@override@JsonKey(name: 'atl') final  CurrencyValue? atl;
@override@JsonKey(name: 'ath') final  CurrencyValue? ath;
@override@JsonKey(name: 'max_high_7d') final  num? maxHigh7d;
@override@JsonKey(name: 'min_low_7d') final  num? minLow7d;
@override@JsonKey(name: 'open_24h') final  num? open24h;
@override@JsonKey(name: 'price_change_24h') final  num? priceChange24h;
@override@JsonKey(name: 'total_volume') final  CurrencyValue? totalVolume;
@override@JsonKey(name: 'max_supply') final  num? maxSupply;

/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketDataCopyWith<_MarketData> get copyWith => __$MarketDataCopyWithImpl<_MarketData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketData&&(identical(other.high24h, high24h) || other.high24h == high24h)&&(identical(other.low24h, low24h) || other.low24h == low24h)&&(identical(other.atl, atl) || other.atl == atl)&&(identical(other.ath, ath) || other.ath == ath)&&(identical(other.maxHigh7d, maxHigh7d) || other.maxHigh7d == maxHigh7d)&&(identical(other.minLow7d, minLow7d) || other.minLow7d == minLow7d)&&(identical(other.open24h, open24h) || other.open24h == open24h)&&(identical(other.priceChange24h, priceChange24h) || other.priceChange24h == priceChange24h)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,high24h,low24h,atl,ath,maxHigh7d,minLow7d,open24h,priceChange24h,totalVolume,maxSupply);

@override
String toString() {
  return 'MarketData(high24h: $high24h, low24h: $low24h, atl: $atl, ath: $ath, maxHigh7d: $maxHigh7d, minLow7d: $minLow7d, open24h: $open24h, priceChange24h: $priceChange24h, totalVolume: $totalVolume, maxSupply: $maxSupply)';
}


}

/// @nodoc
abstract mixin class _$MarketDataCopyWith<$Res> implements $MarketDataCopyWith<$Res> {
  factory _$MarketDataCopyWith(_MarketData value, $Res Function(_MarketData) _then) = __$MarketDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'high_24h') CurrencyValue? high24h,@JsonKey(name: 'low_24h') CurrencyValue? low24h,@JsonKey(name: 'atl') CurrencyValue? atl,@JsonKey(name: 'ath') CurrencyValue? ath,@JsonKey(name: 'max_high_7d') num? maxHigh7d,@JsonKey(name: 'min_low_7d') num? minLow7d,@JsonKey(name: 'open_24h') num? open24h,@JsonKey(name: 'price_change_24h') num? priceChange24h,@JsonKey(name: 'total_volume') CurrencyValue? totalVolume,@JsonKey(name: 'max_supply') num? maxSupply
});


@override $CurrencyValueCopyWith<$Res>? get high24h;@override $CurrencyValueCopyWith<$Res>? get low24h;@override $CurrencyValueCopyWith<$Res>? get atl;@override $CurrencyValueCopyWith<$Res>? get ath;@override $CurrencyValueCopyWith<$Res>? get totalVolume;

}
/// @nodoc
class __$MarketDataCopyWithImpl<$Res>
    implements _$MarketDataCopyWith<$Res> {
  __$MarketDataCopyWithImpl(this._self, this._then);

  final _MarketData _self;
  final $Res Function(_MarketData) _then;

/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? high24h = freezed,Object? low24h = freezed,Object? atl = freezed,Object? ath = freezed,Object? maxHigh7d = freezed,Object? minLow7d = freezed,Object? open24h = freezed,Object? priceChange24h = freezed,Object? totalVolume = freezed,Object? maxSupply = freezed,}) {
  return _then(_MarketData(
high24h: freezed == high24h ? _self.high24h : high24h // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,low24h: freezed == low24h ? _self.low24h : low24h // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,atl: freezed == atl ? _self.atl : atl // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,ath: freezed == ath ? _self.ath : ath // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,maxHigh7d: freezed == maxHigh7d ? _self.maxHigh7d : maxHigh7d // ignore: cast_nullable_to_non_nullable
as num?,minLow7d: freezed == minLow7d ? _self.minLow7d : minLow7d // ignore: cast_nullable_to_non_nullable
as num?,open24h: freezed == open24h ? _self.open24h : open24h // ignore: cast_nullable_to_non_nullable
as num?,priceChange24h: freezed == priceChange24h ? _self.priceChange24h : priceChange24h // ignore: cast_nullable_to_non_nullable
as num?,totalVolume: freezed == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as CurrencyValue?,maxSupply: freezed == maxSupply ? _self.maxSupply : maxSupply // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get high24h {
    if (_self.high24h == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.high24h!, (value) {
    return _then(_self.copyWith(high24h: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get low24h {
    if (_self.low24h == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.low24h!, (value) {
    return _then(_self.copyWith(low24h: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get atl {
    if (_self.atl == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.atl!, (value) {
    return _then(_self.copyWith(atl: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get ath {
    if (_self.ath == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.ath!, (value) {
    return _then(_self.copyWith(ath: value));
  });
}/// Create a copy of MarketData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<$Res>? get totalVolume {
    if (_self.totalVolume == null) {
    return null;
  }

  return $CurrencyValueCopyWith<$Res>(_self.totalVolume!, (value) {
    return _then(_self.copyWith(totalVolume: value));
  });
}
}


/// @nodoc
mixin _$CurrencyValue {

 num? get usd;
/// Create a copy of CurrencyValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyValueCopyWith<CurrencyValue> get copyWith => _$CurrencyValueCopyWithImpl<CurrencyValue>(this as CurrencyValue, _$identity);

  /// Serializes this CurrencyValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyValue&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usd);

@override
String toString() {
  return 'CurrencyValue(usd: $usd)';
}


}

/// @nodoc
abstract mixin class $CurrencyValueCopyWith<$Res>  {
  factory $CurrencyValueCopyWith(CurrencyValue value, $Res Function(CurrencyValue) _then) = _$CurrencyValueCopyWithImpl;
@useResult
$Res call({
 num? usd
});




}
/// @nodoc
class _$CurrencyValueCopyWithImpl<$Res>
    implements $CurrencyValueCopyWith<$Res> {
  _$CurrencyValueCopyWithImpl(this._self, this._then);

  final CurrencyValue _self;
  final $Res Function(CurrencyValue) _then;

/// Create a copy of CurrencyValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usd = freezed,}) {
  return _then(_self.copyWith(
usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyValue].
extension CurrencyValuePatterns on CurrencyValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyValue value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyValue value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num? usd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyValue() when $default != null:
return $default(_that.usd);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num? usd)  $default,) {final _that = this;
switch (_that) {
case _CurrencyValue():
return $default(_that.usd);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num? usd)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyValue() when $default != null:
return $default(_that.usd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrencyValue implements CurrencyValue {
  const _CurrencyValue({this.usd});
  factory _CurrencyValue.fromJson(Map<String, dynamic> json) => _$CurrencyValueFromJson(json);

@override final  num? usd;

/// Create a copy of CurrencyValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyValueCopyWith<_CurrencyValue> get copyWith => __$CurrencyValueCopyWithImpl<_CurrencyValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyValue&&(identical(other.usd, usd) || other.usd == usd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usd);

@override
String toString() {
  return 'CurrencyValue(usd: $usd)';
}


}

/// @nodoc
abstract mixin class _$CurrencyValueCopyWith<$Res> implements $CurrencyValueCopyWith<$Res> {
  factory _$CurrencyValueCopyWith(_CurrencyValue value, $Res Function(_CurrencyValue) _then) = __$CurrencyValueCopyWithImpl;
@override @useResult
$Res call({
 num? usd
});




}
/// @nodoc
class __$CurrencyValueCopyWithImpl<$Res>
    implements _$CurrencyValueCopyWith<$Res> {
  __$CurrencyValueCopyWithImpl(this._self, this._then);

  final _CurrencyValue _self;
  final $Res Function(_CurrencyValue) _then;

/// Create a copy of CurrencyValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usd = freezed,}) {
  return _then(_CurrencyValue(
usd: freezed == usd ? _self.usd : usd // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}


/// @nodoc
mixin _$Links {

 String? get homepage; String? get whitepaper;@JsonKey(name: 'repos_url') ReposUrl? get reposUrl;@JsonKey(name: 'subreddit_url') String? get subredditUrl;@JsonKey(name: 'cummunity') Community? get community;@JsonKey(name: 'blockchain_site') List<String>? get blockchainSite;
/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinksCopyWith<Links> get copyWith => _$LinksCopyWithImpl<Links>(this as Links, _$identity);

  /// Serializes this Links to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Links&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.whitepaper, whitepaper) || other.whitepaper == whitepaper)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.subredditUrl, subredditUrl) || other.subredditUrl == subredditUrl)&&(identical(other.community, community) || other.community == community)&&const DeepCollectionEquality().equals(other.blockchainSite, blockchainSite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,homepage,whitepaper,reposUrl,subredditUrl,community,const DeepCollectionEquality().hash(blockchainSite));

@override
String toString() {
  return 'Links(homepage: $homepage, whitepaper: $whitepaper, reposUrl: $reposUrl, subredditUrl: $subredditUrl, community: $community, blockchainSite: $blockchainSite)';
}


}

/// @nodoc
abstract mixin class $LinksCopyWith<$Res>  {
  factory $LinksCopyWith(Links value, $Res Function(Links) _then) = _$LinksCopyWithImpl;
@useResult
$Res call({
 String? homepage, String? whitepaper,@JsonKey(name: 'repos_url') ReposUrl? reposUrl,@JsonKey(name: 'subreddit_url') String? subredditUrl,@JsonKey(name: 'cummunity') Community? community,@JsonKey(name: 'blockchain_site') List<String>? blockchainSite
});


$ReposUrlCopyWith<$Res>? get reposUrl;$CommunityCopyWith<$Res>? get community;

}
/// @nodoc
class _$LinksCopyWithImpl<$Res>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._self, this._then);

  final Links _self;
  final $Res Function(Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homepage = freezed,Object? whitepaper = freezed,Object? reposUrl = freezed,Object? subredditUrl = freezed,Object? community = freezed,Object? blockchainSite = freezed,}) {
  return _then(_self.copyWith(
homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,whitepaper: freezed == whitepaper ? _self.whitepaper : whitepaper // ignore: cast_nullable_to_non_nullable
as String?,reposUrl: freezed == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as ReposUrl?,subredditUrl: freezed == subredditUrl ? _self.subredditUrl : subredditUrl // ignore: cast_nullable_to_non_nullable
as String?,community: freezed == community ? _self.community : community // ignore: cast_nullable_to_non_nullable
as Community?,blockchainSite: freezed == blockchainSite ? _self.blockchainSite : blockchainSite // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReposUrlCopyWith<$Res>? get reposUrl {
    if (_self.reposUrl == null) {
    return null;
  }

  return $ReposUrlCopyWith<$Res>(_self.reposUrl!, (value) {
    return _then(_self.copyWith(reposUrl: value));
  });
}/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommunityCopyWith<$Res>? get community {
    if (_self.community == null) {
    return null;
  }

  return $CommunityCopyWith<$Res>(_self.community!, (value) {
    return _then(_self.copyWith(community: value));
  });
}
}


/// Adds pattern-matching-related methods to [Links].
extension LinksPatterns on Links {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Links value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Links() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Links value)  $default,){
final _that = this;
switch (_that) {
case _Links():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Links value)?  $default,){
final _that = this;
switch (_that) {
case _Links() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? homepage,  String? whitepaper, @JsonKey(name: 'repos_url')  ReposUrl? reposUrl, @JsonKey(name: 'subreddit_url')  String? subredditUrl, @JsonKey(name: 'cummunity')  Community? community, @JsonKey(name: 'blockchain_site')  List<String>? blockchainSite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.homepage,_that.whitepaper,_that.reposUrl,_that.subredditUrl,_that.community,_that.blockchainSite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? homepage,  String? whitepaper, @JsonKey(name: 'repos_url')  ReposUrl? reposUrl, @JsonKey(name: 'subreddit_url')  String? subredditUrl, @JsonKey(name: 'cummunity')  Community? community, @JsonKey(name: 'blockchain_site')  List<String>? blockchainSite)  $default,) {final _that = this;
switch (_that) {
case _Links():
return $default(_that.homepage,_that.whitepaper,_that.reposUrl,_that.subredditUrl,_that.community,_that.blockchainSite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? homepage,  String? whitepaper, @JsonKey(name: 'repos_url')  ReposUrl? reposUrl, @JsonKey(name: 'subreddit_url')  String? subredditUrl, @JsonKey(name: 'cummunity')  Community? community, @JsonKey(name: 'blockchain_site')  List<String>? blockchainSite)?  $default,) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.homepage,_that.whitepaper,_that.reposUrl,_that.subredditUrl,_that.community,_that.blockchainSite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Links implements Links {
  const _Links({this.homepage, this.whitepaper, @JsonKey(name: 'repos_url') this.reposUrl, @JsonKey(name: 'subreddit_url') this.subredditUrl, @JsonKey(name: 'cummunity') this.community, @JsonKey(name: 'blockchain_site') final  List<String>? blockchainSite}): _blockchainSite = blockchainSite;
  factory _Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

@override final  String? homepage;
@override final  String? whitepaper;
@override@JsonKey(name: 'repos_url') final  ReposUrl? reposUrl;
@override@JsonKey(name: 'subreddit_url') final  String? subredditUrl;
@override@JsonKey(name: 'cummunity') final  Community? community;
 final  List<String>? _blockchainSite;
@override@JsonKey(name: 'blockchain_site') List<String>? get blockchainSite {
  final value = _blockchainSite;
  if (value == null) return null;
  if (_blockchainSite is EqualUnmodifiableListView) return _blockchainSite;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinksCopyWith<_Links> get copyWith => __$LinksCopyWithImpl<_Links>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Links&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.whitepaper, whitepaper) || other.whitepaper == whitepaper)&&(identical(other.reposUrl, reposUrl) || other.reposUrl == reposUrl)&&(identical(other.subredditUrl, subredditUrl) || other.subredditUrl == subredditUrl)&&(identical(other.community, community) || other.community == community)&&const DeepCollectionEquality().equals(other._blockchainSite, _blockchainSite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,homepage,whitepaper,reposUrl,subredditUrl,community,const DeepCollectionEquality().hash(_blockchainSite));

@override
String toString() {
  return 'Links(homepage: $homepage, whitepaper: $whitepaper, reposUrl: $reposUrl, subredditUrl: $subredditUrl, community: $community, blockchainSite: $blockchainSite)';
}


}

/// @nodoc
abstract mixin class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) _then) = __$LinksCopyWithImpl;
@override @useResult
$Res call({
 String? homepage, String? whitepaper,@JsonKey(name: 'repos_url') ReposUrl? reposUrl,@JsonKey(name: 'subreddit_url') String? subredditUrl,@JsonKey(name: 'cummunity') Community? community,@JsonKey(name: 'blockchain_site') List<String>? blockchainSite
});


@override $ReposUrlCopyWith<$Res>? get reposUrl;@override $CommunityCopyWith<$Res>? get community;

}
/// @nodoc
class __$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(this._self, this._then);

  final _Links _self;
  final $Res Function(_Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homepage = freezed,Object? whitepaper = freezed,Object? reposUrl = freezed,Object? subredditUrl = freezed,Object? community = freezed,Object? blockchainSite = freezed,}) {
  return _then(_Links(
homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,whitepaper: freezed == whitepaper ? _self.whitepaper : whitepaper // ignore: cast_nullable_to_non_nullable
as String?,reposUrl: freezed == reposUrl ? _self.reposUrl : reposUrl // ignore: cast_nullable_to_non_nullable
as ReposUrl?,subredditUrl: freezed == subredditUrl ? _self.subredditUrl : subredditUrl // ignore: cast_nullable_to_non_nullable
as String?,community: freezed == community ? _self.community : community // ignore: cast_nullable_to_non_nullable
as Community?,blockchainSite: freezed == blockchainSite ? _self._blockchainSite : blockchainSite // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReposUrlCopyWith<$Res>? get reposUrl {
    if (_self.reposUrl == null) {
    return null;
  }

  return $ReposUrlCopyWith<$Res>(_self.reposUrl!, (value) {
    return _then(_self.copyWith(reposUrl: value));
  });
}/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommunityCopyWith<$Res>? get community {
    if (_self.community == null) {
    return null;
  }

  return $CommunityCopyWith<$Res>(_self.community!, (value) {
    return _then(_self.copyWith(community: value));
  });
}
}


/// @nodoc
mixin _$ReposUrl {

 List<String>? get github; List<String>? get bitbucket;
/// Create a copy of ReposUrl
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReposUrlCopyWith<ReposUrl> get copyWith => _$ReposUrlCopyWithImpl<ReposUrl>(this as ReposUrl, _$identity);

  /// Serializes this ReposUrl to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReposUrl&&const DeepCollectionEquality().equals(other.github, github)&&const DeepCollectionEquality().equals(other.bitbucket, bitbucket));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(github),const DeepCollectionEquality().hash(bitbucket));

@override
String toString() {
  return 'ReposUrl(github: $github, bitbucket: $bitbucket)';
}


}

/// @nodoc
abstract mixin class $ReposUrlCopyWith<$Res>  {
  factory $ReposUrlCopyWith(ReposUrl value, $Res Function(ReposUrl) _then) = _$ReposUrlCopyWithImpl;
@useResult
$Res call({
 List<String>? github, List<String>? bitbucket
});




}
/// @nodoc
class _$ReposUrlCopyWithImpl<$Res>
    implements $ReposUrlCopyWith<$Res> {
  _$ReposUrlCopyWithImpl(this._self, this._then);

  final ReposUrl _self;
  final $Res Function(ReposUrl) _then;

/// Create a copy of ReposUrl
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? github = freezed,Object? bitbucket = freezed,}) {
  return _then(_self.copyWith(
github: freezed == github ? _self.github : github // ignore: cast_nullable_to_non_nullable
as List<String>?,bitbucket: freezed == bitbucket ? _self.bitbucket : bitbucket // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReposUrl].
extension ReposUrlPatterns on ReposUrl {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReposUrl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReposUrl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReposUrl value)  $default,){
final _that = this;
switch (_that) {
case _ReposUrl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReposUrl value)?  $default,){
final _that = this;
switch (_that) {
case _ReposUrl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String>? github,  List<String>? bitbucket)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReposUrl() when $default != null:
return $default(_that.github,_that.bitbucket);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String>? github,  List<String>? bitbucket)  $default,) {final _that = this;
switch (_that) {
case _ReposUrl():
return $default(_that.github,_that.bitbucket);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String>? github,  List<String>? bitbucket)?  $default,) {final _that = this;
switch (_that) {
case _ReposUrl() when $default != null:
return $default(_that.github,_that.bitbucket);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReposUrl implements ReposUrl {
  const _ReposUrl({final  List<String>? github, final  List<String>? bitbucket}): _github = github,_bitbucket = bitbucket;
  factory _ReposUrl.fromJson(Map<String, dynamic> json) => _$ReposUrlFromJson(json);

 final  List<String>? _github;
@override List<String>? get github {
  final value = _github;
  if (value == null) return null;
  if (_github is EqualUnmodifiableListView) return _github;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _bitbucket;
@override List<String>? get bitbucket {
  final value = _bitbucket;
  if (value == null) return null;
  if (_bitbucket is EqualUnmodifiableListView) return _bitbucket;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ReposUrl
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReposUrlCopyWith<_ReposUrl> get copyWith => __$ReposUrlCopyWithImpl<_ReposUrl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReposUrlToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReposUrl&&const DeepCollectionEquality().equals(other._github, _github)&&const DeepCollectionEquality().equals(other._bitbucket, _bitbucket));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_github),const DeepCollectionEquality().hash(_bitbucket));

@override
String toString() {
  return 'ReposUrl(github: $github, bitbucket: $bitbucket)';
}


}

/// @nodoc
abstract mixin class _$ReposUrlCopyWith<$Res> implements $ReposUrlCopyWith<$Res> {
  factory _$ReposUrlCopyWith(_ReposUrl value, $Res Function(_ReposUrl) _then) = __$ReposUrlCopyWithImpl;
@override @useResult
$Res call({
 List<String>? github, List<String>? bitbucket
});




}
/// @nodoc
class __$ReposUrlCopyWithImpl<$Res>
    implements _$ReposUrlCopyWith<$Res> {
  __$ReposUrlCopyWithImpl(this._self, this._then);

  final _ReposUrl _self;
  final $Res Function(_ReposUrl) _then;

/// Create a copy of ReposUrl
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? github = freezed,Object? bitbucket = freezed,}) {
  return _then(_ReposUrl(
github: freezed == github ? _self._github : github // ignore: cast_nullable_to_non_nullable
as List<String>?,bitbucket: freezed == bitbucket ? _self._bitbucket : bitbucket // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$Community {

@JsonKey(name: 'facebook_url') String? get facebookUrl;@JsonKey(name: 'twitter_url') String? get twitterUrl;@JsonKey(name: 'telegram_url') String? get telegramUrl;@JsonKey(name: 'bitcointalk_thread_url') String? get bitcointalkThreadUrl;
/// Create a copy of Community
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommunityCopyWith<Community> get copyWith => _$CommunityCopyWithImpl<Community>(this as Community, _$identity);

  /// Serializes this Community to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Community&&(identical(other.facebookUrl, facebookUrl) || other.facebookUrl == facebookUrl)&&(identical(other.twitterUrl, twitterUrl) || other.twitterUrl == twitterUrl)&&(identical(other.telegramUrl, telegramUrl) || other.telegramUrl == telegramUrl)&&(identical(other.bitcointalkThreadUrl, bitcointalkThreadUrl) || other.bitcointalkThreadUrl == bitcointalkThreadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,facebookUrl,twitterUrl,telegramUrl,bitcointalkThreadUrl);

@override
String toString() {
  return 'Community(facebookUrl: $facebookUrl, twitterUrl: $twitterUrl, telegramUrl: $telegramUrl, bitcointalkThreadUrl: $bitcointalkThreadUrl)';
}


}

/// @nodoc
abstract mixin class $CommunityCopyWith<$Res>  {
  factory $CommunityCopyWith(Community value, $Res Function(Community) _then) = _$CommunityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'facebook_url') String? facebookUrl,@JsonKey(name: 'twitter_url') String? twitterUrl,@JsonKey(name: 'telegram_url') String? telegramUrl,@JsonKey(name: 'bitcointalk_thread_url') String? bitcointalkThreadUrl
});




}
/// @nodoc
class _$CommunityCopyWithImpl<$Res>
    implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._self, this._then);

  final Community _self;
  final $Res Function(Community) _then;

/// Create a copy of Community
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? facebookUrl = freezed,Object? twitterUrl = freezed,Object? telegramUrl = freezed,Object? bitcointalkThreadUrl = freezed,}) {
  return _then(_self.copyWith(
facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as String?,twitterUrl: freezed == twitterUrl ? _self.twitterUrl : twitterUrl // ignore: cast_nullable_to_non_nullable
as String?,telegramUrl: freezed == telegramUrl ? _self.telegramUrl : telegramUrl // ignore: cast_nullable_to_non_nullable
as String?,bitcointalkThreadUrl: freezed == bitcointalkThreadUrl ? _self.bitcointalkThreadUrl : bitcointalkThreadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Community].
extension CommunityPatterns on Community {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Community value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Community() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Community value)  $default,){
final _that = this;
switch (_that) {
case _Community():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Community value)?  $default,){
final _that = this;
switch (_that) {
case _Community() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'facebook_url')  String? facebookUrl, @JsonKey(name: 'twitter_url')  String? twitterUrl, @JsonKey(name: 'telegram_url')  String? telegramUrl, @JsonKey(name: 'bitcointalk_thread_url')  String? bitcointalkThreadUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Community() when $default != null:
return $default(_that.facebookUrl,_that.twitterUrl,_that.telegramUrl,_that.bitcointalkThreadUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'facebook_url')  String? facebookUrl, @JsonKey(name: 'twitter_url')  String? twitterUrl, @JsonKey(name: 'telegram_url')  String? telegramUrl, @JsonKey(name: 'bitcointalk_thread_url')  String? bitcointalkThreadUrl)  $default,) {final _that = this;
switch (_that) {
case _Community():
return $default(_that.facebookUrl,_that.twitterUrl,_that.telegramUrl,_that.bitcointalkThreadUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'facebook_url')  String? facebookUrl, @JsonKey(name: 'twitter_url')  String? twitterUrl, @JsonKey(name: 'telegram_url')  String? telegramUrl, @JsonKey(name: 'bitcointalk_thread_url')  String? bitcointalkThreadUrl)?  $default,) {final _that = this;
switch (_that) {
case _Community() when $default != null:
return $default(_that.facebookUrl,_that.twitterUrl,_that.telegramUrl,_that.bitcointalkThreadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Community implements Community {
  const _Community({@JsonKey(name: 'facebook_url') this.facebookUrl, @JsonKey(name: 'twitter_url') this.twitterUrl, @JsonKey(name: 'telegram_url') this.telegramUrl, @JsonKey(name: 'bitcointalk_thread_url') this.bitcointalkThreadUrl});
  factory _Community.fromJson(Map<String, dynamic> json) => _$CommunityFromJson(json);

@override@JsonKey(name: 'facebook_url') final  String? facebookUrl;
@override@JsonKey(name: 'twitter_url') final  String? twitterUrl;
@override@JsonKey(name: 'telegram_url') final  String? telegramUrl;
@override@JsonKey(name: 'bitcointalk_thread_url') final  String? bitcointalkThreadUrl;

/// Create a copy of Community
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommunityCopyWith<_Community> get copyWith => __$CommunityCopyWithImpl<_Community>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommunityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Community&&(identical(other.facebookUrl, facebookUrl) || other.facebookUrl == facebookUrl)&&(identical(other.twitterUrl, twitterUrl) || other.twitterUrl == twitterUrl)&&(identical(other.telegramUrl, telegramUrl) || other.telegramUrl == telegramUrl)&&(identical(other.bitcointalkThreadUrl, bitcointalkThreadUrl) || other.bitcointalkThreadUrl == bitcointalkThreadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,facebookUrl,twitterUrl,telegramUrl,bitcointalkThreadUrl);

@override
String toString() {
  return 'Community(facebookUrl: $facebookUrl, twitterUrl: $twitterUrl, telegramUrl: $telegramUrl, bitcointalkThreadUrl: $bitcointalkThreadUrl)';
}


}

/// @nodoc
abstract mixin class _$CommunityCopyWith<$Res> implements $CommunityCopyWith<$Res> {
  factory _$CommunityCopyWith(_Community value, $Res Function(_Community) _then) = __$CommunityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'facebook_url') String? facebookUrl,@JsonKey(name: 'twitter_url') String? twitterUrl,@JsonKey(name: 'telegram_url') String? telegramUrl,@JsonKey(name: 'bitcointalk_thread_url') String? bitcointalkThreadUrl
});




}
/// @nodoc
class __$CommunityCopyWithImpl<$Res>
    implements _$CommunityCopyWith<$Res> {
  __$CommunityCopyWithImpl(this._self, this._then);

  final _Community _self;
  final $Res Function(_Community) _then;

/// Create a copy of Community
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? facebookUrl = freezed,Object? twitterUrl = freezed,Object? telegramUrl = freezed,Object? bitcointalkThreadUrl = freezed,}) {
  return _then(_Community(
facebookUrl: freezed == facebookUrl ? _self.facebookUrl : facebookUrl // ignore: cast_nullable_to_non_nullable
as String?,twitterUrl: freezed == twitterUrl ? _self.twitterUrl : twitterUrl // ignore: cast_nullable_to_non_nullable
as String?,telegramUrl: freezed == telegramUrl ? _self.telegramUrl : telegramUrl // ignore: cast_nullable_to_non_nullable
as String?,bitcointalkThreadUrl: freezed == bitcointalkThreadUrl ? _self.bitcointalkThreadUrl : bitcointalkThreadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MarketCap {

@JsonKey(name: 'max_supply') num? get maxSupply;@JsonKey(name: 'circulating_supply') num? get circulatingSupply;@JsonKey(name: 'total_supply') num? get totalSupply;@JsonKey(name: 'volume_24h') num? get volume24h;@JsonKey(name: 'market_cap') num? get marketCap;@JsonKey(name: 'fully_diluted_market_cap') num? get fullyDilutedMarketCap;@JsonKey(name: 'market_cap_dominance') num? get marketCapDominance;
/// Create a copy of MarketCap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarketCapCopyWith<MarketCap> get copyWith => _$MarketCapCopyWithImpl<MarketCap>(this as MarketCap, _$identity);

  /// Serializes this MarketCap to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarketCap&&(identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply)&&(identical(other.circulatingSupply, circulatingSupply) || other.circulatingSupply == circulatingSupply)&&(identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply)&&(identical(other.volume24h, volume24h) || other.volume24h == volume24h)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.fullyDilutedMarketCap, fullyDilutedMarketCap) || other.fullyDilutedMarketCap == fullyDilutedMarketCap)&&(identical(other.marketCapDominance, marketCapDominance) || other.marketCapDominance == marketCapDominance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxSupply,circulatingSupply,totalSupply,volume24h,marketCap,fullyDilutedMarketCap,marketCapDominance);

@override
String toString() {
  return 'MarketCap(maxSupply: $maxSupply, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, volume24h: $volume24h, marketCap: $marketCap, fullyDilutedMarketCap: $fullyDilutedMarketCap, marketCapDominance: $marketCapDominance)';
}


}

/// @nodoc
abstract mixin class $MarketCapCopyWith<$Res>  {
  factory $MarketCapCopyWith(MarketCap value, $Res Function(MarketCap) _then) = _$MarketCapCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'max_supply') num? maxSupply,@JsonKey(name: 'circulating_supply') num? circulatingSupply,@JsonKey(name: 'total_supply') num? totalSupply,@JsonKey(name: 'volume_24h') num? volume24h,@JsonKey(name: 'market_cap') num? marketCap,@JsonKey(name: 'fully_diluted_market_cap') num? fullyDilutedMarketCap,@JsonKey(name: 'market_cap_dominance') num? marketCapDominance
});




}
/// @nodoc
class _$MarketCapCopyWithImpl<$Res>
    implements $MarketCapCopyWith<$Res> {
  _$MarketCapCopyWithImpl(this._self, this._then);

  final MarketCap _self;
  final $Res Function(MarketCap) _then;

/// Create a copy of MarketCap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxSupply = freezed,Object? circulatingSupply = freezed,Object? totalSupply = freezed,Object? volume24h = freezed,Object? marketCap = freezed,Object? fullyDilutedMarketCap = freezed,Object? marketCapDominance = freezed,}) {
  return _then(_self.copyWith(
maxSupply: freezed == maxSupply ? _self.maxSupply : maxSupply // ignore: cast_nullable_to_non_nullable
as num?,circulatingSupply: freezed == circulatingSupply ? _self.circulatingSupply : circulatingSupply // ignore: cast_nullable_to_non_nullable
as num?,totalSupply: freezed == totalSupply ? _self.totalSupply : totalSupply // ignore: cast_nullable_to_non_nullable
as num?,volume24h: freezed == volume24h ? _self.volume24h : volume24h // ignore: cast_nullable_to_non_nullable
as num?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as num?,fullyDilutedMarketCap: freezed == fullyDilutedMarketCap ? _self.fullyDilutedMarketCap : fullyDilutedMarketCap // ignore: cast_nullable_to_non_nullable
as num?,marketCapDominance: freezed == marketCapDominance ? _self.marketCapDominance : marketCapDominance // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarketCap].
extension MarketCapPatterns on MarketCap {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarketCap value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarketCap() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarketCap value)  $default,){
final _that = this;
switch (_that) {
case _MarketCap():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarketCap value)?  $default,){
final _that = this;
switch (_that) {
case _MarketCap() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'max_supply')  num? maxSupply, @JsonKey(name: 'circulating_supply')  num? circulatingSupply, @JsonKey(name: 'total_supply')  num? totalSupply, @JsonKey(name: 'volume_24h')  num? volume24h, @JsonKey(name: 'market_cap')  num? marketCap, @JsonKey(name: 'fully_diluted_market_cap')  num? fullyDilutedMarketCap, @JsonKey(name: 'market_cap_dominance')  num? marketCapDominance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarketCap() when $default != null:
return $default(_that.maxSupply,_that.circulatingSupply,_that.totalSupply,_that.volume24h,_that.marketCap,_that.fullyDilutedMarketCap,_that.marketCapDominance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'max_supply')  num? maxSupply, @JsonKey(name: 'circulating_supply')  num? circulatingSupply, @JsonKey(name: 'total_supply')  num? totalSupply, @JsonKey(name: 'volume_24h')  num? volume24h, @JsonKey(name: 'market_cap')  num? marketCap, @JsonKey(name: 'fully_diluted_market_cap')  num? fullyDilutedMarketCap, @JsonKey(name: 'market_cap_dominance')  num? marketCapDominance)  $default,) {final _that = this;
switch (_that) {
case _MarketCap():
return $default(_that.maxSupply,_that.circulatingSupply,_that.totalSupply,_that.volume24h,_that.marketCap,_that.fullyDilutedMarketCap,_that.marketCapDominance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'max_supply')  num? maxSupply, @JsonKey(name: 'circulating_supply')  num? circulatingSupply, @JsonKey(name: 'total_supply')  num? totalSupply, @JsonKey(name: 'volume_24h')  num? volume24h, @JsonKey(name: 'market_cap')  num? marketCap, @JsonKey(name: 'fully_diluted_market_cap')  num? fullyDilutedMarketCap, @JsonKey(name: 'market_cap_dominance')  num? marketCapDominance)?  $default,) {final _that = this;
switch (_that) {
case _MarketCap() when $default != null:
return $default(_that.maxSupply,_that.circulatingSupply,_that.totalSupply,_that.volume24h,_that.marketCap,_that.fullyDilutedMarketCap,_that.marketCapDominance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarketCap implements MarketCap {
  const _MarketCap({@JsonKey(name: 'max_supply') this.maxSupply, @JsonKey(name: 'circulating_supply') this.circulatingSupply, @JsonKey(name: 'total_supply') this.totalSupply, @JsonKey(name: 'volume_24h') this.volume24h, @JsonKey(name: 'market_cap') this.marketCap, @JsonKey(name: 'fully_diluted_market_cap') this.fullyDilutedMarketCap, @JsonKey(name: 'market_cap_dominance') this.marketCapDominance});
  factory _MarketCap.fromJson(Map<String, dynamic> json) => _$MarketCapFromJson(json);

@override@JsonKey(name: 'max_supply') final  num? maxSupply;
@override@JsonKey(name: 'circulating_supply') final  num? circulatingSupply;
@override@JsonKey(name: 'total_supply') final  num? totalSupply;
@override@JsonKey(name: 'volume_24h') final  num? volume24h;
@override@JsonKey(name: 'market_cap') final  num? marketCap;
@override@JsonKey(name: 'fully_diluted_market_cap') final  num? fullyDilutedMarketCap;
@override@JsonKey(name: 'market_cap_dominance') final  num? marketCapDominance;

/// Create a copy of MarketCap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarketCapCopyWith<_MarketCap> get copyWith => __$MarketCapCopyWithImpl<_MarketCap>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarketCapToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarketCap&&(identical(other.maxSupply, maxSupply) || other.maxSupply == maxSupply)&&(identical(other.circulatingSupply, circulatingSupply) || other.circulatingSupply == circulatingSupply)&&(identical(other.totalSupply, totalSupply) || other.totalSupply == totalSupply)&&(identical(other.volume24h, volume24h) || other.volume24h == volume24h)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.fullyDilutedMarketCap, fullyDilutedMarketCap) || other.fullyDilutedMarketCap == fullyDilutedMarketCap)&&(identical(other.marketCapDominance, marketCapDominance) || other.marketCapDominance == marketCapDominance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maxSupply,circulatingSupply,totalSupply,volume24h,marketCap,fullyDilutedMarketCap,marketCapDominance);

@override
String toString() {
  return 'MarketCap(maxSupply: $maxSupply, circulatingSupply: $circulatingSupply, totalSupply: $totalSupply, volume24h: $volume24h, marketCap: $marketCap, fullyDilutedMarketCap: $fullyDilutedMarketCap, marketCapDominance: $marketCapDominance)';
}


}

/// @nodoc
abstract mixin class _$MarketCapCopyWith<$Res> implements $MarketCapCopyWith<$Res> {
  factory _$MarketCapCopyWith(_MarketCap value, $Res Function(_MarketCap) _then) = __$MarketCapCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'max_supply') num? maxSupply,@JsonKey(name: 'circulating_supply') num? circulatingSupply,@JsonKey(name: 'total_supply') num? totalSupply,@JsonKey(name: 'volume_24h') num? volume24h,@JsonKey(name: 'market_cap') num? marketCap,@JsonKey(name: 'fully_diluted_market_cap') num? fullyDilutedMarketCap,@JsonKey(name: 'market_cap_dominance') num? marketCapDominance
});




}
/// @nodoc
class __$MarketCapCopyWithImpl<$Res>
    implements _$MarketCapCopyWith<$Res> {
  __$MarketCapCopyWithImpl(this._self, this._then);

  final _MarketCap _self;
  final $Res Function(_MarketCap) _then;

/// Create a copy of MarketCap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxSupply = freezed,Object? circulatingSupply = freezed,Object? totalSupply = freezed,Object? volume24h = freezed,Object? marketCap = freezed,Object? fullyDilutedMarketCap = freezed,Object? marketCapDominance = freezed,}) {
  return _then(_MarketCap(
maxSupply: freezed == maxSupply ? _self.maxSupply : maxSupply // ignore: cast_nullable_to_non_nullable
as num?,circulatingSupply: freezed == circulatingSupply ? _self.circulatingSupply : circulatingSupply // ignore: cast_nullable_to_non_nullable
as num?,totalSupply: freezed == totalSupply ? _self.totalSupply : totalSupply // ignore: cast_nullable_to_non_nullable
as num?,volume24h: freezed == volume24h ? _self.volume24h : volume24h // ignore: cast_nullable_to_non_nullable
as num?,marketCap: freezed == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as num?,fullyDilutedMarketCap: freezed == fullyDilutedMarketCap ? _self.fullyDilutedMarketCap : fullyDilutedMarketCap // ignore: cast_nullable_to_non_nullable
as num?,marketCapDominance: freezed == marketCapDominance ? _self.marketCapDominance : marketCapDominance // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
