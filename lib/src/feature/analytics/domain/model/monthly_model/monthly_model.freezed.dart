// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProbabilityResponse {

@JsonKey(name: "Probability") Probability? get probability;
/// Create a copy of ProbabilityResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProbabilityResponseCopyWith<ProbabilityResponse> get copyWith => _$ProbabilityResponseCopyWithImpl<ProbabilityResponse>(this as ProbabilityResponse, _$identity);

  /// Serializes this ProbabilityResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProbabilityResponse&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,probability);

@override
String toString() {
  return 'ProbabilityResponse(probability: $probability)';
}


}

/// @nodoc
abstract mixin class $ProbabilityResponseCopyWith<$Res>  {
  factory $ProbabilityResponseCopyWith(ProbabilityResponse value, $Res Function(ProbabilityResponse) _then) = _$ProbabilityResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "Probability") Probability? probability
});


$ProbabilityCopyWith<$Res>? get probability;

}
/// @nodoc
class _$ProbabilityResponseCopyWithImpl<$Res>
    implements $ProbabilityResponseCopyWith<$Res> {
  _$ProbabilityResponseCopyWithImpl(this._self, this._then);

  final ProbabilityResponse _self;
  final $Res Function(ProbabilityResponse) _then;

/// Create a copy of ProbabilityResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? probability = freezed,}) {
  return _then(_self.copyWith(
probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as Probability?,
  ));
}
/// Create a copy of ProbabilityResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProbabilityCopyWith<$Res>? get probability {
    if (_self.probability == null) {
    return null;
  }

  return $ProbabilityCopyWith<$Res>(_self.probability!, (value) {
    return _then(_self.copyWith(probability: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProbabilityResponse].
extension ProbabilityResponsePatterns on ProbabilityResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProbabilityResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProbabilityResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProbabilityResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProbabilityResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProbabilityResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProbabilityResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "Probability")  Probability? probability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProbabilityResponse() when $default != null:
return $default(_that.probability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "Probability")  Probability? probability)  $default,) {final _that = this;
switch (_that) {
case _ProbabilityResponse():
return $default(_that.probability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "Probability")  Probability? probability)?  $default,) {final _that = this;
switch (_that) {
case _ProbabilityResponse() when $default != null:
return $default(_that.probability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProbabilityResponse implements ProbabilityResponse {
  const _ProbabilityResponse({@JsonKey(name: "Probability") this.probability});
  factory _ProbabilityResponse.fromJson(Map<String, dynamic> json) => _$ProbabilityResponseFromJson(json);

@override@JsonKey(name: "Probability") final  Probability? probability;

/// Create a copy of ProbabilityResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProbabilityResponseCopyWith<_ProbabilityResponse> get copyWith => __$ProbabilityResponseCopyWithImpl<_ProbabilityResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProbabilityResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProbabilityResponse&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,probability);

@override
String toString() {
  return 'ProbabilityResponse(probability: $probability)';
}


}

/// @nodoc
abstract mixin class _$ProbabilityResponseCopyWith<$Res> implements $ProbabilityResponseCopyWith<$Res> {
  factory _$ProbabilityResponseCopyWith(_ProbabilityResponse value, $Res Function(_ProbabilityResponse) _then) = __$ProbabilityResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "Probability") Probability? probability
});


@override $ProbabilityCopyWith<$Res>? get probability;

}
/// @nodoc
class __$ProbabilityResponseCopyWithImpl<$Res>
    implements _$ProbabilityResponseCopyWith<$Res> {
  __$ProbabilityResponseCopyWithImpl(this._self, this._then);

  final _ProbabilityResponse _self;
  final $Res Function(_ProbabilityResponse) _then;

/// Create a copy of ProbabilityResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? probability = freezed,}) {
  return _then(_ProbabilityResponse(
probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as Probability?,
  ));
}

/// Create a copy of ProbabilityResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProbabilityCopyWith<$Res>? get probability {
    if (_self.probability == null) {
    return null;
  }

  return $ProbabilityCopyWith<$Res>(_self.probability!, (value) {
    return _then(_self.copyWith(probability: value));
  });
}
}


/// @nodoc
mixin _$Probability {

@JsonKey(name: "January") double? get january;@JsonKey(name: "February") double? get february;@JsonKey(name: "March") double? get march;@JsonKey(name: "April") double? get april;@JsonKey(name: "May") double? get may;@JsonKey(name: "June") double? get june;@JsonKey(name: "July") double? get july;@JsonKey(name: "August") double? get august;@JsonKey(name: "September") double? get september;@JsonKey(name: "October") double? get october;@JsonKey(name: "November") double? get november;@JsonKey(name: "December") double? get december;
/// Create a copy of Probability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProbabilityCopyWith<Probability> get copyWith => _$ProbabilityCopyWithImpl<Probability>(this as Probability, _$identity);

  /// Serializes this Probability to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Probability&&(identical(other.january, january) || other.january == january)&&(identical(other.february, february) || other.february == february)&&(identical(other.march, march) || other.march == march)&&(identical(other.april, april) || other.april == april)&&(identical(other.may, may) || other.may == may)&&(identical(other.june, june) || other.june == june)&&(identical(other.july, july) || other.july == july)&&(identical(other.august, august) || other.august == august)&&(identical(other.september, september) || other.september == september)&&(identical(other.october, october) || other.october == october)&&(identical(other.november, november) || other.november == november)&&(identical(other.december, december) || other.december == december));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,january,february,march,april,may,june,july,august,september,october,november,december);

@override
String toString() {
  return 'Probability(january: $january, february: $february, march: $march, april: $april, may: $may, june: $june, july: $july, august: $august, september: $september, october: $october, november: $november, december: $december)';
}


}

