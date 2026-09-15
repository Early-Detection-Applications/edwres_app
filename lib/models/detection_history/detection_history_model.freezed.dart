// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detection_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetectionHistoryModel {

@JsonKey(name: 'riwayat_id') int? get riwayatId;@JsonKey(name: 'tanggal') String? get tanggal;@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? get hasil;
/// Create a copy of DetectionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectionHistoryModelCopyWith<DetectionHistoryModel> get copyWith => _$DetectionHistoryModelCopyWithImpl<DetectionHistoryModel>(this as DetectionHistoryModel, _$identity);

  /// Serializes this DetectionHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectionHistoryModel&&(identical(other.riwayatId, riwayatId) || other.riwayatId == riwayatId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&const DeepCollectionEquality().equals(other.hasil, hasil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riwayatId,tanggal,const DeepCollectionEquality().hash(hasil));

@override
String toString() {
  return 'DetectionHistoryModel(riwayatId: $riwayatId, tanggal: $tanggal, hasil: $hasil)';
}


}

/// @nodoc
abstract mixin class $DetectionHistoryModelCopyWith<$Res>  {
  factory $DetectionHistoryModelCopyWith(DetectionHistoryModel value, $Res Function(DetectionHistoryModel) _then) = _$DetectionHistoryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'riwayat_id') int? riwayatId,@JsonKey(name: 'tanggal') String? tanggal,@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? hasil
});




}
/// @nodoc
class _$DetectionHistoryModelCopyWithImpl<$Res>
    implements $DetectionHistoryModelCopyWith<$Res> {
  _$DetectionHistoryModelCopyWithImpl(this._self, this._then);

  final DetectionHistoryModel _self;
  final $Res Function(DetectionHistoryModel) _then;

/// Create a copy of DetectionHistoryModel
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


/// Adds pattern-matching-related methods to [DetectionHistoryModel].
extension DetectionHistoryModelPatterns on DetectionHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetectionHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectionHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetectionHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _DetectionHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetectionHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _DetectionHistoryModel() when $default != null:
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
case _DetectionHistoryModel() when $default != null:
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
case _DetectionHistoryModel():
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
case _DetectionHistoryModel() when $default != null:
return $default(_that.riwayatId,_that.tanggal,_that.hasil);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetectionHistoryModel implements DetectionHistoryModel {
  const _DetectionHistoryModel({@JsonKey(name: 'riwayat_id') this.riwayatId, @JsonKey(name: 'tanggal') this.tanggal, @JsonKey(name: 'hasil') final  Map<String, DiagnosisResultModel>? hasil}): _hasil = hasil;
  factory _DetectionHistoryModel.fromJson(Map<String, dynamic> json) => _$DetectionHistoryModelFromJson(json);

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


/// Create a copy of DetectionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectionHistoryModelCopyWith<_DetectionHistoryModel> get copyWith => __$DetectionHistoryModelCopyWithImpl<_DetectionHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetectionHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectionHistoryModel&&(identical(other.riwayatId, riwayatId) || other.riwayatId == riwayatId)&&(identical(other.tanggal, tanggal) || other.tanggal == tanggal)&&const DeepCollectionEquality().equals(other._hasil, _hasil));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,riwayatId,tanggal,const DeepCollectionEquality().hash(_hasil));

@override
String toString() {
  return 'DetectionHistoryModel(riwayatId: $riwayatId, tanggal: $tanggal, hasil: $hasil)';
}


}

/// @nodoc
abstract mixin class _$DetectionHistoryModelCopyWith<$Res> implements $DetectionHistoryModelCopyWith<$Res> {
  factory _$DetectionHistoryModelCopyWith(_DetectionHistoryModel value, $Res Function(_DetectionHistoryModel) _then) = __$DetectionHistoryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'riwayat_id') int? riwayatId,@JsonKey(name: 'tanggal') String? tanggal,@JsonKey(name: 'hasil') Map<String, DiagnosisResultModel>? hasil
});




}
/// @nodoc
class __$DetectionHistoryModelCopyWithImpl<$Res>
    implements _$DetectionHistoryModelCopyWith<$Res> {
  __$DetectionHistoryModelCopyWithImpl(this._self, this._then);

  final _DetectionHistoryModel _self;
  final $Res Function(_DetectionHistoryModel) _then;

/// Create a copy of DetectionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? riwayatId = freezed,Object? tanggal = freezed,Object? hasil = freezed,}) {
  return _then(_DetectionHistoryModel(
riwayatId: freezed == riwayatId ? _self.riwayatId : riwayatId // ignore: cast_nullable_to_non_nullable
as int?,tanggal: freezed == tanggal ? _self.tanggal : tanggal // ignore: cast_nullable_to_non_nullable
as String?,hasil: freezed == hasil ? _self._hasil : hasil // ignore: cast_nullable_to_non_nullable
as Map<String, DiagnosisResultModel>?,
  ));
}


}

// dart format on
