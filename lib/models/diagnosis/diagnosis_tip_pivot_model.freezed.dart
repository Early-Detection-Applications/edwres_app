// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_tip_pivot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisTipPivotModel {

@JsonKey(name: 'kode_eas') String? get kodeEas;@JsonKey(name: 'kode_tips') String? get kodeTips;
/// Create a copy of DiagnosisTipPivotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisTipPivotModelCopyWith<DiagnosisTipPivotModel> get copyWith => _$DiagnosisTipPivotModelCopyWithImpl<DiagnosisTipPivotModel>(this as DiagnosisTipPivotModel, _$identity);

  /// Serializes this DiagnosisTipPivotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisTipPivotModel&&(identical(other.kodeEas, kodeEas) || other.kodeEas == kodeEas)&&(identical(other.kodeTips, kodeTips) || other.kodeTips == kodeTips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeEas,kodeTips);

@override
String toString() {
  return 'DiagnosisTipPivotModel(kodeEas: $kodeEas, kodeTips: $kodeTips)';
}


}

/// @nodoc
abstract mixin class $DiagnosisTipPivotModelCopyWith<$Res>  {
  factory $DiagnosisTipPivotModelCopyWith(DiagnosisTipPivotModel value, $Res Function(DiagnosisTipPivotModel) _then) = _$DiagnosisTipPivotModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'kode_eas') String? kodeEas,@JsonKey(name: 'kode_tips') String? kodeTips
});




}
/// @nodoc
class _$DiagnosisTipPivotModelCopyWithImpl<$Res>
    implements $DiagnosisTipPivotModelCopyWith<$Res> {
  _$DiagnosisTipPivotModelCopyWithImpl(this._self, this._then);

  final DiagnosisTipPivotModel _self;
  final $Res Function(DiagnosisTipPivotModel) _then;

/// Create a copy of DiagnosisTipPivotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kodeEas = freezed,Object? kodeTips = freezed,}) {
  return _then(_self.copyWith(
kodeEas: freezed == kodeEas ? _self.kodeEas : kodeEas // ignore: cast_nullable_to_non_nullable
as String?,kodeTips: freezed == kodeTips ? _self.kodeTips : kodeTips // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisTipPivotModel].
extension DiagnosisTipPivotModelPatterns on DiagnosisTipPivotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisTipPivotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisTipPivotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisTipPivotModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisTipPivotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisTipPivotModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisTipPivotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_eas')  String? kodeEas, @JsonKey(name: 'kode_tips')  String? kodeTips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisTipPivotModel() when $default != null:
return $default(_that.kodeEas,_that.kodeTips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_eas')  String? kodeEas, @JsonKey(name: 'kode_tips')  String? kodeTips)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisTipPivotModel():
return $default(_that.kodeEas,_that.kodeTips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'kode_eas')  String? kodeEas, @JsonKey(name: 'kode_tips')  String? kodeTips)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisTipPivotModel() when $default != null:
return $default(_that.kodeEas,_that.kodeTips);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisTipPivotModel implements DiagnosisTipPivotModel {
  const _DiagnosisTipPivotModel({@JsonKey(name: 'kode_eas') this.kodeEas, @JsonKey(name: 'kode_tips') this.kodeTips});
  factory _DiagnosisTipPivotModel.fromJson(Map<String, dynamic> json) => _$DiagnosisTipPivotModelFromJson(json);

@override@JsonKey(name: 'kode_eas') final  String? kodeEas;
@override@JsonKey(name: 'kode_tips') final  String? kodeTips;

/// Create a copy of DiagnosisTipPivotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisTipPivotModelCopyWith<_DiagnosisTipPivotModel> get copyWith => __$DiagnosisTipPivotModelCopyWithImpl<_DiagnosisTipPivotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisTipPivotModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisTipPivotModel&&(identical(other.kodeEas, kodeEas) || other.kodeEas == kodeEas)&&(identical(other.kodeTips, kodeTips) || other.kodeTips == kodeTips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeEas,kodeTips);

@override
String toString() {
  return 'DiagnosisTipPivotModel(kodeEas: $kodeEas, kodeTips: $kodeTips)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisTipPivotModelCopyWith<$Res> implements $DiagnosisTipPivotModelCopyWith<$Res> {
  factory _$DiagnosisTipPivotModelCopyWith(_DiagnosisTipPivotModel value, $Res Function(_DiagnosisTipPivotModel) _then) = __$DiagnosisTipPivotModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'kode_eas') String? kodeEas,@JsonKey(name: 'kode_tips') String? kodeTips
});




}
/// @nodoc
class __$DiagnosisTipPivotModelCopyWithImpl<$Res>
    implements _$DiagnosisTipPivotModelCopyWith<$Res> {
  __$DiagnosisTipPivotModelCopyWithImpl(this._self, this._then);

  final _DiagnosisTipPivotModel _self;
  final $Res Function(_DiagnosisTipPivotModel) _then;

/// Create a copy of DiagnosisTipPivotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kodeEas = freezed,Object? kodeTips = freezed,}) {
  return _then(_DiagnosisTipPivotModel(
kodeEas: freezed == kodeEas ? _self.kodeEas : kodeEas // ignore: cast_nullable_to_non_nullable
as String?,kodeTips: freezed == kodeTips ? _self.kodeTips : kodeTips // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