/// @nodoc
abstract mixin class $ProbabilityCopyWith<$Res>  {
  factory $ProbabilityCopyWith(Probability value, $Res Function(Probability) _then) = _$ProbabilityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "January") double? january,@JsonKey(name: "February") double? february,@JsonKey(name: "March") double? march,@JsonKey(name: "April") double? april,@JsonKey(name: "May") double? may,@JsonKey(name: "June") double? june,@JsonKey(name: "July") double? july,@JsonKey(name: "August") double? august,@JsonKey(name: "September") double? september,@JsonKey(name: "October") double? october,@JsonKey(name: "November") double? november,@JsonKey(name: "December") double? december
});




}
/// @nodoc
class _$ProbabilityCopyWithImpl<$Res>
    implements $ProbabilityCopyWith<$Res> {
  _$ProbabilityCopyWithImpl(this._self, this._then);

  final Probability _self;
  final $Res Function(Probability) _then;

/// Create a copy of Probability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? january = freezed,Object? february = freezed,Object? march = freezed,Object? april = freezed,Object? may = freezed,Object? june = freezed,Object? july = freezed,Object? august = freezed,Object? september = freezed,Object? october = freezed,Object? november = freezed,Object? december = freezed,}) {
  return _then(_self.copyWith(
january: freezed == january ? _self.january : january // ignore: cast_nullable_to_non_nullable
as double?,february: freezed == february ? _self.february : february // ignore: cast_nullable_to_non_nullable
as double?,march: freezed == march ? _self.march : march // ignore: cast_nullable_to_non_nullable
as double?,april: freezed == april ? _self.april : april // ignore: cast_nullable_to_non_nullable
as double?,may: freezed == may ? _self.may : may // ignore: cast_nullable_to_non_nullable
as double?,june: freezed == june ? _self.june : june // ignore: cast_nullable_to_non_nullable
as double?,july: freezed == july ? _self.july : july // ignore: cast_nullable_to_non_nullable
as double?,august: freezed == august ? _self.august : august // ignore: cast_nullable_to_non_nullable
as double?,september: freezed == september ? _self.september : september // ignore: cast_nullable_to_non_nullable
as double?,october: freezed == october ? _self.october : october // ignore: cast_nullable_to_non_nullable
as double?,november: freezed == november ? _self.november : november // ignore: cast_nullable_to_non_nullable
as double?,december: freezed == december ? _self.december : december // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Probability].
extension ProbabilityPatterns on Probability {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Probability value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Probability() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Probability value)  $default,){
final _that = this;
switch (_that) {
case _Probability():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Probability value)?  $default,){
final _that = this;
switch (_that) {
case _Probability() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "January")  double? january, @JsonKey(name: "February")  double? february, @JsonKey(name: "March")  double? march, @JsonKey(name: "April")  double? april, @JsonKey(name: "May")  double? may, @JsonKey(name: "June")  double? june, @JsonKey(name: "July")  double? july, @JsonKey(name: "August")  double? august, @JsonKey(name: "September")  double? september, @JsonKey(name: "October")  double? october, @JsonKey(name: "November")  double? november, @JsonKey(name: "December")  double? december)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Probability() when $default != null:
return $default(_that.january,_that.february,_that.march,_that.april,_that.may,_that.june,_that.july,_that.august,_that.september,_that.october,_that.november,_that.december);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "January")  double? january, @JsonKey(name: "February")  double? february, @JsonKey(name: "March")  double? march, @JsonKey(name: "April")  double? april, @JsonKey(name: "May")  double? may, @JsonKey(name: "June")  double? june, @JsonKey(name: "July")  double? july, @JsonKey(name: "August")  double? august, @JsonKey(name: "September")  double? september, @JsonKey(name: "October")  double? october, @JsonKey(name: "November")  double? november, @JsonKey(name: "December")  double? december)  $default,) {final _that = this;
switch (_that) {
case _Probability():
return $default(_that.january,_that.february,_that.march,_that.april,_that.may,_that.june,_that.july,_that.august,_that.september,_that.october,_that.november,_that.december);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "January")  double? january, @JsonKey(name: "February")  double? february, @JsonKey(name: "March")  double? march, @JsonKey(name: "April")  double? april, @JsonKey(name: "May")  double? may, @JsonKey(name: "June")  double? june, @JsonKey(name: "July")  double? july, @JsonKey(name: "August")  double? august, @JsonKey(name: "September")  double? september, @JsonKey(name: "October")  double? october, @JsonKey(name: "November")  double? november, @JsonKey(name: "December")  double? december)?  $default,) {final _that = this;
switch (_that) {
case _Probability() when $default != null:
return $default(_that.january,_that.february,_that.march,_that.april,_that.may,_that.june,_that.july,_that.august,_that.september,_that.october,_that.november,_that.december);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Probability implements Probability {
  const _Probability({@JsonKey(name: "January") this.january, @JsonKey(name: "February") this.february, @JsonKey(name: "March") this.march, @JsonKey(name: "April") this.april, @JsonKey(name: "May") this.may, @JsonKey(name: "June") this.june, @JsonKey(name: "July") this.july, @JsonKey(name: "August") this.august, @JsonKey(name: "September") this.september, @JsonKey(name: "October") this.october, @JsonKey(name: "November") this.november, @JsonKey(name: "December") this.december});
  factory _Probability.fromJson(Map<String, dynamic> json) => _$ProbabilityFromJson(json);

@override@JsonKey(name: "January") final  double? january;
@override@JsonKey(name: "February") final  double? february;
@override@JsonKey(name: "March") final  double? march;
@override@JsonKey(name: "April") final  double? april;
@override@JsonKey(name: "May") final  double? may;
@override@JsonKey(name: "June") final  double? june;
@override@JsonKey(name: "July") final  double? july;
@override@JsonKey(name: "August") final  double? august;
@override@JsonKey(name: "September") final  double? september;
@override@JsonKey(name: "October") final  double? october;
@override@JsonKey(name: "November") final  double? november;
@override@JsonKey(name: "December") final  double? december;

/// Create a copy of Probability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProbabilityCopyWith<_Probability> get copyWith => __$ProbabilityCopyWithImpl<_Probability>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProbabilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Probability&&(identical(other.january, january) || other.january == january)&&(identical(other.february, february) || other.february == february)&&(identical(other.march, march) || other.march == march)&&(identical(other.april, april) || other.april == april)&&(identical(other.may, may) || other.may == may)&&(identical(other.june, june) || other.june == june)&&(identical(other.july, july) || other.july == july)&&(identical(other.august, august) || other.august == august)&&(identical(other.september, september) || other.september == september)&&(identical(other.october, october) || other.october == october)&&(identical(other.november, november) || other.november == november)&&(identical(other.december, december) || other.december == december));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,january,february,march,april,may,june,july,august,september,october,november,december);

@override
String toString() {
  return 'Probability(january: $january, february: $february, march: $march, april: $april, may: $may, june: $june, july: $july, august: $august, september: $september, october: $october, november: $november, december: $december)';
}


}

/// @nodoc
abstract mixin class _$ProbabilityCopyWith<$Res> implements $ProbabilityCopyWith<$Res> {
  factory _$ProbabilityCopyWith(_Probability value, $Res Function(_Probability) _then) = __$ProbabilityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "January") double? january,@JsonKey(name: "February") double? february,@JsonKey(name: "March") double? march,@JsonKey(name: "April") double? april,@JsonKey(name: "May") double? may,@JsonKey(name: "June") double? june,@JsonKey(name: "July") double? july,@JsonKey(name: "August") double? august,@JsonKey(name: "September") double? september,@JsonKey(name: "October") double? october,@JsonKey(name: "November") double? november,@JsonKey(name: "December") double? december
});




}
/// @nodoc
class __$ProbabilityCopyWithImpl<$Res>
    implements _$ProbabilityCopyWith<$Res> {
  __$ProbabilityCopyWithImpl(this._self, this._then);

  final _Probability _self;
  final $Res Function(_Probability) _then;

/// Create a copy of Probability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? january = freezed,Object? february = freezed,Object? march = freezed,Object? april = freezed,Object? may = freezed,Object? june = freezed,Object? july = freezed,Object? august = freezed,Object? september = freezed,Object? october = freezed,Object? november = freezed,Object? december = freezed,}) {
  return _then(_Probability(
january: freezed == january ? _self.january : january // ignore: cast_nullable_to_non_nullable
as double?,february: freezed == february ? _self.february : february // ignore: cast_nullable_to_non_nullable
as double?,march: freezed == march ? _self.march : march // ignore: cast_nullable_to_non_nullable
as double?,april: freezed == april ? _self.april : april // ignore: cast_nullable_to_non_nullable
as double?,may: freezed == may ? _self.may : may // ignore: cast_nullable_to_non_nullable
as double?,june: freezed == june ? _self.june : june // ignore: cast_nullable_to_non_nullable
as double?,july: freezed == july ? _self.july : july // ignore: cast_nullable_to_non_nullable
as double?,august: freezed == august ? _self.august : august // ignore: cast_nullable_to_non_nullable
as double?,september: freezed == september ? _self.september : september // ignore: cast_nullable_to_non_nullable
as double?,october: freezed == october ? _self.october : october // ignore: cast_nullable_to_non_nullable
as double?,november: freezed == november ? _self.november : november // ignore: cast_nullable_to_non_nullable
as double?,december: freezed == december ? _self.december : december // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
