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

 int get avgVolume; double get change; double get changesPercentage; double get dayHigh; double get dayLow; String get earningsAnnouncement; double get eps; String get exchange; List<FiveDayTrend> get fiveDayTrend; int get marketCap; String get name; double get open; double get pe; double get previousClose; double get price; double get priceAvg200; double get priceAvg50; int get sharesOutstanding; String get stockId; String get symbol; int get timestamp; int get volume; double get yearHigh; double get yearLow; String get logoUrl; String get type; int get count; String get dateHours; int get ticks; String get primaryLogoUrl; String get secondaryLogoUrl; String get tertiaryLogoUrl; String get status; String get updatedFrom; String get country; int get exchangeSortOrder;
/// Create a copy of Stock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockCopyWith<Stock> get copyWith => _$StockCopyWithImpl<Stock>(this as Stock, _$identity);

  /// Serializes this Stock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stock&&(identical(other.avgVolume, avgVolume) || other.avgVolume == avgVolume)&&(identical(other.change, change) || other.change == change)&&(identical(other.changesPercentage, changesPercentage) || other.changesPercentage == changesPercentage)&&(identical(other.dayHigh, dayHigh) || other.dayHigh == dayHigh)&&(identical(other.dayLow, dayLow) || other.dayLow == dayLow)&&(identical(other.earningsAnnouncement, earningsAnnouncement) || other.earningsAnnouncement == earningsAnnouncement)&&(identical(other.eps, eps) || other.eps == eps)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&const DeepCollectionEquality().equals(other.fiveDayTrend, fiveDayTrend)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.name, name) || other.name == name)&&(identical(other.open, open) || other.open == open)&&(identical(other.pe, pe) || other.pe == pe)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceAvg200, priceAvg200) || other.priceAvg200 == priceAvg200)&&(identical(other.priceAvg50, priceAvg50) || other.priceAvg50 == priceAvg50)&&(identical(other.sharesOutstanding, sharesOutstanding) || other.sharesOutstanding == sharesOutstanding)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.yearHigh, yearHigh) || other.yearHigh == yearHigh)&&(identical(other.yearLow, yearLow) || other.yearLow == yearLow)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.dateHours, dateHours) || other.dateHours == dateHours)&&(identical(other.ticks, ticks) || other.ticks == ticks)&&(identical(other.primaryLogoUrl, primaryLogoUrl) || other.primaryLogoUrl == primaryLogoUrl)&&(identical(other.secondaryLogoUrl, secondaryLogoUrl) || other.secondaryLogoUrl == secondaryLogoUrl)&&(identical(other.tertiaryLogoUrl, tertiaryLogoUrl) || other.tertiaryLogoUrl == tertiaryLogoUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.updatedFrom, updatedFrom) || other.updatedFrom == updatedFrom)&&(identical(other.country, country) || other.country == country)&&(identical(other.exchangeSortOrder, exchangeSortOrder) || other.exchangeSortOrder == exchangeSortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,avgVolume,change,changesPercentage,dayHigh,dayLow,earningsAnnouncement,eps,exchange,const DeepCollectionEquality().hash(fiveDayTrend),marketCap,name,open,pe,previousClose,price,priceAvg200,priceAvg50,sharesOutstanding,stockId,symbol,timestamp,volume,yearHigh,yearLow,logoUrl,type,count,dateHours,ticks,primaryLogoUrl,secondaryLogoUrl,tertiaryLogoUrl,status,updatedFrom,country,exchangeSortOrder]);

@override
String toString() {
  return 'Stock(avgVolume: $avgVolume, change: $change, changesPercentage: $changesPercentage, dayHigh: $dayHigh, dayLow: $dayLow, earningsAnnouncement: $earningsAnnouncement, eps: $eps, exchange: $exchange, fiveDayTrend: $fiveDayTrend, marketCap: $marketCap, name: $name, open: $open, pe: $pe, previousClose: $previousClose, price: $price, priceAvg200: $priceAvg200, priceAvg50: $priceAvg50, sharesOutstanding: $sharesOutstanding, stockId: $stockId, symbol: $symbol, timestamp: $timestamp, volume: $volume, yearHigh: $yearHigh, yearLow: $yearLow, logoUrl: $logoUrl, type: $type, count: $count, dateHours: $dateHours, ticks: $ticks, primaryLogoUrl: $primaryLogoUrl, secondaryLogoUrl: $secondaryLogoUrl, tertiaryLogoUrl: $tertiaryLogoUrl, status: $status, updatedFrom: $updatedFrom, country: $country, exchangeSortOrder: $exchangeSortOrder)';
}


}

