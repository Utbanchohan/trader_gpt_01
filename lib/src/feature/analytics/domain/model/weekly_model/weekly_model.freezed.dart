// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeeklyModel {

@JsonKey(name: "Probability") WeeklyProbability? get probability;
/// Create a copy of WeeklyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyModelCopyWith<WeeklyModel> get copyWith => _$WeeklyModelCopyWithImpl<WeeklyModel>(this as WeeklyModel, _$identity);

  /// Serializes this WeeklyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyModel&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,probability);

@override
String toString() {
  return 'WeeklyModel(probability: $probability)';
}


}

/// @nodoc
abstract mixin class $WeeklyModelCopyWith<$Res>  {
  factory $WeeklyModelCopyWith(WeeklyModel value, $Res Function(WeeklyModel) _then) = _$WeeklyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "Probability") WeeklyProbability? probability
});


$WeeklyProbabilityCopyWith<$Res>? get probability;

}
/// @nodoc
class _$WeeklyModelCopyWithImpl<$Res>
    implements $WeeklyModelCopyWith<$Res> {
  _$WeeklyModelCopyWithImpl(this._self, this._then);

  final WeeklyModel _self;
  final $Res Function(WeeklyModel) _then;

/// Create a copy of WeeklyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? probability = freezed,}) {
  return _then(_self.copyWith(
probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as WeeklyProbability?,
  ));
}
/// Create a copy of WeeklyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeeklyProbabilityCopyWith<$Res>? get probability {
    if (_self.probability == null) {
    return null;
  }

  return $WeeklyProbabilityCopyWith<$Res>(_self.probability!, (value) {
    return _then(_self.copyWith(probability: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeeklyModel].
extension WeeklyModelPatterns on WeeklyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyModel value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "Probability")  WeeklyProbability? probability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "Probability")  WeeklyProbability? probability)  $default,) {final _that = this;
switch (_that) {
case _WeeklyModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "Probability")  WeeklyProbability? probability)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyModel() when $default != null:
return $default(_that.probability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyModel implements WeeklyModel {
  const _WeeklyModel({@JsonKey(name: "Probability") this.probability});
  factory _WeeklyModel.fromJson(Map<String, dynamic> json) => _$WeeklyModelFromJson(json);

@override@JsonKey(name: "Probability") final  WeeklyProbability? probability;

/// Create a copy of WeeklyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyModelCopyWith<_WeeklyModel> get copyWith => __$WeeklyModelCopyWithImpl<_WeeklyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyModel&&(identical(other.probability, probability) || other.probability == probability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,probability);

@override
String toString() {
  return 'WeeklyModel(probability: $probability)';
}


}

/// @nodoc
abstract mixin class _$WeeklyModelCopyWith<$Res> implements $WeeklyModelCopyWith<$Res> {
  factory _$WeeklyModelCopyWith(_WeeklyModel value, $Res Function(_WeeklyModel) _then) = __$WeeklyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "Probability") WeeklyProbability? probability
});


@override $WeeklyProbabilityCopyWith<$Res>? get probability;

}
/// @nodoc
class __$WeeklyModelCopyWithImpl<$Res>
    implements _$WeeklyModelCopyWith<$Res> {
  __$WeeklyModelCopyWithImpl(this._self, this._then);

  final _WeeklyModel _self;
  final $Res Function(_WeeklyModel) _then;

/// Create a copy of WeeklyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? probability = freezed,}) {
  return _then(_WeeklyModel(
probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as WeeklyProbability?,
  ));
}

/// Create a copy of WeeklyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeeklyProbabilityCopyWith<$Res>? get probability {
    if (_self.probability == null) {
    return null;
  }

  return $WeeklyProbabilityCopyWith<$Res>(_self.probability!, (value) {
    return _then(_self.copyWith(probability: value));
  });
}
}


/// @nodoc
mixin _$WeeklyProbability {

@JsonKey(name: "Monday") double? get monday;@JsonKey(name: "Tuesday") double? get tuesday;@JsonKey(name: "Wednesday") double? get wednesday;@JsonKey(name: "Thursday") double? get thursday;@JsonKey(name: "Friday") double? get friday;
/// Create a copy of WeeklyProbability
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeeklyProbabilityCopyWith<WeeklyProbability> get copyWith => _$WeeklyProbabilityCopyWithImpl<WeeklyProbability>(this as WeeklyProbability, _$identity);

  /// Serializes this WeeklyProbability to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeeklyProbability&&(identical(other.monday, monday) || other.monday == monday)&&(identical(other.tuesday, tuesday) || other.tuesday == tuesday)&&(identical(other.wednesday, wednesday) || other.wednesday == wednesday)&&(identical(other.thursday, thursday) || other.thursday == thursday)&&(identical(other.friday, friday) || other.friday == friday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monday,tuesday,wednesday,thursday,friday);

@override
String toString() {
  return 'WeeklyProbability(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday)';
}


}

