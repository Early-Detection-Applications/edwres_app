// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_eas_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DiagnosisEasModel {

@JsonKey(name: 'kode_eas') String? get kodeEas;@JsonKey(name: 'inisial_eas') String? get inisialEas;@StringToIntConverter()@JsonKey(name: 'id_user') int? get idUser;@JsonKey(name: 'nama_eas') String? get namaEas;@JsonKey(name: 'keterangan') String? get keterangan;@JsonKey(name: 'tips') List<DiagnosisTipModel>? get tips;
/// Create a copy of DiagnosisEasModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisEasModelCopyWith<DiagnosisEasModel> get copyWith => _$DiagnosisEasModelCopyWithImpl<DiagnosisEasModel>(this as DiagnosisEasModel, _$identity);

  /// Serializes this DiagnosisEasModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisEasModel&&(identical(other.kodeEas, kodeEas) || other.kodeEas == kodeEas)&&(identical(other.inisialEas, inisialEas) || other.inisialEas == inisialEas)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.namaEas, namaEas) || other.namaEas == namaEas)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&const DeepCollectionEquality().equals(other.tips, tips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeEas,inisialEas,idUser,namaEas,keterangan,const DeepCollectionEquality().hash(tips));

@override
String toString() {
  return 'DiagnosisEasModel(kodeEas: $kodeEas, inisialEas: $inisialEas, idUser: $idUser, namaEas: $namaEas, keterangan: $keterangan, tips: $tips)';
}


}

/// @nodoc
abstract mixin class $DiagnosisEasModelCopyWith<$Res>  {
  factory $DiagnosisEasModelCopyWith(DiagnosisEasModel value, $Res Function(DiagnosisEasModel) _then) = _$DiagnosisEasModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'kode_eas') String? kodeEas,@JsonKey(name: 'inisial_eas') String? inisialEas,@StringToIntConverter()@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'nama_eas') String? namaEas,@JsonKey(name: 'keterangan') String? keterangan,@JsonKey(name: 'tips') List<DiagnosisTipModel>? tips
});




}
/// @nodoc
class _$DiagnosisEasModelCopyWithImpl<$Res>
    implements $DiagnosisEasModelCopyWith<$Res> {
  _$DiagnosisEasModelCopyWithImpl(this._self, this._then);

  final DiagnosisEasModel _self;
  final $Res Function(DiagnosisEasModel) _then;

/// Create a copy of DiagnosisEasModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kodeEas = freezed,Object? inisialEas = freezed,Object? idUser = freezed,Object? namaEas = freezed,Object? keterangan = freezed,Object? tips = freezed,}) {
  return _then(_self.copyWith(
kodeEas: freezed == kodeEas ? _self.kodeEas : kodeEas // ignore: cast_nullable_to_non_nullable
as String?,inisialEas: freezed == inisialEas ? _self.inisialEas : inisialEas // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,namaEas: freezed == namaEas ? _self.namaEas : namaEas // ignore: cast_nullable_to_non_nullable
as String?,keterangan: freezed == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String?,tips: freezed == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as List<DiagnosisTipModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisEasModel].
extension DiagnosisEasModelPatterns on DiagnosisEasModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisEasModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisEasModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisEasModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisEasModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisEasModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisEasModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_eas')  String? kodeEas, @JsonKey(name: 'inisial_eas')  String? inisialEas, @StringToIntConverter()@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_eas')  String? namaEas, @JsonKey(name: 'keterangan')  String? keterangan, @JsonKey(name: 'tips')  List<DiagnosisTipModel>? tips)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisEasModel() when $default != null:
return $default(_that.kodeEas,_that.inisialEas,_that.idUser,_that.namaEas,_that.keterangan,_that.tips);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'kode_eas')  String? kodeEas, @JsonKey(name: 'inisial_eas')  String? inisialEas, @StringToIntConverter()@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_eas')  String? namaEas, @JsonKey(name: 'keterangan')  String? keterangan, @JsonKey(name: 'tips')  List<DiagnosisTipModel>? tips)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisEasModel():
return $default(_that.kodeEas,_that.inisialEas,_that.idUser,_that.namaEas,_that.keterangan,_that.tips);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'kode_eas')  String? kodeEas, @JsonKey(name: 'inisial_eas')  String? inisialEas, @StringToIntConverter()@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_eas')  String? namaEas, @JsonKey(name: 'keterangan')  String? keterangan, @JsonKey(name: 'tips')  List<DiagnosisTipModel>? tips)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisEasModel() when $default != null:
return $default(_that.kodeEas,_that.inisialEas,_that.idUser,_that.namaEas,_that.keterangan,_that.tips);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisEasModel implements DiagnosisEasModel {
  const _DiagnosisEasModel({@JsonKey(name: 'kode_eas') this.kodeEas, @JsonKey(name: 'inisial_eas') this.inisialEas, @StringToIntConverter()@JsonKey(name: 'id_user') this.idUser, @JsonKey(name: 'nama_eas') this.namaEas, @JsonKey(name: 'keterangan') this.keterangan, @JsonKey(name: 'tips') final  List<DiagnosisTipModel>? tips}): _tips = tips;
  factory _DiagnosisEasModel.fromJson(Map<String, dynamic> json) => _$DiagnosisEasModelFromJson(json);

@override@JsonKey(name: 'kode_eas') final  String? kodeEas;
@override@JsonKey(name: 'inisial_eas') final  String? inisialEas;
@override@StringToIntConverter()@JsonKey(name: 'id_user') final  int? idUser;
@override@JsonKey(name: 'nama_eas') final  String? namaEas;
@override@JsonKey(name: 'keterangan') final  String? keterangan;
 final  List<DiagnosisTipModel>? _tips;
@override@JsonKey(name: 'tips') List<DiagnosisTipModel>? get tips {
  final value = _tips;
  if (value == null) return null;
  if (_tips is EqualUnmodifiableListView) return _tips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of DiagnosisEasModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisEasModelCopyWith<_DiagnosisEasModel> get copyWith => __$DiagnosisEasModelCopyWithImpl<_DiagnosisEasModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisEasModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisEasModel&&(identical(other.kodeEas, kodeEas) || other.kodeEas == kodeEas)&&(identical(other.inisialEas, inisialEas) || other.inisialEas == inisialEas)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.namaEas, namaEas) || other.namaEas == namaEas)&&(identical(other.keterangan, keterangan) || other.keterangan == keterangan)&&const DeepCollectionEquality().equals(other._tips, _tips));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kodeEas,inisialEas,idUser,namaEas,keterangan,const DeepCollectionEquality().hash(_tips));

