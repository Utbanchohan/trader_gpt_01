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

 String get stockId;@JsonKey(name: "_id") String? get id; String? get type; String get symbol;@StringOrDoubleConverter() double get price; String? get name; String? get logoUrl; String? get primaryLogoUrl; String? get secondaryLogoUrl; String? get tertiaryLogoUrl; double? get changesPercentage; double? get change; bool? get showTrendChart; bool? get isSelected;
/// Create a copy of Stock
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockCopyWith<Stock> get copyWith => _$StockCopyWithImpl<Stock>(this as Stock, _$identity);

  /// Serializes this Stock to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Stock&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.primaryLogoUrl, primaryLogoUrl) || other.primaryLogoUrl == primaryLogoUrl)&&(identical(other.secondaryLogoUrl, secondaryLogoUrl) || other.secondaryLogoUrl == secondaryLogoUrl)&&(identical(other.tertiaryLogoUrl, tertiaryLogoUrl) || other.tertiaryLogoUrl == tertiaryLogoUrl)&&(identical(other.changesPercentage, changesPercentage) || other.changesPercentage == changesPercentage)&&(identical(other.change, change) || other.change == change)&&(identical(other.showTrendChart, showTrendChart) || other.showTrendChart == showTrendChart)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stockId,id,type,symbol,price,name,logoUrl,primaryLogoUrl,secondaryLogoUrl,tertiaryLogoUrl,changesPercentage,change,showTrendChart,isSelected);

