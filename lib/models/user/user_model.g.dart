// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String?,
  idUser: (json['id_user'] as num?)?.toInt(),
  username: json['username'] as String?,
  nameLengkap: json['nama_lengkap'] as String?,
  namaPanggilan: json['nama_panggilan'] as String?,
  email: json['email'] as String?,
  emailVerifiedAt: json['email_verified_at'] == null
      ? null
      : DateTime.parse(json['email_verified_at'] as String),
  googleId: json['google_id'] as String?,
  asalSekolah: json['asal_sekolah'] as String?,
  kelasJurusan: json['kelas_jurusan'] as String?,
  level: json['level'] as String?,
  foto: json['foto'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_user': instance.idUser,
      'username': instance.username,
      'nama_lengkap': instance.nameLengkap,
      'nama_panggilan': instance.namaPanggilan,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'google_id': instance.googleId,
      'asal_sekolah': instance.asalSekolah,
      'kelas_jurusan': instance.kelasJurusan,
      'level': instance.level,
      'foto': instance.foto,
    };
