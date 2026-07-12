// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'id_user') int? get idUser;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'nama_lengkap') String? get nameLengkap;@JsonKey(name: 'nama_panggilan') String? get namaPanggilan;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'email_verified_at') DateTime? get emailVerifiedAt;@JsonKey(name: 'google_id') String? get googleId;@JsonKey(name: 'asal_sekolah') String? get asalSekolah;@JsonKey(name: 'kelas_jurusan') String? get kelasJurusan;@JsonKey(name: 'level') String? get level;@JsonKey(name: 'foto') String? get foto;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.username, username) || other.username == username)&&(identical(other.nameLengkap, nameLengkap) || other.nameLengkap == nameLengkap)&&(identical(other.namaPanggilan, namaPanggilan) || other.namaPanggilan == namaPanggilan)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.googleId, googleId) || other.googleId == googleId)&&(identical(other.asalSekolah, asalSekolah) || other.asalSekolah == asalSekolah)&&(identical(other.kelasJurusan, kelasJurusan) || other.kelasJurusan == kelasJurusan)&&(identical(other.level, level) || other.level == level)&&(identical(other.foto, foto) || other.foto == foto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,idUser,username,nameLengkap,namaPanggilan,email,emailVerifiedAt,googleId,asalSekolah,kelasJurusan,level,foto);

@override
String toString() {
  return 'UserModel(id: $id, idUser: $idUser, username: $username, nameLengkap: $nameLengkap, namaPanggilan: $namaPanggilan, email: $email, emailVerifiedAt: $emailVerifiedAt, googleId: $googleId, asalSekolah: $asalSekolah, kelasJurusan: $kelasJurusan, level: $level, foto: $foto)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'username') String? username,@JsonKey(name: 'nama_lengkap') String? nameLengkap,@JsonKey(name: 'nama_panggilan') String? namaPanggilan,@JsonKey(name: 'email') String? email,@JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,@JsonKey(name: 'google_id') String? googleId,@JsonKey(name: 'asal_sekolah') String? asalSekolah,@JsonKey(name: 'kelas_jurusan') String? kelasJurusan,@JsonKey(name: 'level') String? level,@JsonKey(name: 'foto') String? foto
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? idUser = freezed,Object? username = freezed,Object? nameLengkap = freezed,Object? namaPanggilan = freezed,Object? email = freezed,Object? emailVerifiedAt = freezed,Object? googleId = freezed,Object? asalSekolah = freezed,Object? kelasJurusan = freezed,Object? level = freezed,Object? foto = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,nameLengkap: freezed == nameLengkap ? _self.nameLengkap : nameLengkap // ignore: cast_nullable_to_non_nullable
as String?,namaPanggilan: freezed == namaPanggilan ? _self.namaPanggilan : namaPanggilan // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,googleId: freezed == googleId ? _self.googleId : googleId // ignore: cast_nullable_to_non_nullable
as String?,asalSekolah: freezed == asalSekolah ? _self.asalSekolah : asalSekolah // ignore: cast_nullable_to_non_nullable
as String?,kelasJurusan: freezed == kelasJurusan ? _self.kelasJurusan : kelasJurusan // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,foto: freezed == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'nama_lengkap')  String? nameLengkap, @JsonKey(name: 'nama_panggilan')  String? namaPanggilan, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'email_verified_at')  DateTime? emailVerifiedAt, @JsonKey(name: 'google_id')  String? googleId, @JsonKey(name: 'asal_sekolah')  String? asalSekolah, @JsonKey(name: 'kelas_jurusan')  String? kelasJurusan, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'foto')  String? foto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.idUser,_that.username,_that.nameLengkap,_that.namaPanggilan,_that.email,_that.emailVerifiedAt,_that.googleId,_that.asalSekolah,_that.kelasJurusan,_that.level,_that.foto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'nama_lengkap')  String? nameLengkap, @JsonKey(name: 'nama_panggilan')  String? namaPanggilan, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'email_verified_at')  DateTime? emailVerifiedAt, @JsonKey(name: 'google_id')  String? googleId, @JsonKey(name: 'asal_sekolah')  String? asalSekolah, @JsonKey(name: 'kelas_jurusan')  String? kelasJurusan, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'foto')  String? foto)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.idUser,_that.username,_that.nameLengkap,_that.namaPanggilan,_that.email,_that.emailVerifiedAt,_that.googleId,_that.asalSekolah,_that.kelasJurusan,_that.level,_that.foto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'id_user')  int? idUser, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'nama_lengkap')  String? nameLengkap, @JsonKey(name: 'nama_panggilan')  String? namaPanggilan, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'email_verified_at')  DateTime? emailVerifiedAt, @JsonKey(name: 'google_id')  String? googleId, @JsonKey(name: 'asal_sekolah')  String? asalSekolah, @JsonKey(name: 'kelas_jurusan')  String? kelasJurusan, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'foto')  String? foto)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.idUser,_that.username,_that.nameLengkap,_that.namaPanggilan,_that.email,_that.emailVerifiedAt,_that.googleId,_that.asalSekolah,_that.kelasJurusan,_that.level,_that.foto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({@JsonKey(name: 'id') this.id, @JsonKey(name: 'id_user') this.idUser, @JsonKey(name: 'username') this.username, @JsonKey(name: 'nama_lengkap') this.nameLengkap, @JsonKey(name: 'nama_panggilan') this.namaPanggilan, @JsonKey(name: 'email') this.email, @JsonKey(name: 'email_verified_at') this.emailVerifiedAt, @JsonKey(name: 'google_id') this.googleId, @JsonKey(name: 'asal_sekolah') this.asalSekolah, @JsonKey(name: 'kelas_jurusan') this.kelasJurusan, @JsonKey(name: 'level') this.level, @JsonKey(name: 'foto') this.foto});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'id_user') final  int? idUser;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'nama_lengkap') final  String? nameLengkap;
@override@JsonKey(name: 'nama_panggilan') final  String? namaPanggilan;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'email_verified_at') final  DateTime? emailVerifiedAt;
@override@JsonKey(name: 'google_id') final  String? googleId;
@override@JsonKey(name: 'asal_sekolah') final  String? asalSekolah;
@override@JsonKey(name: 'kelas_jurusan') final  String? kelasJurusan;
@override@JsonKey(name: 'level') final  String? level;
@override@JsonKey(name: 'foto') final  String? foto;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.idUser, idUser) || other.idUser == idUser)&&(identical(other.username, username) || other.username == username)&&(identical(other.nameLengkap, nameLengkap) || other.nameLengkap == nameLengkap)&&(identical(other.namaPanggilan, namaPanggilan) || other.namaPanggilan == namaPanggilan)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.googleId, googleId) || other.googleId == googleId)&&(identical(other.asalSekolah, asalSekolah) || other.asalSekolah == asalSekolah)&&(identical(other.kelasJurusan, kelasJurusan) || other.kelasJurusan == kelasJurusan)&&(identical(other.level, level) || other.level == level)&&(identical(other.foto, foto) || other.foto == foto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,idUser,username,nameLengkap,namaPanggilan,email,emailVerifiedAt,googleId,asalSekolah,kelasJurusan,level,foto);

