// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Stock {

@JsonKey(name: "_id") String get id; String get stockId; String get symbol; String get exchange; String get exchangeshortname; String get source; String get type; String get companyName; bool get isActivelyTrading; bool get isAdr; bool get isEtf; bool get isFund; String get isin; double get marketCap; double get price; double get previousClose; double get pctChange; String get key; List<FiveDayTrend> get fiveDayTrend; bool get isPositive;
/// Create a copy of Stock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockCopyWith<Stock> get copyWith => _$StockCopyWithImpl<Stock>(this as Stock, _$identity);

  /// Serializes this Stock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stock&&(identical(other.id, id) || other.id == id)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.exchangeshortname, exchangeshortname) || other.exchangeshortname == exchangeshortname)&&(identical(other.source, source) || other.source == source)&&(identical(other.type, type) || other.type == type)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.isActivelyTrading, isActivelyTrading) || other.isActivelyTrading == isActivelyTrading)&&(identical(other.isAdr, isAdr) || other.isAdr == isAdr)&&(identical(other.isEtf, isEtf) || other.isEtf == isEtf)&&(identical(other.isFund, isFund) || other.isFund == isFund)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.price, price) || other.price == price)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.pctChange, pctChange) || other.pctChange == pctChange)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.fiveDayTrend, fiveDayTrend)&&(identical(other.isPositive, isPositive) || other.isPositive == isPositive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,stockId,symbol,exchange,exchangeshortname,source,type,companyName,isActivelyTrading,isAdr,isEtf,isFund,isin,marketCap,price,previousClose,pctChange,key,const DeepCollectionEquality().hash(fiveDayTrend),isPositive]);

@override
String toString() {
  return 'Stock(id: $id, stockId: $stockId, symbol: $symbol, exchange: $exchange, exchangeshortname: $exchangeshortname, source: $source, type: $type, companyName: $companyName, isActivelyTrading: $isActivelyTrading, isAdr: $isAdr, isEtf: $isEtf, isFund: $isFund, isin: $isin, marketCap: $marketCap, price: $price, previousClose: $previousClose, pctChange: $pctChange, key: $key, fiveDayTrend: $fiveDayTrend, isPositive: $isPositive)';
}


}

/// @nodoc
abstract mixin class $StockCopyWith<$Res>  {
  factory $StockCopyWith(Stock value, $Res Function(Stock) _then) = _$StockCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "_id") String id, String stockId, String symbol, String exchange, String exchangeshortname, String source, String type, String companyName, bool isActivelyTrading, bool isAdr, bool isEtf, bool isFund, String isin, double marketCap, double price, double previousClose, double pctChange, String key, List<FiveDayTrend> fiveDayTrend, bool isPositive
});




}
/// @nodoc
class _$StockCopyWithImpl<$Res>
    implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._self, this._then);

  final Stock _self;
  final $Res Function(Stock) _then;