@override
String toString() {
  return 'Stock(stockId: $stockId, id: $id, type: $type, symbol: $symbol, price: $price, name: $name, logoUrl: $logoUrl, primaryLogoUrl: $primaryLogoUrl, secondaryLogoUrl: $secondaryLogoUrl, tertiaryLogoUrl: $tertiaryLogoUrl, changesPercentage: $changesPercentage, change: $change, showTrendChart: $showTrendChart, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $StockCopyWith<$Res>  {
  factory $StockCopyWith(Stock value, $Res Function(Stock) _then) = _$StockCopyWithImpl;
@useResult
$Res call({
 String stockId,@JsonKey(name: "_id") String? id, String? type, String symbol,@StringOrDoubleConverter() double price, String? name, String? logoUrl, String? primaryLogoUrl, String? secondaryLogoUrl, String? tertiaryLogoUrl, double? changesPercentage, double? change, bool? showTrendChart, bool? isSelected
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
@pragma('vm:prefer-inline') @override $Res call({Object? stockId = null,Object? id = freezed,Object? type = freezed,Object? symbol = null,Object? price = null,Object? name = freezed,Object? logoUrl = freezed,Object? primaryLogoUrl = freezed,Object? secondaryLogoUrl = freezed,Object? tertiaryLogoUrl = freezed,Object? changesPercentage = freezed,Object? change = freezed,Object? showTrendChart = freezed,Object? isSelected = freezed,}) {
  return _then(_self.copyWith(
stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,primaryLogoUrl: freezed == primaryLogoUrl ? _self.primaryLogoUrl : primaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,secondaryLogoUrl: freezed == secondaryLogoUrl ? _self.secondaryLogoUrl : secondaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,tertiaryLogoUrl: freezed == tertiaryLogoUrl ? _self.tertiaryLogoUrl : tertiaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,changesPercentage: freezed == changesPercentage ? _self.changesPercentage : changesPercentage // ignore: cast_nullable_to_non_nullable
as double?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,showTrendChart: freezed == showTrendChart ? _self.showTrendChart : showTrendChart // ignore: cast_nullable_to_non_nullable
as bool?,isSelected: freezed == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stockId, @JsonKey(name: "_id")  String? id,  String? type,  String symbol, @StringOrDoubleConverter()  double price,  String? name,  String? logoUrl,  String? primaryLogoUrl,  String? secondaryLogoUrl,  String? tertiaryLogoUrl,  double? changesPercentage,  double? change,  bool? showTrendChart,  bool? isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Stock() when $default != null:
return $default(_that.stockId,_that.id,_that.type,_that.symbol,_that.price,_that.name,_that.logoUrl,_that.primaryLogoUrl,_that.secondaryLogoUrl,_that.tertiaryLogoUrl,_that.changesPercentage,_that.change,_that.showTrendChart,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stockId, @JsonKey(name: "_id")  String? id,  String? type,  String symbol, @StringOrDoubleConverter()  double price,  String? name,  String? logoUrl,  String? primaryLogoUrl,  String? secondaryLogoUrl,  String? tertiaryLogoUrl,  double? changesPercentage,  double? change,  bool? showTrendChart,  bool? isSelected)  $default,) {final _that = this;
switch (_that) {
case _Stock():
return $default(_that.stockId,_that.id,_that.type,_that.symbol,_that.price,_that.name,_that.logoUrl,_that.primaryLogoUrl,_that.secondaryLogoUrl,_that.tertiaryLogoUrl,_that.changesPercentage,_that.change,_that.showTrendChart,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stockId, @JsonKey(name: "_id")  String? id,  String? type,  String symbol, @StringOrDoubleConverter()  double price,  String? name,  String? logoUrl,  String? primaryLogoUrl,  String? secondaryLogoUrl,  String? tertiaryLogoUrl,  double? changesPercentage,  double? change,  bool? showTrendChart,  bool? isSelected)?  $default,) {final _that = this;
switch (_that) {
case _Stock() when $default != null:
return $default(_that.stockId,_that.id,_that.type,_that.symbol,_that.price,_that.name,_that.logoUrl,_that.primaryLogoUrl,_that.secondaryLogoUrl,_that.tertiaryLogoUrl,_that.changesPercentage,_that.change,_that.showTrendChart,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Stock implements Stock {
  const _Stock({required this.stockId, @JsonKey(name: "_id") this.id, this.type, required this.symbol, @StringOrDoubleConverter() required this.price, this.name, this.logoUrl, this.primaryLogoUrl, this.secondaryLogoUrl, this.tertiaryLogoUrl, this.changesPercentage, this.change, this.showTrendChart, this.isSelected});
  factory _Stock.fromJson(Map<String, dynamic> json) => _$StockFromJson(json);

@override final  String stockId;
@override@JsonKey(name: "_id") final  String? id;
@override final  String? type;
@override final  String symbol;
@override@StringOrDoubleConverter() final  double price;
@override final  String? name;
@override final  String? logoUrl;
@override final  String? primaryLogoUrl;
@override final  String? secondaryLogoUrl;
@override final  String? tertiaryLogoUrl;
@override final  double? changesPercentage;
@override final  double? change;
@override final  bool? showTrendChart;
@override final  bool? isSelected;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stock&&(identical(other.stockId, stockId) || other.stockId == stockId)&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.price, price) || other.price == price)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.primaryLogoUrl, primaryLogoUrl) || other.primaryLogoUrl == primaryLogoUrl)&&(identical(other.secondaryLogoUrl, secondaryLogoUrl) || other.secondaryLogoUrl == secondaryLogoUrl)&&(identical(other.tertiaryLogoUrl, tertiaryLogoUrl) || other.tertiaryLogoUrl == tertiaryLogoUrl)&&(identical(other.changesPercentage, changesPercentage) || other.changesPercentage == changesPercentage)&&(identical(other.change, change) || other.change == change)&&(identical(other.showTrendChart, showTrendChart) || other.showTrendChart == showTrendChart)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stockId,id,type,symbol,price,name,logoUrl,primaryLogoUrl,secondaryLogoUrl,tertiaryLogoUrl,changesPercentage,change,showTrendChart,isSelected);

@override
String toString() {
  return 'Stock(stockId: $stockId, id: $id, type: $type, symbol: $symbol, price: $price, name: $name, logoUrl: $logoUrl, primaryLogoUrl: $primaryLogoUrl, secondaryLogoUrl: $secondaryLogoUrl, tertiaryLogoUrl: $tertiaryLogoUrl, changesPercentage: $changesPercentage, change: $change, showTrendChart: $showTrendChart, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$StockCopyWith(_Stock value, $Res Function(_Stock) _then) = __$StockCopyWithImpl;
@override @useResult
$Res call({
 String stockId,@JsonKey(name: "_id") String? id, String? type, String symbol,@StringOrDoubleConverter() double price, String? name, String? logoUrl, String? primaryLogoUrl, String? secondaryLogoUrl, String? tertiaryLogoUrl, double? changesPercentage, double? change, bool? showTrendChart, bool? isSelected
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
@override @pragma('vm:prefer-inline') $Res call({Object? stockId = null,Object? id = freezed,Object? type = freezed,Object? symbol = null,Object? price = null,Object? name = freezed,Object? logoUrl = freezed,Object? primaryLogoUrl = freezed,Object? secondaryLogoUrl = freezed,Object? tertiaryLogoUrl = freezed,Object? changesPercentage = freezed,Object? change = freezed,Object? showTrendChart = freezed,Object? isSelected = freezed,}) {
  return _then(_Stock(
stockId: null == stockId ? _self.stockId : stockId // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,primaryLogoUrl: freezed == primaryLogoUrl ? _self.primaryLogoUrl : primaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,secondaryLogoUrl: freezed == secondaryLogoUrl ? _self.secondaryLogoUrl : secondaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,tertiaryLogoUrl: freezed == tertiaryLogoUrl ? _self.tertiaryLogoUrl : tertiaryLogoUrl // ignore: cast_nullable_to_non_nullable
as String?,changesPercentage: freezed == changesPercentage ? _self.changesPercentage : changesPercentage // ignore: cast_nullable_to_non_nullable
as double?,change: freezed == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as double?,showTrendChart: freezed == showTrendChart ? _self.showTrendChart : showTrendChart // ignore: cast_nullable_to_non_nullable
as bool?,isSelected: freezed == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
