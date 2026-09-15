// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      idUser: (json['id_user'] as num?)?.toInt(),
      username: json['username'] as String?,
      namaLengkap: json['nama_lengkap'] as String?,
      namaPanggilan: json['nama_panggilan'] as String?,
      email: json['email'] as String?,
      asalSekolah: json['asal_sekolah'] as String?,
      kelasJurusan: json['kelas_jurusan'] as String?,
      level: json['level'] as String?,
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'id_user': instance.idUser,
      'username': instance.username,
      'nama_lengkap': instance.namaLengkap,
      'nama_panggilan': instance.namaPanggilan,
      'email': instance.email,
      'asal_sekolah': instance.asalSekolah,
      'kelas_jurusan': instance.kelasJurusan,
      'level': instance.level,
      'foto': instance.foto,
    };