/// @nodoc
abstract mixin class $StockCopyWith<$Res>  {
  factory $StockCopyWith(Stock value, $Res Function(Stock) _then) = _$StockCopyWithImpl;
@useResult
$Res call({
 int avgVolume, double change, double changesPercentage, double dayHigh, double dayLow, String earningsAnnouncement, double eps, String exchange, List<FiveDayTrend> fiveDayTrend, int marketCap, String name, double open, double pe, double previousClose, double price, double priceAvg200, double priceAvg50, int sharesOutstanding, String stockId, String symbol, int timestamp, int volume, double yearHigh, double yearLow, String logoUrl, String type, int count, String dateHours, int ticks, String primaryLogoUrl, String secondaryLogoUrl, String tertiaryLogoUrl, String status, String updatedFrom, String country, int exchangeSortOrder
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
@pragma('vm:prefer-inline') @override $Res call({Object? avgVolume = null,Object? change = null,Object? changesPercentage = null,Object? dayHigh = null,Object? dayLow = null,Object? earningsAnnouncement = null,Object? eps = null,Object? exchange = null,Object? fiveDayTrend = null,Object? marketCap = null,Object? name = null,Object? open = null,Object? pe = null,Object? previousClose = null,Object? price = null,Object? priceAvg200 = null,Object? priceAvg50 = null,Object? sharesOutstanding = null,Object? stockId = null,Object? symbol = null,Object? timestamp = null,Object? volume = null,Object? yearHigh = null,Object? yearLow = null,Object? logoUrl = null,Object? type = null,Object? count = null,Object? dateHours = null,Object? ticks = null,Object? primaryLogoUrl = null,Object? secondaryLogoUrl = null,Object? tertiaryLogoUrl = null,Object? status = null,Object? updatedFrom = null,Object? country = null,Object? exchangeSortOrder = null,}) {
  return _then(_self.copyWith(
avgVolume: null == avgVolume ? _self.avgVolume : avgVolume // ignore: cast_nullable_to_non_nullable
as int,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,changesPercentage: null == changesPercentage ? _self.changesPercentage : changesPercentage // ignore: cast_nullable_to_non_nullable
as double,dayHigh: null == dayHigh ? _self.dayHigh : dayHigh // ignore: cast_nullable_to_non_nullable
as double,dayLow: null == dayLow ? _self.dayLow : dayLow // ignore: cast_nullable_to_non_nullable
as double,earningsAnnouncement: null == earningsAnnouncement ? _self.earningsAnnouncement : earningsAnnouncement // ignore: cast_nullable_to_non_nullable
as String,eps: null == eps ? _self.eps : eps // ignore: cast_nullable_to_non_nullable
as double,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,fiveDayTrend: null == fiveDayTrend ? _self.fiveDayTrend : fiveDayTrend // ignore: cast_nullable_to_non_nullable
as List<FiveDayTrend>,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,pe: null == pe ? _self.pe : pe // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,priceAvg200: null == priceAvg200 ? _self.priceAvg200 : priceAvg200 // ignore: cast_nullable_to_non_nullable
as double,priceAvg50: null == priceAvg50 ? _self.priceAvg50 : priceAvg50 // ignore: cast_nullable_to_non_nullable
as double,sharesOutstanding: null == sharesOutstanding ? _self.sharesOutstanding : sharesOutstanding // ignore: cast_nullable_to_non_nullable
as int,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,yearHigh: null == yearHigh ? _self.yearHigh : yearHigh // ignore: cast_nullable_to_non_nullable
as double,yearLow: null == yearLow ? _self.yearLow : yearLow // ignore: cast_nullable_to_non_nullable
as double,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,dateHours: null == dateHours ? _self.dateHours : dateHours // ignore: cast_nullable_to_non_nullable
as String,ticks: null == ticks ? _self.ticks : ticks // ignore: cast_nullable_to_non_nullable
as int,primaryLogoUrl: null == primaryLogoUrl ? _self.primaryLogoUrl : primaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String,secondaryLogoUrl: null == secondaryLogoUrl ? _self.secondaryLogoUrl : secondaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String,tertiaryLogoUrl: null == tertiaryLogoUrl ? _self.tertiaryLogoUrl : tertiaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,updatedFrom: null == updatedFrom ? _self.updatedFrom : updatedFrom // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,exchangeSortOrder: null == exchangeSortOrder ? _self.exchangeSortOrder : exchangeSortOrder // ignore: cast_nullable_to_non_nullable
as int,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int avgVolume,  double change,  double changesPercentage,  double dayHigh,  double dayLow,  String earningsAnnouncement,  double eps,  String exchange,  List<FiveDayTrend> fiveDayTrend,  int marketCap,  String name,  double open,  double pe,  double previousClose,  double price,  double priceAvg200,  double priceAvg50,  int sharesOutstanding,  String stockId,  String symbol,  int timestamp,  int volume,  double yearHigh,  double yearLow,  String logoUrl,  String type,  int count,  String dateHours,  int ticks,  String primaryLogoUrl,  String secondaryLogoUrl,  String tertiaryLogoUrl,  String status,  String updatedFrom,  String country,  int exchangeSortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stock() when $default != null:
return $default(_that.avgVolume,_that.change,_that.changesPercentage,_that.dayHigh,_that.dayLow,_that.earningsAnnouncement,_that.eps,_that.exchange,_that.fiveDayTrend,_that.marketCap,_that.name,_that.open,_that.pe,_that.previousClose,_that.price,_that.priceAvg200,_that.priceAvg50,_that.sharesOutstanding,_that.stockId,_that.symbol,_that.timestamp,_that.volume,_that.yearHigh,_that.yearLow,_that.logoUrl,_that.type,_that.count,_that.dateHours,_that.ticks,_that.primaryLogoUrl,_that.secondaryLogoUrl,_that.tertiaryLogoUrl,_that.status,_that.updatedFrom,_that.country,_that.exchangeSortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int avgVolume,  double change,  double changesPercentage,  double dayHigh,  double dayLow,  String earningsAnnouncement,  double eps,  String exchange,  List<FiveDayTrend> fiveDayTrend,  int marketCap,  String name,  double open,  double pe,  double previousClose,  double price,  double priceAvg200,  double priceAvg50,  int sharesOutstanding,  String stockId,  String symbol,  int timestamp,  int volume,  double yearHigh,  double yearLow,  String logoUrl,  String type,  int count,  String dateHours,  int ticks,  String primaryLogoUrl,  String secondaryLogoUrl,  String tertiaryLogoUrl,  String status,  String updatedFrom,  String country,  int exchangeSortOrder)  $default,) {final _that = this;
switch (_that) {
case _Stock():
return $default(_that.avgVolume,_that.change,_that.changesPercentage,_that.dayHigh,_that.dayLow,_that.earningsAnnouncement,_that.eps,_that.exchange,_that.fiveDayTrend,_that.marketCap,_that.name,_that.open,_that.pe,_that.previousClose,_that.price,_that.priceAvg200,_that.priceAvg50,_that.sharesOutstanding,_that.stockId,_that.symbol,_that.timestamp,_that.volume,_that.yearHigh,_that.yearLow,_that.logoUrl,_that.type,_that.count,_that.dateHours,_that.ticks,_that.primaryLogoUrl,_that.secondaryLogoUrl,_that.tertiaryLogoUrl,_that.status,_that.updatedFrom,_that.country,_that.exchangeSortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int avgVolume,  double change,  double changesPercentage,  double dayHigh,  double dayLow,  String earningsAnnouncement,  double eps,  String exchange,  List<FiveDayTrend> fiveDayTrend,  int marketCap,  String name,  double open,  double pe,  double previousClose,  double price,  double priceAvg200,  double priceAvg50,  int sharesOutstanding,  String stockId,  String symbol,  int timestamp,  int volume,  double yearHigh,  double yearLow,  String logoUrl,  String type,  int count,  String dateHours,  int ticks,  String primaryLogoUrl,  String secondaryLogoUrl,  String tertiaryLogoUrl,  String status,  String updatedFrom,  String country,  int exchangeSortOrder)?  $default,) {final _that = this;
switch (_that) {
case _Stock() when $default != null:
return $default(_that.avgVolume,_that.change,_that.changesPercentage,_that.dayHigh,_that.dayLow,_that.earningsAnnouncement,_that.eps,_that.exchange,_that.fiveDayTrend,_that.marketCap,_that.name,_that.open,_that.pe,_that.previousClose,_that.price,_that.priceAvg200,_that.priceAvg50,_that.sharesOutstanding,_that.stockId,_that.symbol,_that.timestamp,_that.volume,_that.yearHigh,_that.yearLow,_that.logoUrl,_that.type,_that.count,_that.dateHours,_that.ticks,_that.primaryLogoUrl,_that.secondaryLogoUrl,_that.tertiaryLogoUrl,_that.status,_that.updatedFrom,_that.country,_that.exchangeSortOrder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stock implements Stock {
  const _Stock({this.avgVolume = 0, this.change = 0.0, this.changesPercentage = 0.0, this.dayHigh = 0.0, this.dayLow = 0.0, this.earningsAnnouncement = '', this.eps = 0.0, this.exchange = '', final  List<FiveDayTrend> fiveDayTrend = const [], this.marketCap = 0, this.name = '', this.open = 0.0, this.pe = 0.0, this.previousClose = 0.0, this.price = 0.0, this.priceAvg200 = 0.0, this.priceAvg50 = 0.0, this.sharesOutstanding = 0, this.stockId = '', this.symbol = '', this.timestamp = 0, this.volume = 0, this.yearHigh = 0.0, this.yearLow = 0.0, this.logoUrl = '', this.type = '', this.count = 0, this.dateHours = '', this.ticks = 0, this.primaryLogoUrl = '', this.secondaryLogoUrl = '', this.tertiaryLogoUrl = '', this.status = '', this.updatedFrom = '', this.country = '', this.exchangeSortOrder = 0}): _fiveDayTrend = fiveDayTrend;
  factory _Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);

@override@JsonKey() final  int avgVolume;
@override@JsonKey() final  double change;
@override@JsonKey() final  double changesPercentage;
@override@JsonKey() final  double dayHigh;
@override@JsonKey() final  double dayLow;
@override@JsonKey() final  String earningsAnnouncement;
@override@JsonKey() final  double eps;
@override@JsonKey() final  String exchange;
 final  List<FiveDayTrend> _fiveDayTrend;
@override@JsonKey() List<FiveDayTrend> get fiveDayTrend {
  if (_fiveDayTrend is EqualUnmodifiableListView) return _fiveDayTrend;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fiveDayTrend);
}

@override@JsonKey() final  int marketCap;
@override@JsonKey() final  String name;
@override@JsonKey() final  double open;
@override@JsonKey() final  double pe;
@override@JsonKey() final  double previousClose;
@override@JsonKey() final  double price;
@override@JsonKey() final  double priceAvg200;
@override@JsonKey() final  double priceAvg50;
@override@JsonKey() final  int sharesOutstanding;
@override@JsonKey() final  String stockId;
@override@JsonKey() final  String symbol;
@override@JsonKey() final  int timestamp;
@override@JsonKey() final  int volume;
@override@JsonKey() final  double yearHigh;
@override@JsonKey() final  double yearLow;
@override@JsonKey() final  String logoUrl;
@override@JsonKey() final  String type;
@override@JsonKey() final  int count;
@override@JsonKey() final  String dateHours;
@override@JsonKey() final  int ticks;
@override@JsonKey() final  String primaryLogoUrl;
@override@JsonKey() final  String secondaryLogoUrl;
@override@JsonKey() final  String tertiaryLogoUrl;
@override@JsonKey() final  String status;
@override@JsonKey() final  String updatedFrom;
@override@JsonKey() final  String country;
@override@JsonKey() final  int exchangeSortOrder;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stock&&(identical(other.avgVolume, avgVolume) || other.avgVolume == avgVolume)&&(identical(other.change, change) || other.change == change)&&(identical(other.changesPercentage, changesPercentage) || other.changesPercentage == changesPercentage)&&(identical(other.dayHigh, dayHigh) || other.dayHigh == dayHigh)&&(identical(other.dayLow, dayLow) || other.dayLow == dayLow)&&(identical(other.earningsAnnouncement, earningsAnnouncement) || other.earningsAnnouncement == earningsAnnouncement)&&(identical(other.eps, eps) || other.eps == eps)&&(identical(other.exchange, exchange) || other.exchange == exchange)&&const DeepCollectionEquality().equals(other._fiveDayTrend, _fiveDayTrend)&&(identical(other.marketCap, marketCap) || other.marketCap == marketCap)&&(identical(other.name, name) || other.name == name)&&(identical(other.open, open) || other.open == open)&&(identical(other.pe, pe) || other.pe == pe)&&(identical(other.previousClose, previousClose) || other.previousClose == previousClose)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceAvg200, priceAvg200) || other.priceAvg200 == priceAvg200)&&(identical(other.priceAvg50, priceAvg50) || other.priceAvg50 == priceAvg50)&&(identical(other.sharesOutstanding, sharesOutstanding) || other.sharesOutstanding == sharesOutstanding)&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.yearHigh, yearHigh) || other.yearHigh == yearHigh)&&(identical(other.yearLow, yearLow) || other.yearLow == yearLow)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.type, type) || other.type == type)&&(identical(other.count, count) || other.count == count)&&(identical(other.dateHours, dateHours) || other.dateHours == dateHours)&&(identical(other.ticks, ticks) || other.ticks == ticks)&&(identical(other.primaryLogoUrl, primaryLogoUrl) || other.primaryLogoUrl == primaryLogoUrl)&&(identical(other.secondaryLogoUrl, secondaryLogoUrl) || other.secondaryLogoUrl == secondaryLogoUrl)&&(identical(other.tertiaryLogoUrl, tertiaryLogoUrl) || other.tertiaryLogoUrl == tertiaryLogoUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.updatedFrom, updatedFrom) || other.updatedFrom == updatedFrom)&&(identical(other.country, country) || other.country == country)&&(identical(other.exchangeSortOrder, exchangeSortOrder) || other.exchangeSortOrder == exchangeSortOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,avgVolume,change,changesPercentage,dayHigh,dayLow,earningsAnnouncement,eps,exchange,const DeepCollectionEquality().hash(_fiveDayTrend),marketCap,name,open,pe,previousClose,price,priceAvg200,priceAvg50,sharesOutstanding,stockId,symbol,timestamp,volume,yearHigh,yearLow,logoUrl,type,count,dateHours,ticks,primaryLogoUrl,secondaryLogoUrl,tertiaryLogoUrl,status,updatedFrom,country,exchangeSortOrder]);

