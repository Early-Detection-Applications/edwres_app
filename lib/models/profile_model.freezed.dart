// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

@JsonKey(name: 'id_user') int? get idUser;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'nama_lengkap') String? get namaLengkap;@JsonKey(name: 'nama_panggilan') String? get namaPanggilan;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'asal_sekolah') String? get asalSekolah;@JsonKey(name: 'kelas_jurusan') String? get kelasJurusan;@JsonKey(name: 'level') String? get level;@JsonKey(name: 'foto') String? get foto;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.username, username) || other.username == username)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.namaPanggilan, namaPanggilan) || other.namaPanggilan == namaPanggilan)&&(identical(other.email, email) || other.email == email)&&(identical(other.asalSekolah, asalSekolah) || other.asalSekolah == asalSekolah)&&(identical(other.kelasJurusan, kelasJurusan) || other.kelasJurusan == kelasJurusan)&&(identical(other.level, level) || other.level == level)&&(identical(other.foto, foto) || other.foto == foto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUser,username,namaLengkap,namaPanggilan,email,asalSekolah,kelasJurusan,level,foto);

@override
String toString() {
  return 'ProfileModel(idUser: $idUser, username: $username, namaLengkap: $namaLengkap, namaPanggilan: $namaPanggilan, email: $email, asalSekolah: $asalSekolah, kelasJurusan: $kelasJurusan, level: $level, foto: $foto)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'username') String? username,@JsonKey(name: 'nama_lengkap') String? namaLengkap,@JsonKey(name: 'nama_panggilan') String? namaPanggilan,@JsonKey(name: 'email') String? email,@JsonKey(name: 'asal_sekolah') String? asalSekolah,@JsonKey(name: 'kelas_jurusan') String? kelasJurusan,@JsonKey(name: 'level') String? level,@JsonKey(name: 'foto') String? foto
});




}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idUser = freezed,Object? username = freezed,Object? namaLengkap = freezed,Object? namaPanggilan = freezed,Object? email = freezed,Object? asalSekolah = freezed,Object? kelasJurusan = freezed,Object? level = freezed,Object? foto = freezed,}) {
  return _then(_self.copyWith(
idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,namaPanggilan: freezed == namaPanggilan ? _self.namaPanggilan : namaPanggilan // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,asalSekolah: freezed == asalSekolah ? _self.asalSekolah : asalSekolah // ignore: cast_nullable_to_non_nullable
as String?,kelasJurusan: freezed == kelasJurusan ? _self.kelasJurusan : kelasJurusan // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,foto: freezed == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'nama_lengkap')  String? namaLengkap, @JsonKey(name: 'nama_panggilan')  String? namaPanggilan, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'asal_sekolah')  String? asalSekolah, @JsonKey(name: 'kelas_jurusan')  String? kelasJurusan, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'foto')  String? foto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.idUser,_that.username,_that.namaLengkap,_that.namaPanggilan,_that.email,_that.asalSekolah,_that.kelasJurusan,_that.level,_that.foto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'nama_lengkap')  String? namaLengkap, @JsonKey(name: 'nama_panggilan')  String? namaPanggilan, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'asal_sekolah')  String? asalSekolah, @JsonKey(name: 'kelas_jurusan')  String? kelasJurusan, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'foto')  String? foto)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.idUser,_that.username,_that.namaLengkap,_that.namaPanggilan,_that.email,_that.asalSekolah,_that.kelasJurusan,_that.level,_that.foto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'nama_lengkap')  String? namaLengkap, @JsonKey(name: 'nama_panggilan')  String? namaPanggilan, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'asal_sekolah')  String? asalSekolah, @JsonKey(name: 'kelas_jurusan')  String? kelasJurusan, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'foto')  String? foto)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.idUser,_that.username,_that.namaLengkap,_that.namaPanggilan,_that.email,_that.asalSekolah,_that.kelasJurusan,_that.level,_that.foto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel implements ProfileModel {
  const _ProfileModel({@JsonKey(name: 'id_user') this.idUser, @JsonKey(name: 'username') this.username, @JsonKey(name: 'nama_lengkap') this.namaLengkap, @JsonKey(name: 'nama_panggilan') this.namaPanggilan, @JsonKey(name: 'email') this.email, @JsonKey(name: 'asal_sekolah') this.asalSekolah, @JsonKey(name: 'kelas_jurusan') this.kelasJurusan, @JsonKey(name: 'level') this.level, @JsonKey(name: 'foto') this.foto});
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override@JsonKey(name: 'id_user') final  int? idUser;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'nama_lengkap') final  String? namaLengkap;
@override@JsonKey(name: 'nama_panggilan') final  String? namaPanggilan;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'asal_sekolah') final  String? asalSekolah;
@override@JsonKey(name: 'kelas_jurusan') final  String? kelasJurusan;
@override@JsonKey(name: 'level') final  String? level;
@override@JsonKey(name: 'foto') final  String? foto;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.username, username) || other.username == username)&&(identical(other.namaLengkap, namaLengkap) || other.namaLengkap == namaLengkap)&&(identical(other.namaPanggilan, namaPanggilan) || other.namaPanggilan == namaPanggilan)&&(identical(other.email, email) || other.email == email)&&(identical(other.asalSekolah, asalSekolah) || other.asalSekolah == asalSekolah)&&(identical(other.kelasJurusan, kelasJurusan) || other.kelasJurusan == kelasJurusan)&&(identical(other.level, level) || other.level == level)&&(identical(other.foto, foto) || other.foto == foto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,idUser,username,namaLengkap,namaPanggilan,email,asalSekolah,kelasJurusan,level,foto);

@override
String toString() {
  return 'ProfileModel(idUser: $idUser, username: $username, namaLengkap: $namaLengkap, namaPanggilan: $namaPanggilan, email: $email, asalSekolah: $asalSekolah, kelasJurusan: $kelasJurusan, level: $level, foto: $foto)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'username') String? username,@JsonKey(name: 'nama_lengkap') String? namaLengkap,@JsonKey(name: 'nama_panggilan') String? namaPanggilan,@JsonKey(name: 'email') String? email,@JsonKey(name: 'asal_sekolah') String? asalSekolah,@JsonKey(name: 'kelas_jurusan') String? kelasJurusan,@JsonKey(name: 'level') String? level,@JsonKey(name: 'foto') String? foto
});




}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idUser = freezed,Object? username = freezed,Object? namaLengkap = freezed,Object? namaPanggilan = freezed,Object? email = freezed,Object? asalSekolah = freezed,Object? kelasJurusan = freezed,Object? level = freezed,Object? foto = freezed,}) {
  return _then(_ProfileModel(
idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,namaLengkap: freezed == namaLengkap ? _self.namaLengkap : namaLengkap // ignore: cast_nullable_to_non_nullable
as String?,namaPanggilan: freezed == namaPanggilan ? _self.namaPanggilan : namaPanggilan // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,asalSekolah: freezed == asalSekolah ? _self.asalSekolah : asalSekolah // ignore: cast_nullable_to_non_nullable
as String?,kelasJurusan: freezed == kelasJurusan ? _self.kelasJurusan : kelasJurusan // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,foto: freezed == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
