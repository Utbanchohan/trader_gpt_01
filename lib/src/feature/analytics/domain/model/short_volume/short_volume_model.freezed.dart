// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'short_volume_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShortVolumeModel {

 int get status; String get msg; ShortVolumeData? get data; Map<String, dynamic>? get errors;
/// Create a copy of ShortVolumeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortVolumeModelCopyWith<ShortVolumeModel> get copyWith => _$ShortVolumeModelCopyWithImpl<ShortVolumeModel>(this as ShortVolumeModel, _$identity);

  /// Serializes this ShortVolumeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortVolumeModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other.errors, errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'ShortVolumeModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ShortVolumeModelCopyWith<$Res>  {
  factory $ShortVolumeModelCopyWith(ShortVolumeModel value, $Res Function(ShortVolumeModel) _then) = _$ShortVolumeModelCopyWithImpl;
@useResult
$Res call({
 int status, String msg, ShortVolumeData? data, Map<String, dynamic>? errors
});


$ShortVolumeDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$ShortVolumeModelCopyWithImpl<$Res>
    implements $ShortVolumeModelCopyWith<$Res> {
  _$ShortVolumeModelCopyWithImpl(this._self, this._then);

  final ShortVolumeModel _self;
  final $Res Function(ShortVolumeModel) _then;

/// Create a copy of ShortVolumeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShortVolumeData?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of ShortVolumeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShortVolumeDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ShortVolumeDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShortVolumeModel].
extension ShortVolumeModelPatterns on ShortVolumeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortVolumeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortVolumeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortVolumeModel value)  $default,){
final _that = this;
switch (_that) {
case _ShortVolumeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortVolumeModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShortVolumeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String msg,  ShortVolumeData? data,  Map<String, dynamic>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortVolumeModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String msg,  ShortVolumeData? data,  Map<String, dynamic>? errors)  $default,) {final _that = this;
switch (_that) {
case _ShortVolumeModel():
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String msg,  ShortVolumeData? data,  Map<String, dynamic>? errors)?  $default,) {final _that = this;
switch (_that) {
case _ShortVolumeModel() when $default != null:
return $default(_that.status,_that.msg,_that.data,_that.errors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortVolumeModel implements ShortVolumeModel {
  const _ShortVolumeModel({required this.status, required this.msg, this.data, final  Map<String, dynamic>? errors}): _errors = errors;
  factory _ShortVolumeModel.fromJson(Map<String, dynamic> json) => _$ShortVolumeModelFromJson(json);

@override final  int status;
@override final  String msg;
@override final  ShortVolumeData? data;
 final  Map<String, dynamic>? _errors;
@override Map<String, dynamic>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableMapView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of ShortVolumeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortVolumeModelCopyWith<_ShortVolumeModel> get copyWith => __$ShortVolumeModelCopyWithImpl<_ShortVolumeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortVolumeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortVolumeModel&&(identical(other.status, status) || other.status == status)&&(identical(other.msg, msg) || other.msg == msg)&&(identical(other.data, data) || other.data == data)&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,msg,data,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'ShortVolumeModel(status: $status, msg: $msg, data: $data, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$ShortVolumeModelCopyWith<$Res> implements $ShortVolumeModelCopyWith<$Res> {
  factory _$ShortVolumeModelCopyWith(_ShortVolumeModel value, $Res Function(_ShortVolumeModel) _then) = __$ShortVolumeModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String msg, ShortVolumeData? data, Map<String, dynamic>? errors
});


@override $ShortVolumeDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$ShortVolumeModelCopyWithImpl<$Res>
    implements _$ShortVolumeModelCopyWith<$Res> {
  __$ShortVolumeModelCopyWithImpl(this._self, this._then);

  final _ShortVolumeModel _self;
  final $Res Function(_ShortVolumeModel) _then;

/// Create a copy of ShortVolumeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? msg = null,Object? data = freezed,Object? errors = freezed,}) {
  return _then(_ShortVolumeModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShortVolumeData?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of ShortVolumeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShortVolumeDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ShortVolumeDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ShortVolumeData {

 List<ChartData> get Charts;
/// Create a copy of ShortVolumeData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShortVolumeDataCopyWith<ShortVolumeData> get copyWith => _$ShortVolumeDataCopyWithImpl<ShortVolumeData>(this as ShortVolumeData, _$identity);

  /// Serializes this ShortVolumeData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShortVolumeData&&const DeepCollectionEquality().equals(other.Charts, Charts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(Charts));

@override
String toString() {
  return 'ShortVolumeData(Charts: $Charts)';
}


}

/// @nodoc
abstract mixin class $ShortVolumeDataCopyWith<$Res>  {
  factory $ShortVolumeDataCopyWith(ShortVolumeData value, $Res Function(ShortVolumeData) _then) = _$ShortVolumeDataCopyWithImpl;
@useResult
$Res call({
 List<ChartData> Charts
});




}
/// @nodoc
class _$ShortVolumeDataCopyWithImpl<$Res>
    implements $ShortVolumeDataCopyWith<$Res> {
  _$ShortVolumeDataCopyWithImpl(this._self, this._then);

  final ShortVolumeData _self;
  final $Res Function(ShortVolumeData) _then;

/// Create a copy of ShortVolumeData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Charts = null,}) {
  return _then(_self.copyWith(
Charts: null == Charts ? _self.Charts : Charts // ignore: cast_nullable_to_non_nullable
as List<ChartData>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShortVolumeData].
extension ShortVolumeDataPatterns on ShortVolumeData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShortVolumeData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShortVolumeData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShortVolumeData value)  $default,){
final _that = this;
switch (_that) {
case _ShortVolumeData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShortVolumeData value)?  $default,){
final _that = this;
switch (_that) {
case _ShortVolumeData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChartData> Charts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShortVolumeData() when $default != null:
return $default(_that.Charts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChartData> Charts)  $default,) {final _that = this;
switch (_that) {
case _ShortVolumeData():
return $default(_that.Charts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChartData> Charts)?  $default,) {final _that = this;
switch (_that) {
case _ShortVolumeData() when $default != null:
return $default(_that.Charts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShortVolumeData implements ShortVolumeData {
  const _ShortVolumeData({required final  List<ChartData> Charts}): _Charts = Charts;
  factory _ShortVolumeData.fromJson(Map<String, dynamic> json) => _$ShortVolumeDataFromJson(json);

 final  List<ChartData> _Charts;
@override List<ChartData> get Charts {
  if (_Charts is EqualUnmodifiableListView) return _Charts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_Charts);
}


/// Create a copy of ShortVolumeData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShortVolumeDataCopyWith<_ShortVolumeData> get copyWith => __$ShortVolumeDataCopyWithImpl<_ShortVolumeData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShortVolumeDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShortVolumeData&&const DeepCollectionEquality().equals(other._Charts, _Charts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_Charts));

@override
String toString() {
  return 'ShortVolumeData(Charts: $Charts)';
}


}

/// @nodoc
abstract mixin class _$ShortVolumeDataCopyWith<$Res> implements $ShortVolumeDataCopyWith<$Res> {
  factory _$ShortVolumeDataCopyWith(_ShortVolumeData value, $Res Function(_ShortVolumeData) _then) = __$ShortVolumeDataCopyWithImpl;
@override @useResult
$Res call({
 List<ChartData> Charts
});




}
/// @nodoc
class __$ShortVolumeDataCopyWithImpl<$Res>
    implements _$ShortVolumeDataCopyWith<$Res> {
  __$ShortVolumeDataCopyWithImpl(this._self, this._then);

  final _ShortVolumeData _self;
  final $Res Function(_ShortVolumeData) _then;

/// Create a copy of ShortVolumeData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Charts = null,}) {
  return _then(_ShortVolumeData(
Charts: null == Charts ? _self._Charts : Charts // ignore: cast_nullable_to_non_nullable
as List<ChartData>,
  ));
}


}


/// @nodoc
mixin _$ChartData {

 String get name; List<List<dynamic>> get data;
/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChartDataCopyWith<ChartData> get copyWith => _$ChartDataCopyWithImpl<ChartData>(this as ChartData, _$identity);

  /// Serializes this ChartData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChartData&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ChartData(name: $name, data: $data)';
}


}

/// @nodoc
abstract mixin class $ChartDataCopyWith<$Res>  {
  factory $ChartDataCopyWith(ChartData value, $Res Function(ChartData) _then) = _$ChartDataCopyWithImpl;
@useResult
$Res call({
 String name, List<List<dynamic>> data
});




}
/// @nodoc
class _$ChartDataCopyWithImpl<$Res>
    implements $ChartDataCopyWith<$Res> {
  _$ChartDataCopyWithImpl(this._self, this._then);

  final ChartData _self;
  final $Res Function(ChartData) _then;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? data = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<List<dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChartData].
extension ChartDataPatterns on ChartData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChartData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChartData value)  $default,){
final _that = this;
switch (_that) {
case _ChartData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChartData value)?  $default,){
final _that = this;
switch (_that) {
case _ChartData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<List<dynamic>> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChartData() when $default != null:
return $default(_that.name,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<List<dynamic>> data)  $default,) {final _that = this;
switch (_that) {
case _ChartData():
return $default(_that.name,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<List<dynamic>> data)?  $default,) {final _that = this;
switch (_that) {
case _ChartData() when $default != null:
return $default(_that.name,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChartData implements ChartData {
  const _ChartData({required this.name, required final  List<List<dynamic>> data}): _data = data;
  factory _ChartData.fromJson(Map<String, dynamic> json) => _$ChartDataFromJson(json);

@override final  String name;
 final  List<List<dynamic>> _data;
@override List<List<dynamic>> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChartDataCopyWith<_ChartData> get copyWith => __$ChartDataCopyWithImpl<_ChartData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChartDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChartData&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ChartData(name: $name, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ChartDataCopyWith<$Res> implements $ChartDataCopyWith<$Res> {
  factory _$ChartDataCopyWith(_ChartData value, $Res Function(_ChartData) _then) = __$ChartDataCopyWithImpl;
@override @useResult
$Res call({
 String name, List<List<dynamic>> data
});




}
/// @nodoc
class __$ChartDataCopyWithImpl<$Res>
    implements _$ChartDataCopyWith<$Res> {
  __$ChartDataCopyWithImpl(this._self, this._then);

  final _ChartData _self;
  final $Res Function(_ChartData) _then;

/// Create a copy of ChartData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? data = null,}) {
  return _then(_ChartData(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<List<dynamic>>,
  ));
}


}

// dart format on