/// Create a copy of Stock
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? stockId = null,Object? symbol = null,Object? exchange = null,Object? exchangeshortname = null,Object? source = null,Object? type = null,Object? companyName = null,Object? isActivelyTrading = null,Object? isAdr = null,Object? isEtf = null,Object? isFund = null,Object? isin = null,Object? marketCap = null,Object? price = null,Object? previousClose = null,Object? pctChange = null,Object? key = null,Object? fiveDayTrend = null,Object? isPositive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,exchangeshortname: null == exchangeshortname ? _self.exchangeshortname : exchangeshortname // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,isActivelyTrading: null == isActivelyTrading ? _self.isActivelyTrading : isActivelyTrading // ignore: cast_nullable_to_non_nullable
as bool,isAdr: null == isAdr ? _self.isAdr : isAdr // ignore: cast_nullable_to_non_nullable
as bool,isEtf: null == isEtf ? _self.isEtf : isEtf // ignore: cast_nullable_to_non_nullable
as bool,isFund: null == isFund ? _self.isFund : isFund // ignore: cast_nullable_to_non_nullable
as bool,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,pctChange: null == pctChange ? _self.pctChange : pctChange // ignore: cast_nullable_to_non_nullable
as double,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,fiveDayTrend: null == fiveDayTrend ? _self.fiveDayTrend : fiveDayTrend // ignore: cast_nullable_to_non_nullable
as List<FiveDayTrend>,isPositive: null == isPositive ? _self.isPositive : isPositive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Stock].
extension StockPatterns on Stock {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Stock value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Stock() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Stock value)  $default,){
final _that = this;
switch (_that) {
case _Stock():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Stock value)?  $default,){
final _that = this;
switch (_that) {
case _Stock() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id,  String stockId,  String symbol,  String exchange,  String exchangeshortname,  String source,  String type,  String companyName,  bool isActivelyTrading,  bool isAdr,  bool isEtf,  bool isFund,  String isin,  double marketCap,  double price,  double previousClose,  double pctChange,  String key,  List<FiveDayTrend> fiveDayTrend,  bool isPositive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stock() when $default != null:
return $default(_that.id,_that.stockId,_that.symbol,_that.exchange,_that.exchangeshortname,_that.source,_that.type,_that.companyName,_that.isActivelyTrading,_that.isAdr,_that.isEtf,_that.isFund,_that.isin,_that.marketCap,_that.price,_that.previousClose,_that.pctChange,_that.key,_that.fiveDayTrend,_that.isPositive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "_id")  String id,  String stockId,  String symbol,  String exchange,  String exchangeshortname,  String source,  String type,  String companyName,  bool isActivelyTrading,  bool isAdr,  bool isEtf,  bool isFund,  String isin,  double marketCap,  double price,  double previousClose,  double pctChange,  String key,  List<FiveDayTrend> fiveDayTrend,  bool isPositive)  $default,) {final _that = this;
switch (_that) {
case _Stock():
return $default(_that.id,_that.stockId,_that.symbol,_that.exchange,_that.exchangeshortname,_that.source,_that.type,_that.companyName,_that.isActivelyTrading,_that.isAdr,_that.isEtf,_that.isFund,_that.isin,_that.marketCap,_that.price,_that.previousClose,_that.pctChange,_that.key,_that.fiveDayTrend,_that.isPositive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "_id")  String id,  String stockId,  String symbol,  String exchange,  String exchangeshortname,  String source,  String type,  String companyName,  bool isActivelyTrading,  bool isAdr,  bool isEtf,  bool isFund,  String isin,  double marketCap,  double price,  double previousClose,  double pctChange,  String key,  List<FiveDayTrend> fiveDayTrend,  bool isPositive)?  $default,) {final _that = this;
switch (_that) {
case _Stock() when $default != null:
return $default(_that.id,_that.stockId,_that.symbol,_that.exchange,_that.exchangeshortname,_that.source,_that.type,_that.companyName,_that.isActivelyTrading,_that.isAdr,_that.isEtf,_that.isFund,_that.isin,_that.marketCap,_that.price,_that.previousClose,_that.pctChange,_that.key,_that.fiveDayTrend,_that.isPositive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stock implements Stock {
  const _Stock({@JsonKey(name: "_id") this.id = '', this.stockId = '', this.symbol = '', this.exchange = '', this.exchangeshortname = '', this.source = '', this.type = '', this.companyName = '', this.isActivelyTrading = false, this.isAdr = false, this.isEtf = false, this.isFund = false, this.isin = '', this.marketCap = 0, this.price = 0, this.previousClose = 0, this.pctChange = 0, this.key = '', final  List<FiveDayTrend> fiveDayTrend = const [], this.isPositive = true}): _fiveDayTrend = fiveDayTrend;
  factory _Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);

@override@JsonKey(name: "_id") final  String id;
@override@JsonKey() final  String stockId;
@override@JsonKey() final  String symbol;
@override@JsonKey() final  String exchange;
@override@JsonKey() final  String exchangeshortname;
@override@JsonKey() final  String source;
@override@JsonKey() final  String type;
@override@JsonKey() final  String companyName;
@override@JsonKey() final  bool isActivelyTrading;
@override@JsonKey() final  bool isAdr;
@override@JsonKey() final  bool isEtf;
@override@JsonKey() final  bool isFund;
@override@JsonKey() final  String isin;
@override@JsonKey() final  double marketCap;
@override@JsonKey() final  double price;
@override@JsonKey() final  double previousClose;
@override@JsonKey() final  double pctChange;
@override@JsonKey() final  String key;
 final  List<FiveDayTrend> _fiveDayTrend;
@override@JsonKey() List<FiveDayTrend> get fiveDayTrend {
  if (_fiveDayTrend is EqualUnmodifiableListView) return _fiveDayTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fiveDayTrend);
}

@override@JsonKey() final  bool isPositive;

/// Create a copy of Stock
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockCopyWith<_Stock> get copyWith => __$StockCopyWithImpl<_Stock>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stock&&(identical(other.id, id) || other.id == id)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&(identical(other.exchangeshortname, exchangeshortname) || other.exchangeshortname == exchangeshortname)&&(identical(other.source, source) || other.source == source)&&(identical(other.type, type) || other.type == type)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.isActivelyTrading, isActivelyTrading) || other.isActivelyTrading == isActivelyTrading)&&(identical(other.isAdr, isAdr) || other.isAdr == isAdr)&&(identical(other.isEtf, isEtf) || other.isEtf == isEtf)&&(identical(other.isFund, isFund) || other.isFund == isFund)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.price, price) || other.price == price)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.pctChange, pctChange) || other.pctChange == pctChange)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other._fiveDayTrend, _fiveDayTrend)&&(identical(other.isPositive, isPositive) || other.isPositive == isPositive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,stockId,symbol,exchange,exchangeshortname,source,type,companyName,isActivelyTrading,isAdr,isEtf,isFund,isin,marketCap,price,previousClose,pctChange,key,const DeepCollectionEquality().hash(_fiveDayTrend),isPositive]);