@override
String toString() {
  return 'Stock(avgVolume: $avgVolume, change: $change, changesPercentage: $changesPercentage, dayHigh: $dayHigh, dayLow: $dayLow, earningsAnnouncement: $earningsAnnouncement, eps: $eps, exchange: $exchange, fiveDayTrend: $fiveDayTrend, marketCap: $marketCap, name: $name, open: $open, pe: $pe, previousClose: $previousClose, price: $price, priceAvg200: $priceAvg200, priceAvg50: $priceAvg50, sharesOutstanding: $sharesOutstanding, stockId: $stockId, symbol: $symbol, timestamp: $timestamp, volume: $volume, yearHigh: $yearHigh, yearLow: $yearLow, logoUrl: $logoUrl, type: $type, count: $count, dateHours: $dateHours, ticks: $ticks, primaryLogoUrl: $primaryLogoUrl, secondaryLogoUrl: $secondaryLogoUrl, tertiaryLogoUrl: $tertiaryLogoUrl, status: $status, updatedFrom: $updatedFrom, country: $country, exchangeSortOrder: $exchangeSortOrder)';
}


}

/// @nodoc
abstract mixin class _$StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$StockCopyWith(_Stock value, $Res Function(_Stock) _then) = __$StockCopyWithImpl;
@override @useResult
$Res call({
 int avgVolume, double change, double changesPercentage, double dayHigh, double dayLow, String earningsAnnouncement, double eps, String exchange, List<FiveDayTrend> fiveDayTrend, int marketCap, String name, double open, double pe, double previousClose, double price, double priceAvg200, double priceAvg50, int sharesOutstanding, String stockId, String symbol, int timestamp, int volume, double yearHigh, double yearLow, String logoUrl, String type, int count, String dateHours, int ticks, String primaryLogoUrl, String secondaryLogoUrl, String tertiaryLogoUrl, String status, String updatedFrom, String country, int exchangeSortOrder
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
@override @pragma('vm:prefer-inline') $Res call({Object? avgVolume = null,Object? change = null,Object? changesPercentage = null,Object? dayHigh = null,Object? dayLow = null,Object? earningsAnnouncement = null,Object? eps = null,Object? exchange = null,Object? fiveDayTrend = null,Object? marketCap = null,Object? name = null,Object? open = null,Object? pe = null,Object? previousClose = null,Object? price = null,Object? priceAvg200 = null,Object? priceAvg50 = null,Object? sharesOutstanding = null,Object? stockId = null,Object? symbol = null,Object? timestamp = null,Object? volume = null,Object? yearHigh = null,Object? yearLow = null,Object? logoUrl = null,Object? type = null,Object? count = null,Object? dateHours = null,Object? ticks = null,Object? primaryLogoUrl = null,Object? secondaryLogoUrl = null,Object? tertiaryLogoUrl = null,Object? status = null,Object? updatedFrom = null,Object? country = null,Object? exchangeSortOrder = null,}) {
  return _then(_Stock(
avgVolume: null == avgVolume ? _self.avgVolume : avgVolume // ignore: cast_nullable_to_non_nullable
as int,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double,changesPercentage: null == changesPercentage ? _self.changesPercentage : changesPercentage // ignore: cast_nullable_to_non_nullable
as double,dayHigh: null == dayHigh ? _self.dayHigh : dayHigh // ignore: cast_nullable_to_non_nullable
as double,dayLow: null == dayLow ? _self.dayLow : dayLow // ignore: cast_nullable_to_non_nullable
as double,earningsAnnouncement: null == earningsAnnouncement ? _self.earningsAnnouncement : earningsAnnouncement // ignore: cast_nullable_to_non_nullable
as String,eps: null == eps ? _self.eps : eps // ignore: cast_nullable_to_non_nullable
as double,exchange: null == exchange ? _self.exchange : exchange // ignore: cast_nullable_to_non_nullable
as String,fiveDayTrend: null == fiveDayTrend ? _self._fiveDayTrend : fiveDayTrend // ignore: cast_nullable_to_non_nullable
as List<FiveDayTrend>,marketCap: null == marketCap ? _self.marketCap : marketCap // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,open: null == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as double,pe: null == pe ? _self.pe : pe // ignore: cast_nullable_to_non_nullable
as double,previousClose: null == previousClose ? _self.previousClose : previousClose // ignore: cast_nullable_to_non_nullable
as double,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,priceAvg200: null == priceAvg200 ? _self.priceAvg200 : priceAvg200 // ignore: cast_nullable_to_non_nullable
as double,priceAvg50: null == priceAvg50 ? _self.priceAvg50 : priceAvg50 // ignore: cast_nullable_to_non_nullable
as double,sharesOutstanding: null == sharesOutstanding ? _self.sharesOutstanding : sharesOutstanding // ignore: cast_nullable_to_non_nullable
as int,stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as int,yearHigh: null == yearHigh ? _self.yearHigh : yearHigh // ignore: cast_nullable_to_non_nullable
as double,yearLow: null == yearLow ? _self.yearLow : yearLow // ignore: cast_nullable_to_non_nullable
as double,logoUrl: null == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,dateHours: null == dateHours ? _self.dateHours : dateHours // ignore: cast_nullable_to_non_nullable
as String,ticks: null == ticks ? _self.ticks : ticks // ignore: cast_nullable_to_non_nullable
as int,primaryLogoUrl: null == primaryLogoUrl ? _self.primaryLogoUrl : primaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String,secondaryLogoUrl: null == secondaryLogoUrl ? _self.secondaryLogoUrl : secondaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String,tertiaryLogoUrl: null == tertiaryLogoUrl ? _self.tertiaryLogoUrl : tertiaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,updatedFrom: null == updatedFrom ? _self.updatedFrom : updatedFrom // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,exchangeSortOrder: null == exchangeSortOrder ? _self.exchangeSortOrder : exchangeSortOrder // ignore: cast_nullable_to_non_nullable
as int,
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