@override
String toString() {
  return 'DiagnosisEasModel(kodeEas: $kodeEas, inisialEas: $inisialEas, idUser: $idUser, namaEas: $namaEas, keterangan: $keterangan, tips: $tips)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisEasModelCopyWith<$Res> implements $DiagnosisEasModelCopyWith<$Res> {
  factory _$DiagnosisEasModelCopyWith(_DiagnosisEasModel value, $Res Function(_DiagnosisEasModel) _then) = __$DiagnosisEasModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'kode_eas') String? kodeEas,@JsonKey(name: 'inisial_eas') String? inisialEas,@StringToIntConverter()@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'nama_eas') String? namaEas,@JsonKey(name: 'keterangan') String? keterangan,@JsonKey(name: 'tips') List<DiagnosisTipModel>? tips
});




}
/// @nodoc
class __$DiagnosisEasModelCopyWithImpl<$Res>
    implements _$DiagnosisEasModelCopyWith<$Res> {
  __$DiagnosisEasModelCopyWithImpl(this._self, this._then);

  final _DiagnosisEasModel _self;
  final $Res Function(_DiagnosisEasModel) _then;

/// Create a copy of DiagnosisEasModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kodeEas = freezed,Object? inisialEas = freezed,Object? idUser = freezed,Object? namaEas = freezed,Object? keterangan = freezed,Object? tips = freezed,}) {
  return _then(_DiagnosisEasModel(
kodeEas: freezed == kodeEas ? _self.kodeEas : kodeEas // ignore: cast_nullable_to_non_nullable
as String?,inisialEas: freezed == inisialEas ? _self.inisialEas : inisialEas // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,namaEas: freezed == namaEas ? _self.namaEas : namaEas // ignore: cast_nullable_to_non_nullable
as String?,keterangan: freezed == keterangan ? _self.keterangan : keterangan // ignore: cast_nullable_to_non_nullable
as String?,tips: freezed == tips ? _self._tips : tips // ignore: cast_nullable_to_non_nullable
as List<DiagnosisTipModel>?,
  ));
}


}

// dart format on