/// @nodoc
abstract mixin class $WeeklyProbabilityCopyWith<$Res>  {
  factory $WeeklyProbabilityCopyWith(WeeklyProbability value, $Res Function(WeeklyProbability) _then) = _$WeeklyProbabilityCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "Monday") double? monday,@JsonKey(name: "Tuesday") double? tuesday,@JsonKey(name: "Wednesday") double? wednesday,@JsonKey(name: "Thursday") double? thursday,@JsonKey(name: "Friday") double? friday
});




}
/// @nodoc
class _$WeeklyProbabilityCopyWithImpl<$Res>
    implements $WeeklyProbabilityCopyWith<$Res> {
  _$WeeklyProbabilityCopyWithImpl(this._self, this._then);

  final WeeklyProbability _self;
  final $Res Function(WeeklyProbability) _then;

/// Create a copy of WeeklyProbability
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monday = freezed,Object? tuesday = freezed,Object? wednesday = freezed,Object? thursday = freezed,Object? friday = freezed,}) {
  return _then(_self.copyWith(
monday: freezed == monday ? _self.monday : monday // ignore: cast_nullable_to_non_nullable
as double?,tuesday: freezed == tuesday ? _self.tuesday : tuesday // ignore: cast_nullable_to_non_nullable
as double?,wednesday: freezed == wednesday ? _self.wednesday : wednesday // ignore: cast_nullable_to_non_nullable
as double?,thursday: freezed == thursday ? _self.thursday : thursday // ignore: cast_nullable_to_non_nullable
as double?,friday: freezed == friday ? _self.friday : friday // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [WeeklyProbability].
extension WeeklyProbabilityPatterns on WeeklyProbability {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeeklyProbability value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeeklyProbability() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeeklyProbability value)  $default,){
final _that = this;
switch (_that) {
case _WeeklyProbability():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeeklyProbability value)?  $default,){
final _that = this;
switch (_that) {
case _WeeklyProbability() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "Monday")  double? monday, @JsonKey(name: "Tuesday")  double? tuesday, @JsonKey(name: "Wednesday")  double? wednesday, @JsonKey(name: "Thursday")  double? thursday, @JsonKey(name: "Friday")  double? friday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeeklyProbability() when $default != null:
return $default(_that.monday,_that.tuesday,_that.wednesday,_that.thursday,_that.friday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "Monday")  double? monday, @JsonKey(name: "Tuesday")  double? tuesday, @JsonKey(name: "Wednesday")  double? wednesday, @JsonKey(name: "Thursday")  double? thursday, @JsonKey(name: "Friday")  double? friday)  $default,) {final _that = this;
switch (_that) {
case _WeeklyProbability():
return $default(_that.monday,_that.tuesday,_that.wednesday,_that.thursday,_that.friday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "Monday")  double? monday, @JsonKey(name: "Tuesday")  double? tuesday, @JsonKey(name: "Wednesday")  double? wednesday, @JsonKey(name: "Thursday")  double? thursday, @JsonKey(name: "Friday")  double? friday)?  $default,) {final _that = this;
switch (_that) {
case _WeeklyProbability() when $default != null:
return $default(_that.monday,_that.tuesday,_that.wednesday,_that.thursday,_that.friday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeeklyProbability implements WeeklyProbability {
  const _WeeklyProbability({@JsonKey(name: "Monday") this.monday, @JsonKey(name: "Tuesday") this.tuesday, @JsonKey(name: "Wednesday") this.wednesday, @JsonKey(name: "Thursday") this.thursday, @JsonKey(name: "Friday") this.friday});
  factory _WeeklyProbability.fromJson(Map<String, dynamic> json) => _$WeeklyProbabilityFromJson(json);

@override@JsonKey(name: "Monday") final  double? monday;
@override@JsonKey(name: "Tuesday") final  double? tuesday;
@override@JsonKey(name: "Wednesday") final  double? wednesday;
@override@JsonKey(name: "Thursday") final  double? thursday;
@override@JsonKey(name: "Friday") final  double? friday;

/// Create a copy of WeeklyProbability
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeeklyProbabilityCopyWith<_WeeklyProbability> get copyWith => __$WeeklyProbabilityCopyWithImpl<_WeeklyProbability>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeeklyProbabilityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeeklyProbability&&(identical(other.monday, monday) || other.monday == monday)&&(identical(other.tuesday, tuesday) || other.tuesday == tuesday)&&(identical(other.wednesday, wednesday) || other.wednesday == wednesday)&&(identical(other.thursday, thursday) || other.thursday == thursday)&&(identical(other.friday, friday) || other.friday == friday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monday,tuesday,wednesday,thursday,friday);

@override
String toString() {
  return 'WeeklyProbability(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday)';
}


}

/// @nodoc
abstract mixin class _$WeeklyProbabilityCopyWith<$Res> implements $WeeklyProbabilityCopyWith<$Res> {
  factory _$WeeklyProbabilityCopyWith(_WeeklyProbability value, $Res Function(_WeeklyProbability) _then) = __$WeeklyProbabilityCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "Monday") double? monday,@JsonKey(name: "Tuesday") double? tuesday,@JsonKey(name: "Wednesday") double? wednesday,@JsonKey(name: "Thursday") double? thursday,@JsonKey(name: "Friday") double? friday
});




}
/// @nodoc
class __$WeeklyProbabilityCopyWithImpl<$Res>
    implements _$WeeklyProbabilityCopyWith<$Res> {
  __$WeeklyProbabilityCopyWithImpl(this._self, this._then);

  final _WeeklyProbability _self;
  final $Res Function(_WeeklyProbability) _then;

/// Create a copy of WeeklyProbability
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monday = freezed,Object? tuesday = freezed,Object? wednesday = freezed,Object? thursday = freezed,Object? friday = freezed,}) {
  return _then(_WeeklyProbability(
monday: freezed == monday ? _self.monday : monday // ignore: cast_nullable_to_non_nullable
as double?,tuesday: freezed == tuesday ? _self.tuesday : tuesday // ignore: cast_nullable_to_non_nullable
as double?,wednesday: freezed == wednesday ? _self.wednesday : wednesday // ignore: cast_nullable_to_non_nullable
as double?,thursday: freezed == thursday ? _self.thursday : thursday // ignore: cast_nullable_to_non_nullable
as double?,friday: freezed == friday ? _self.friday : friday // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
