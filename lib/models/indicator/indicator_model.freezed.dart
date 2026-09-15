// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'indicator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndicatorModel {

@JsonKey(name: 'kode_indikator') String? get kodeIndikator;@JsonKey(name: 'nama_indikator') String? get namaIndikator;
/// Create a copy of IndicatorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IndicatorModelCopyWith<IndicatorModel> get copyWith => _$IndicatorModelCopyWithImpl<IndicatorModel>(this as IndicatorModel, _$identity);

  /// Serializes this IndicatorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IndicatorModel&&(identical(other.kodeIndikator, kodeIndikator) || other.kodeIndikator == kodeIndikator)&&(identical(other.namaIndikator, namaIndikator) || other.namaIndikator == namaIndikator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeIndikator,namaIndikator);

@override
String toString() {
  return 'IndicatorModel(kodeIndikator: $kodeIndikator, namaIndikator: $namaIndikator)';
}


}

/// @nodoc
abstract mixin class $IndicatorModelCopyWith<$Res>  {
  factory $IndicatorModelCopyWith(IndicatorModel value, $Res Function(IndicatorModel) _then) = _$IndicatorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'kode_indikator') String? kodeIndikator,@JsonKey(name: 'nama_indikator') String? namaIndikator
});




}
/// @nodoc
class _$IndicatorModelCopyWithImpl<$Res>
    implements $IndicatorModelCopyWith<$Res> {
  _$IndicatorModelCopyWithImpl(this._self, this._then);

  final IndicatorModel _self;
  final $Res Function(IndicatorModel) _then;

/// Create a copy of IndicatorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kodeIndikator = freezed,Object? namaIndikator = freezed,}) {
  return _then(_self.copyWith(
kodeIndikator: freezed == kodeIndikator ? _self.kodeIndikator : kodeIndikator // ignore: cast_nullable_to_non_nullable
as String?,namaIndikator: freezed == namaIndikator ? _self.namaIndikator : namaIndikator // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [IndicatorModel].
extension IndicatorModelPatterns on IndicatorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IndicatorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IndicatorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IndicatorModel value)  $default,){
final _that = this;
switch (_that) {
case _IndicatorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IndicatorModel value)?  $default,){
final _that = this;
switch (_that) {
case _IndicatorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_indikator')  String? kodeIndikator, @JsonKey(name: 'nama_indikator')  String? namaIndikator)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IndicatorModel() when $default != null:
return $default(_that.kodeIndikator,_that.namaIndikator);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_indikator')  String? kodeIndikator, @JsonKey(name: 'nama_indikator')  String? namaIndikator)  $default,) {final _that = this;
switch (_that) {
case _IndicatorModel():
return $default(_that.kodeIndikator,_that.namaIndikator);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'kode_indikator')  String? kodeIndikator, @JsonKey(name: 'nama_indikator')  String? namaIndikator)?  $default,) {final _that = this;
switch (_that) {
case _IndicatorModel() when $default != null:
return $default(_that.kodeIndikator,_that.namaIndikator);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IndicatorModel extends IndicatorModel {
  const _IndicatorModel({@JsonKey(name: 'kode_indikator') this.kodeIndikator, @JsonKey(name: 'nama_indikator') this.namaIndikator}): super._();
  factory _IndicatorModel.fromJson(Map<String, dynamic> json) => _$IndicatorModelFromJson(json);

@override@JsonKey(name: 'kode_indikator') final  String? kodeIndikator;
@override@JsonKey(name: 'nama_indikator') final  String? namaIndikator;

/// Create a copy of IndicatorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IndicatorModelCopyWith<_IndicatorModel> get copyWith => __$IndicatorModelCopyWithImpl<_IndicatorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IndicatorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IndicatorModel&&(identical(other.kodeIndikator, kodeIndikator) || other.kodeIndikator == kodeIndikator)&&(identical(other.namaIndikator, namaIndikator) || other.namaIndikator == namaIndikator));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeIndikator,namaIndikator);

@override
String toString() {
  return 'IndicatorModel(kodeIndikator: $kodeIndikator, namaIndikator: $namaIndikator)';
}


}

/// @nodoc
abstract mixin class _$IndicatorModelCopyWith<$Res> implements $IndicatorModelCopyWith<$Res> {
  factory _$IndicatorModelCopyWith(_IndicatorModel value, $Res Function(_IndicatorModel) _then) = __$IndicatorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'kode_indikator') String? kodeIndikator,@JsonKey(name: 'nama_indikator') String? namaIndikator
});




}
/// @nodoc
class __$IndicatorModelCopyWithImpl<$Res>
    implements _$IndicatorModelCopyWith<$Res> {
  __$IndicatorModelCopyWithImpl(this._self, this._then);

  final _IndicatorModel _self;
  final $Res Function(_IndicatorModel) _then;

/// Create a copy of IndicatorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kodeIndikator = freezed,Object? namaIndikator = freezed,}) {
  return _then(_IndicatorModel(
kodeIndikator: freezed == kodeIndikator ? _self.kodeIndikator : kodeIndikator // ignore: cast_nullable_to_non_nullable
as String?,namaIndikator: freezed == namaIndikator ? _self.namaIndikator : namaIndikator // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
