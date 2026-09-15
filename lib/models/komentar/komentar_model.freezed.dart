// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'komentar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KomentarModel {

@JsonKey(name: 'id_komentar') int? get idKomentar;@JsonKey(name: 'id_berita') int? get idBerita;@JsonKey(name: 'id_user') int? get idUser;@JsonKey(name: 'nama_lengkap') String? get namaLengkap; String? get komentar;@JsonKey(name: 'tgl_komentar') String? get tglKomentar;
/// Create a copy of KomentarModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KomentarModelCopyWith<KomentarModel> get copyWith => _$KomentarModelCopyWithImpl<KomentarModel>(this as KomentarModel, _$identity);

  /// Serializes this KomentarModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KomentarModel&&(identical(other.idKomentar, idKomentar) || other.idKomentar == idKomentar)&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.komentar, komentar) || other.komentar == komentar)&&(identical(other.tglKomentar, tglKomentar) || other.tglKomentar == tglKomentar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idKomentar,idBerita,idUser,namaLengkap,komentar,tglKomentar);

@override
String toString() {
  return 'KomentarModel(idKomentar: $idKomentar, idBerita: $idBerita, idUser: $idUser, namaLengkap: $namaLengkap, komentar: $komentar, tglKomentar: $tglKomentar)';
}


}

/// @nodoc
abstract mixin class $KomentarModelCopyWith<$Res>  {
  factory $KomentarModelCopyWith(KomentarModel value, $Res Function(KomentarModel) _then) = _$KomentarModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_komentar') int? idKomentar,@JsonKey(name: 'id_berita') int? idBerita,@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? komentar,@JsonKey(name: 'tgl_komentar') String? tglKomentar
});




}
/// @nodoc
class _$KomentarModelCopyWithImpl<$Res>
    implements $KomentarModelCopyWith<$Res> {
  _$KomentarModelCopyWithImpl(this._self, this._then);

  final KomentarModel _self;
  final $Res Function(KomentarModel) _then;

/// Create a copy of KomentarModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idKomentar = freezed,Object? idBerita = freezed,Object? idUser = freezed,Object? namaLengkap = freezed,Object? komentar = freezed,Object? tglKomentar = freezed,}) {
  return _then(_self.copyWith(
idKomentar: freezed == idKomentar ? _self.idKomentar : idKomentar // ignore: cast_nullable_to_non_nullable
as int?,idBerita: freezed == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as int?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,komentar: freezed == komentar ? _self.komentar : komentar // ignore: cast_nullable_to_non_nullable
as String?,tglKomentar: freezed == tglKomentar ? _self.tglKomentar : tglKomentar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KomentarModel].
extension KomentarModelPatterns on KomentarModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KomentarModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KomentarModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KomentarModel value)  $default,){
final _that = this;
switch (_that) {
case _KomentarModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KomentarModel value)?  $default,){
final _that = this;
switch (_that) {
case _KomentarModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_komentar')  int? idKomentar, @JsonKey(name: 'id_berita')  int? idBerita, @JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? komentar, @JsonKey(name: 'tgl_komentar')  String? tglKomentar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KomentarModel() when $default != null:
return $default(_that.idKomentar,_that.idBerita,_that.idUser,_that.namaLengkap,_that.komentar,_that.tglKomentar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_komentar')  int? idKomentar, @JsonKey(name: 'id_berita')  int? idBerita, @JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? komentar, @JsonKey(name: 'tgl_komentar')  String? tglKomentar)  $default,) {final _that = this;
switch (_that) {
case _KomentarModel():
return $default(_that.idKomentar,_that.idBerita,_that.idUser,_that.namaLengkap,_that.komentar,_that.tglKomentar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_komentar')  int? idKomentar, @JsonKey(name: 'id_berita')  int? idBerita, @JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'nama_lengkap')  String? namaLengkap,  String? komentar, @JsonKey(name: 'tgl_komentar')  String? tglKomentar)?  $default,) {final _that = this;
switch (_that) {
case _KomentarModel() when $default != null:
return $default(_that.idKomentar,_that.idBerita,_that.idUser,_that.namaLengkap,_that.komentar,_that.tglKomentar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KomentarModel implements KomentarModel {
  const _KomentarModel({@JsonKey(name: 'id_komentar') this.idKomentar, @JsonKey(name: 'id_berita') this.idBerita, @JsonKey(name: 'id_user') this.idUser, @JsonKey(name: 'nama_lengkap') this.namaLengkap, this.komentar, @JsonKey(name: 'tgl_komentar') this.tglKomentar});
  factory _KomentarModel.fromJson(Map<String, dynamic> json) => _$KomentarModelFromJson(json);

@override@JsonKey(name: 'id_komentar') final  int? idKomentar;
@override@JsonKey(name: 'id_berita') final  int? idBerita;
@override@JsonKey(name: 'id_user') final  int? idUser;
@override@JsonKey(name: 'nama_lengkap') final  String? namaLengkap;
@override final  String? komentar;
@override@JsonKey(name: 'tgl_komentar') final  String? tglKomentar;

/// Create a copy of KomentarModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KomentarModelCopyWith<_KomentarModel> get copyWith => __$KomentarModelCopyWithImpl<_KomentarModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KomentarModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KomentarModel&&(identical(other.idKomentar, idKomentar) || other.idKomentar == idKomentar)&&(identical(other.idBerita, idBerita) || other.idBerita == idBerita)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.komentar, komentar) || other.komentar == komentar)&&(identical(other.tglKomentar, tglKomentar) || other.tglKomentar == tglKomentar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idKomentar,idBerita,idUser,namaLengkap,komentar,tglKomentar);

@override
String toString() {
  return 'KomentarModel(idKomentar: $idKomentar, idBerita: $idBerita, idUser: $idUser, namaLengkap: $namaLengkap, komentar: $komentar, tglKomentar: $tglKomentar)';
}


}

/// @nodoc
abstract mixin class _$KomentarModelCopyWith<$Res> implements $KomentarModelCopyWith<$Res> {
  factory _$KomentarModelCopyWith(_KomentarModel value, $Res Function(_KomentarModel) _then) = __$KomentarModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_komentar') int? idKomentar,@JsonKey(name: 'id_berita') int? idBerita,@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'nama_lengkap') String? namaLengkap, String? komentar,@JsonKey(name: 'tgl_komentar') String? tglKomentar
});




}
/// @nodoc
class __$KomentarModelCopyWithImpl<$Res>
    implements _$KomentarModelCopyWith<$Res> {
  __$KomentarModelCopyWithImpl(this._self, this._then);

  final _KomentarModel _self;
  final $Res Function(_KomentarModel) _then;

/// Create a copy of KomentarModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idKomentar = freezed,Object? idBerita = freezed,Object? idUser = freezed,Object? namaLengkap = freezed,Object? komentar = freezed,Object? tglKomentar = freezed,}) {
  return _then(_KomentarModel(
idKomentar: freezed == idKomentar ? _self.idKomentar : idKomentar // ignore: cast_nullable_to_non_nullable
as int?,idBerita: freezed == idBerita ? _self.idBerita : idBerita // ignore: cast_nullable_to_non_nullable
as int?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,komentar: freezed == komentar ? _self.komentar : komentar // ignore: cast_nullable_to_non_nullable
as String?,tglKomentar: freezed == tglKomentar ? _self.tglKomentar : tglKomentar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