@override
String toString() {
  return 'UserModel(id: $id, idUser: $idUser, username: $username, nameLengkap: $nameLengkap, namaPanggilan: $namaPanggilan, email: $email, emailVerifiedAt: $emailVerifiedAt, googleId: $googleId, asalSekolah: $asalSekolah, kelasJurusan: $kelasJurusan, level: $level, foto: $foto)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'id_user') int? idUser,@JsonKey(name: 'username') String? username,@JsonKey(name: 'nama_lengkap') String? nameLengkap,@JsonKey(name: 'nama_panggilan') String? namaPanggilan,@JsonKey(name: 'email') String? email,@JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,@JsonKey(name: 'google_id') String? googleId,@JsonKey(name: 'asal_sekolah') String? asalSekolah,@JsonKey(name: 'kelas_jurusan') String? kelasJurusan,@JsonKey(name: 'level') String? level,@JsonKey(name: 'foto') String? foto
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? idUser = freezed,Object? username = freezed,Object? nameLengkap = freezed,Object? namaPanggilan = freezed,Object? email = freezed,Object? emailVerifiedAt = freezed,Object? googleId = freezed,Object? asalSekolah = freezed,Object? kelasJurusan = freezed,Object? level = freezed,Object? foto = freezed,}) {
  return _then(_UserModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,idUser: freezed == idUser ? _self.idUser : idUser // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,nameLengkap: freezed == nameLengkap ? _self.nameLengkap : nameLengkap // ignore: cast_nullable_to_non_nullable
as String?,namaPanggilan: freezed == namaPanggilan ? _self.namaPanggilan : namaPanggilan // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,googleId: freezed == googleId ? _self.googleId : googleId // ignore: cast_nullable_to_non_nullable
as String?,asalSekolah: freezed == asalSekolah ? _self.asalSekolah : asalSekolah // ignore: cast_nullable_to_non_nullable
as String?,kelasJurusan: freezed == kelasJurusan ? _self.kelasJurusan : kelasJurusan // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,foto: freezed == foto ? _self.foto : foto // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
