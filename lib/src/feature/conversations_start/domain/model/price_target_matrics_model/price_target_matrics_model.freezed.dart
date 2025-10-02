// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_target_matrics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PriceTargetMatrics {

 List<PriceTargetData> get data; String? get msg; int? get status;
/// Create a copy of PriceTargetMatrics
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceTargetMatricsCopyWith<PriceTargetMatrics> get copyWith => _$PriceTargetMatricsCopyWithImpl<PriceTargetMatrics>(this as PriceTargetMatrics, _$identity);

  /// Serializes this PriceTargetMatrics to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceTargetMatrics&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),msg,status);

@override
String toString() {
  return 'PriceTargetMatrics(data: $data, msg: $msg, status: $status)';
}


}

/// @nodoc
abstract mixin class $PriceTargetMatricsCopyWith<$Res>  {
  factory $PriceTargetMatricsCopyWith(PriceTargetMatrics value, $Res Function(PriceTargetMatrics) _then) = _$PriceTargetMatricsCopyWithImpl;
@useResult
$Res call({
 List<PriceTargetData> data, String? msg, int? status
});




}
/// @nodoc
class _$PriceTargetMatricsCopyWithImpl<$Res>
    implements $PriceTargetMatricsCopyWith<$Res> {
  _$PriceTargetMatricsCopyWithImpl(this._self, this._then);

  final PriceTargetMatrics _self;
  final $Res Function(PriceTargetMatrics) _then;

/// Create a copy of PriceTargetMatrics
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PriceTargetData>,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceTargetMatrics].
extension PriceTargetMatricsPatterns on PriceTargetMatrics {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceTargetMatrics value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceTargetMatrics() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceTargetMatrics value)  $default,){
final _that = this;
switch (_that) {
case _PriceTargetMatrics():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceTargetMatrics value)?  $default,){
final _that = this;
switch (_that) {
case _PriceTargetMatrics() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PriceTargetData> data,  String? msg,  int? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceTargetMatrics() when $default != null:
return $default(_that.data,_that.msg,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PriceTargetData> data,  String? msg,  int? status)  $default,) {final _that = this;
switch (_that) {
case _PriceTargetMatrics():
return $default(_that.data,_that.msg,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PriceTargetData> data,  String? msg,  int? status)?  $default,) {final _that = this;
switch (_that) {
case _PriceTargetMatrics() when $default != null:
return $default(_that.data,_that.msg,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceTargetMatrics implements PriceTargetMatrics {
  const _PriceTargetMatrics({required final  List<PriceTargetData> data, this.msg, this.status}): _data = data;
  factory _PriceTargetMatrics.fromJson(Map<String, dynamic> json) => _$PriceTargetMatricsFromJson(json);

 final  List<PriceTargetData> _data;
@override List<PriceTargetData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  String? msg;
@override final  int? status;

/// Create a copy of PriceTargetMatrics
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceTargetMatricsCopyWith<_PriceTargetMatrics> get copyWith => __$PriceTargetMatricsCopyWithImpl<_PriceTargetMatrics>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceTargetMatricsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceTargetMatrics&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),msg,status);

@override
String toString() {
  return 'PriceTargetMatrics(data: $data, msg: $msg, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PriceTargetMatricsCopyWith<$Res> implements $PriceTargetMatricsCopyWith<$Res> {
  factory _$PriceTargetMatricsCopyWith(_PriceTargetMatrics value, $Res Function(_PriceTargetMatrics) _then) = __$PriceTargetMatricsCopyWithImpl;
@override @useResult
$Res call({
 List<PriceTargetData> data, String? msg, int? status
});




}
/// @nodoc
class __$PriceTargetMatricsCopyWithImpl<$Res>
    implements _$PriceTargetMatricsCopyWith<$Res> {
  __$PriceTargetMatricsCopyWithImpl(this._self, this._then);

  final _PriceTargetMatrics _self;
  final $Res Function(_PriceTargetMatrics) _then;

/// Create a copy of PriceTargetMatrics
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? msg = freezed,Object? status = freezed,}) {
  return _then(_PriceTargetMatrics(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PriceTargetData>,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$PriceTargetData {

 String get symbol;@JsonKey(name: 'target_consensus') double? get targetConsensus; double? get high; double? get low; double? get median;@JsonKey(name: 'close_price') double? get closePrice;@JsonKey(name: 'last_updated_at') String? get lastUpdatedAt;@JsonKey(name: 'high_percentage') double? get highPercentage;@JsonKey(name: 'low_percentage') double? get lowPercentage;@JsonKey(name: 'median_percentage') double? get medianPercentage;
/// Create a copy of PriceTargetData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceTargetDataCopyWith<PriceTargetData> get copyWith => _$PriceTargetDataCopyWithImpl<PriceTargetData>(this as PriceTargetData, _$identity);

  /// Serializes this PriceTargetData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceTargetData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.targetConsensus, targetConsensus) || other.targetConsensus == targetConsensus)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.median, median) || other.median == median)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.highPercentage, highPercentage) || other.highPercentage == highPercentage)&&(identical(other.lowPercentage, lowPercentage) || other.lowPercentage == lowPercentage)&&(identical(other.medianPercentage, medianPercentage) || other.medianPercentage == medianPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,targetConsensus,high,low,median,closePrice,lastUpdatedAt,highPercentage,lowPercentage,medianPercentage);

@override
String toString() {
  return 'PriceTargetData(symbol: $symbol, targetConsensus: $targetConsensus, high: $high, low: $low, median: $median, closePrice: $closePrice, lastUpdatedAt: $lastUpdatedAt, highPercentage: $highPercentage, lowPercentage: $lowPercentage, medianPercentage: $medianPercentage)';
}


}

/// @nodoc
abstract mixin class $PriceTargetDataCopyWith<$Res>  {
  factory $PriceTargetDataCopyWith(PriceTargetData value, $Res Function(PriceTargetData) _then) = _$PriceTargetDataCopyWithImpl;
@useResult
$Res call({
 String symbol,@JsonKey(name: 'target_consensus') double? targetConsensus, double? high, double? low, double? median,@JsonKey(name: 'close_price') double? closePrice,@JsonKey(name: 'last_updated_at') String? lastUpdatedAt,@JsonKey(name: 'high_percentage') double? highPercentage,@JsonKey(name: 'low_percentage') double? lowPercentage,@JsonKey(name: 'median_percentage') double? medianPercentage
});




}
/// @nodoc
class _$PriceTargetDataCopyWithImpl<$Res>
    implements $PriceTargetDataCopyWith<$Res> {
  _$PriceTargetDataCopyWithImpl(this._self, this._then);

  final PriceTargetData _self;
  final $Res Function(PriceTargetData) _then;

/// Create a copy of PriceTargetData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? symbol = null,Object? targetConsensus = freezed,Object? high = freezed,Object? low = freezed,Object? median = freezed,Object? closePrice = freezed,Object? lastUpdatedAt = freezed,Object? highPercentage = freezed,Object? lowPercentage = freezed,Object? medianPercentage = freezed,}) {
  return _then(_self.copyWith(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,targetConsensus: freezed == targetConsensus ? _self.targetConsensus : targetConsensus // ignore: cast_nullable_to_non_nullable
as double?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double?,low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double?,median: freezed == median ? _self.median : median // ignore: cast_nullable_to_non_nullable
as double?,closePrice: freezed == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double?,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String?,highPercentage: freezed == highPercentage ? _self.highPercentage : highPercentage // ignore: cast_nullable_to_non_nullable
as double?,lowPercentage: freezed == lowPercentage ? _self.lowPercentage : lowPercentage // ignore: cast_nullable_to_non_nullable
as double?,medianPercentage: freezed == medianPercentage ? _self.medianPercentage : medianPercentage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PriceTargetData].
extension PriceTargetDataPatterns on PriceTargetData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceTargetData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceTargetData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceTargetData value)  $default,){
final _that = this;
switch (_that) {
case _PriceTargetData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceTargetData value)?  $default,){
final _that = this;
switch (_that) {
case _PriceTargetData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String symbol, @JsonKey(name: 'target_consensus')  double? targetConsensus,  double? high,  double? low,  double? median, @JsonKey(name: 'close_price')  double? closePrice, @JsonKey(name: 'last_updated_at')  String? lastUpdatedAt, @JsonKey(name: 'high_percentage')  double? highPercentage, @JsonKey(name: 'low_percentage')  double? lowPercentage, @JsonKey(name: 'median_percentage')  double? medianPercentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceTargetData() when $default != null:
return $default(_that.symbol,_that.targetConsensus,_that.high,_that.low,_that.median,_that.closePrice,_that.lastUpdatedAt,_that.highPercentage,_that.lowPercentage,_that.medianPercentage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String symbol, @JsonKey(name: 'target_consensus')  double? targetConsensus,  double? high,  double? low,  double? median, @JsonKey(name: 'close_price')  double? closePrice, @JsonKey(name: 'last_updated_at')  String? lastUpdatedAt, @JsonKey(name: 'high_percentage')  double? highPercentage, @JsonKey(name: 'low_percentage')  double? lowPercentage, @JsonKey(name: 'median_percentage')  double? medianPercentage)  $default,) {final _that = this;
switch (_that) {
case _PriceTargetData():
return $default(_that.symbol,_that.targetConsensus,_that.high,_that.low,_that.median,_that.closePrice,_that.lastUpdatedAt,_that.highPercentage,_that.lowPercentage,_that.medianPercentage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String symbol, @JsonKey(name: 'target_consensus')  double? targetConsensus,  double? high,  double? low,  double? median, @JsonKey(name: 'close_price')  double? closePrice, @JsonKey(name: 'last_updated_at')  String? lastUpdatedAt, @JsonKey(name: 'high_percentage')  double? highPercentage, @JsonKey(name: 'low_percentage')  double? lowPercentage, @JsonKey(name: 'median_percentage')  double? medianPercentage)?  $default,) {final _that = this;
switch (_that) {
case _PriceTargetData() when $default != null:
return $default(_that.symbol,_that.targetConsensus,_that.high,_that.low,_that.median,_that.closePrice,_that.lastUpdatedAt,_that.highPercentage,_that.lowPercentage,_that.medianPercentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceTargetData implements PriceTargetData {
  const _PriceTargetData({required this.symbol, @JsonKey(name: 'target_consensus') this.targetConsensus, this.high, this.low, this.median, @JsonKey(name: 'close_price') this.closePrice, @JsonKey(name: 'last_updated_at') this.lastUpdatedAt, @JsonKey(name: 'high_percentage') this.highPercentage, @JsonKey(name: 'low_percentage') this.lowPercentage, @JsonKey(name: 'median_percentage') this.medianPercentage});
  factory _PriceTargetData.fromJson(Map<String, dynamic> json) => _$PriceTargetDataFromJson(json);

@override final  String symbol;
@override@JsonKey(name: 'target_consensus') final  double? targetConsensus;
@override final  double? high;
@override final  double? low;
@override final  double? median;
@override@JsonKey(name: 'close_price') final  double? closePrice;
@override@JsonKey(name: 'last_updated_at') final  String? lastUpdatedAt;
@override@JsonKey(name: 'high_percentage') final  double? highPercentage;
@override@JsonKey(name: 'low_percentage') final  double? lowPercentage;
@override@JsonKey(name: 'median_percentage') final  double? medianPercentage;

/// Create a copy of PriceTargetData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceTargetDataCopyWith<_PriceTargetData> get copyWith => __$PriceTargetDataCopyWithImpl<_PriceTargetData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceTargetDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceTargetData&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.targetConsensus, targetConsensus) || other.targetConsensus == targetConsensus)&&(identical(other.high, high) || other.high == high)&&(identical(other.low, low) || other.low == low)&&(identical(other.median, median) || other.median == median)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.highPercentage, highPercentage) || other.highPercentage == highPercentage)&&(identical(other.lowPercentage, lowPercentage) || other.lowPercentage == lowPercentage)&&(identical(other.medianPercentage, medianPercentage) || other.medianPercentage == medianPercentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,symbol,targetConsensus,high,low,median,closePrice,lastUpdatedAt,highPercentage,lowPercentage,medianPercentage);

@override
String toString() {
  return 'PriceTargetData(symbol: $symbol, targetConsensus: $targetConsensus, high: $high, low: $low, median: $median, closePrice: $closePrice, lastUpdatedAt: $lastUpdatedAt, highPercentage: $highPercentage, lowPercentage: $lowPercentage, medianPercentage: $medianPercentage)';
}


}

/// @nodoc
abstract mixin class _$PriceTargetDataCopyWith<$Res> implements $PriceTargetDataCopyWith<$Res> {
  factory _$PriceTargetDataCopyWith(_PriceTargetData value, $Res Function(_PriceTargetData) _then) = __$PriceTargetDataCopyWithImpl;
@override @useResult
$Res call({
 String symbol,@JsonKey(name: 'target_consensus') double? targetConsensus, double? high, double? low, double? median,@JsonKey(name: 'close_price') double? closePrice,@JsonKey(name: 'last_updated_at') String? lastUpdatedAt,@JsonKey(name: 'high_percentage') double? highPercentage,@JsonKey(name: 'low_percentage') double? lowPercentage,@JsonKey(name: 'median_percentage') double? medianPercentage
});




}
/// @nodoc
class __$PriceTargetDataCopyWithImpl<$Res>
    implements _$PriceTargetDataCopyWith<$Res> {
  __$PriceTargetDataCopyWithImpl(this._self, this._then);

  final _PriceTargetData _self;
  final $Res Function(_PriceTargetData) _then;

/// Create a copy of PriceTargetData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? symbol = null,Object? targetConsensus = freezed,Object? high = freezed,Object? low = freezed,Object? median = freezed,Object? closePrice = freezed,Object? lastUpdatedAt = freezed,Object? highPercentage = freezed,Object? lowPercentage = freezed,Object? medianPercentage = freezed,}) {
  return _then(_PriceTargetData(
symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,targetConsensus: freezed == targetConsensus ? _self.targetConsensus : targetConsensus // ignore: cast_nullable_to_non_nullable
as double?,high: freezed == high ? _self.high : high // ignore: cast_nullable_to_non_nullable
as double?,low: freezed == low ? _self.low : low // ignore: cast_nullable_to_non_nullable
as double?,median: freezed == median ? _self.median : median // ignore: cast_nullable_to_non_nullable
as double?,closePrice: freezed == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double?,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String?,highPercentage: freezed == highPercentage ? _self.highPercentage : highPercentage // ignore: cast_nullable_to_non_nullable
as double?,lowPercentage: freezed == lowPercentage ? _self.lowPercentage : lowPercentage // ignore: cast_nullable_to_non_nullable
as double?,medianPercentage: freezed == medianPercentage ? _self.medianPercentage : medianPercentage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