@override
String toString() {
  return 'Stock(id: $id, stockId: $stockId, symbol: $symbol, exchange: $exchange, exchangeshortname: $exchangeshortname, source: $source, type: $type, companyName: $companyName, isActivelyTrading: $isActivelyTrading, isAdr: $isAdr, isEtf: $isEtf, isFund: $isFund, isin: $isin, marketCap: $marketCap, price: $price, previousClose: $previousClose, pctChange: $pctChange, key: $key, fiveDayTrend: $fiveDayTrend, isPositive: $isPositive)';
}


}

/// @nodoc
abstract mixin class _$StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$StockCopyWith(_Stock value, $Res Function(_Stock) _then) = __$StockCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "_id") String id, String stockId, String symbol, String exchange, String exchangeshortname, String source, String type, String companyName, bool isActivelyTrading, bool isAdr, bool isEtf, bool isFund, String isin, double marketCap, double price, double previousClose, double pctChange, String key, List<FiveDayTrend> fiveDayTrend, bool isPositive
});




}
/// @nodoc
class __$StockCopyWithImpl<$Res>
    implements _$StockCopyWith<$Res> {
  __$StockCopyWithImpl(this._self, this._then);

  final _Stock _self;
  final $Res Function(_Stock) _then;

/// Create a copy of Stock
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? stockId = null,Object? symbol = null,Object? exchange = null,Object? exchangeshortname = null,Object? source = null,Object? type = null,Object? companyName = null,Object? isActivelyTrading = null,Object? isAdr = null,Object? isEtf = null,Object? isFund = null,Object? isin = null,Object? marketCap = null,Object? price = null,Object? previousClose = null,Object? pctChange = null,Object? key = null,Object? fiveDayTrend = null,Object? isPositive = null,}) {
  return _then(_Stock(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,exchangeshortname: null == exchangeshortname ? _self.exchangeshortname : exchangeshortname // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,isActivelyTrading: null == isActivelyTrading ? _self.isActivelyTrading : isActivelyTrading // ignore: cast_nullable_to_non_nullable
as bool,isAdr: null == isAdr ? _self.isAdr : isAdr // ignore: cast_nullable_to_non_nullable
as bool,isEtf: null == isEtf ? _self.isEtf : isEtf // ignore: cast_nullable_to_non_nullable
as bool,isFund: null == isFund ? _self.isFund : isFund // ignore: cast_nullable_to_non_nullable
as bool,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,pctChange: null == pctChange ? _self.pctChange : pctChange // ignore: cast_nullable_to_non_nullable
as double,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,fiveDayTrend: null == fiveDayTrend ? _self._fiveDayTrend : fiveDayTrend // ignore: cast_nullable_to_non_nullable
as List<FiveDayTrend>,isPositive: null == isPositive ? _self.isPositive : isPositive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$FiveDayTrend {

 List<double>? get data;
/// Create a copy of FiveDayTrend
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiveDayTrendCopyWith<FiveDayTrend> get copyWith => _$FiveDayTrendCopyWithImpl<FiveDayTrend>(this as FiveDayTrend, _$identity);

  /// Serializes this FiveDayTrend to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiveDayTrend&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FiveDayTrend(data: $data)';
}


}

/// @nodoc
abstract mixin class $FiveDayTrendCopyWith<$Res>  {
  factory $FiveDayTrendCopyWith(FiveDayTrend value, $Res Function(FiveDayTrend) _then) = _$FiveDayTrendCopyWithImpl;
@useResult
$Res call({
 List<double>? data
});




}
/// @nodoc
class _$FiveDayTrendCopyWithImpl<$Res>
    implements $FiveDayTrendCopyWith<$Res> {
  _$FiveDayTrendCopyWithImpl(this._self, this._then);

  final FiveDayTrend _self;
  final $Res Function(FiveDayTrend) _then;

/// Create a copy of FiveDayTrend
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FiveDayTrend].
extension FiveDayTrendPatterns on FiveDayTrend {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FiveDayTrend value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FiveDayTrend() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FiveDayTrend value)  $default,){
final _that = this;
switch (_that) {
case _FiveDayTrend():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FiveDayTrend value)?  $default,){
final _that = this;
switch (_that) {
case _FiveDayTrend() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<double>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FiveDayTrend() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<double>? data)  $default,) {final _that = this;
switch (_that) {
case _FiveDayTrend():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<double>? data)?  $default,) {final _that = this;
switch (_that) {
case _FiveDayTrend() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FiveDayTrend implements FiveDayTrend {
  const _FiveDayTrend({final  List<double>? data}): _data = data;
  factory _FiveDayTrend.fromJson(Map<String, dynamic> json) => _$FiveDayTrendFromJson(json);

 final  List<double>? _data;
@override List<double>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FiveDayTrend
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiveDayTrendCopyWith<_FiveDayTrend> get copyWith => __$FiveDayTrendCopyWithImpl<_FiveDayTrend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FiveDayTrendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiveDayTrend&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FiveDayTrend(data: $data)';
}


}

/// @nodoc
abstract mixin class _$FiveDayTrendCopyWith<$Res> implements $FiveDayTrendCopyWith<$Res> {
  factory _$FiveDayTrendCopyWith(_FiveDayTrend value, $Res Function(_FiveDayTrend) _then) = __$FiveDayTrendCopyWithImpl;
@override @useResult
$Res call({
 List<double>? data
});




}
/// @nodoc
class __$FiveDayTrendCopyWithImpl<$Res>
    implements _$FiveDayTrendCopyWith<$Res> {
  __$FiveDayTrendCopyWithImpl(this._self, this._then);

  final _FiveDayTrend _self;
  final $Res Function(_FiveDayTrend) _then;

/// Create a copy of FiveDayTrend
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_FiveDayTrend(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<double>?,
  ));
}


}

// dart format on
