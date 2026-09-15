// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisModel {

@JsonKey(name: 'riwayat_id') int? get riwayatId;@JsonKey(name: 'tanggal') String? get tanggal;@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? get hasil;
/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisModelCopyWith<DiagnosisModel> get copyWith => _$DiagnosisModelCopyWithImpl<DiagnosisModel>(this as DiagnosisModel, _$identity);

  /// Serializes this DiagnosisModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisModel&&(identical(other.riwayatId, riwayatId) || other.riwayatId == riwayatId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&const DeepCollectionEquality().equals(other.hasil, hasil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riwayatId,tanggal,const DeepCollectionEquality().hash(hasil));

@override
String toString() {
  return 'DiagnosisModel(riwayatId: $riwayatId, tanggal: $tanggal, hasil: $hasil)';
}


}

/// @nodoc
abstract mixin class $DiagnosisModelCopyWith<$Res>  {
  factory $DiagnosisModelCopyWith(DiagnosisModel value, $Res Function(DiagnosisModel) _then) = _$DiagnosisModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'riwayat_id') int? riwayatId,@JsonKey(name: 'tanggal') String? tanggal,@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? hasil
});




}
/// @nodoc
class _$DiagnosisModelCopyWithImpl<$Res>
    implements $DiagnosisModelCopyWith<$Res> {
  _$DiagnosisModelCopyWithImpl(this._self, this._then);

  final DiagnosisModel _self;
  final $Res Function(DiagnosisModel) _then;

/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? riwayatId = freezed,Object? tanggal = freezed,Object? hasil = freezed,}) {
  return _then(_self.copyWith(
riwayatId: freezed == riwayatId ? _self.riwayatId : riwayatId // ignore: cast_nullable_to_non_nullable
as int?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String?,hasil: freezed == hasil ? _self.hasil : hasil // ignore: cast_nullable_to_non_nullable
as Map<String, DiagnosisResultModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisModel].
extension DiagnosisModelPatterns on DiagnosisModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'riwayat_id')  int? riwayatId, @JsonKey(name: 'tanggal')  String? tanggal, @JsonKey(name: 'hasil')  Map<String, DiagnosisResultModel>? hasil)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
return $default(_that.riwayatId,_that.tanggal,_that.hasil);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'riwayat_id')  int? riwayatId, @JsonKey(name: 'tanggal')  String? tanggal, @JsonKey(name: 'hasil')  Map<String, DiagnosisResultModel>? hasil)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisModel():
return $default(_that.riwayatId,_that.tanggal,_that.hasil);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'riwayat_id')  int? riwayatId, @JsonKey(name: 'tanggal')  String? tanggal, @JsonKey(name: 'hasil')  Map<String, DiagnosisResultModel>? hasil)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisModel() when $default != null:
return $default(_that.riwayatId,_that.tanggal,_that.hasil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisModel implements DiagnosisModel {
  const _DiagnosisModel({@JsonKey(name: 'riwayat_id') this.riwayatId, @JsonKey(name: 'tanggal') this.tanggal, @JsonKey(name: 'hasil') final  Map<String, DiagnosisResultModel>? hasil}): _hasil = hasil;
  factory _DiagnosisModel.fromJson(Map<String, dynamic> json) => _$DiagnosisModelFromJson(json);

@override@JsonKey(name: 'riwayat_id') final  int? riwayatId;
@override@JsonKey(name: 'tanggal') final  String? tanggal;
 final  Map<String, DiagnosisResultModel>? _hasil;
@override@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? get hasil {
  final value = _hasil;
  if (value == null) return null;
  if (_hasil is EqualUnmodifiableMapView) return _hasil;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisModelCopyWith<_DiagnosisModel> get copyWith => __$DiagnosisModelCopyWithImpl<_DiagnosisModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisModel&&(identical(other.riwayatId, riwayatId) || other.riwayatId == riwayatId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&const DeepCollectionEquality().equals(other._hasil, _hasil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riwayatId,tanggal,const DeepCollectionEquality().hash(_hasil));

@override
String toString() {
  return 'DiagnosisModel(riwayatId: $riwayatId, tanggal: $tanggal, hasil: $hasil)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisModelCopyWith<$Res> implements $DiagnosisModelCopyWith<$Res> {
  factory _$DiagnosisModelCopyWith(_DiagnosisModel value, $Res Function(_DiagnosisModel) _then) = __$DiagnosisModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'riwayat_id') int? riwayatId,@JsonKey(name: 'tanggal') String? tanggal,@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? hasil
});




}
/// @nodoc
class __$DiagnosisModelCopyWithImpl<$Res>
    implements _$DiagnosisModelCopyWith<$Res> {
  __$DiagnosisModelCopyWithImpl(this._self, this._then);

  final _DiagnosisModel _self;
  final $Res Function(_DiagnosisModel) _then;

/// Create a copy of DiagnosisModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riwayatId = freezed,Object? tanggal = freezed,Object? hasil = freezed,}) {
  return _then(_DiagnosisModel(
riwayatId: freezed == riwayatId ? _self.riwayatId : riwayatId // ignore: cast_nullable_to_non_nullable
as int?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String?,hasil: freezed == hasil ? _self._hasil : hasil // ignore: cast_nullable_to_non_nullable
as Map<String, DiagnosisResultModel>?,
  ));
}


}

// dart format on
