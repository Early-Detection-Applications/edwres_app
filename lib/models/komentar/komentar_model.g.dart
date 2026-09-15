// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'komentar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KomentarModel _$KomentarModelFromJson(Map<String, dynamic> json) =>
    _KomentarModel(
      idKomentar: (json['id_komentar'] as num?)?.toInt(),
      idBerita: (json['id_berita'] as num?)?.toInt(),
      idUser: (json['id_user'] as num?)?.toInt(),
      namaLengkap: json['nama_lengkap'] as String?,
      komentar: json['komentar'] as String?,
      tglKomentar: json['tgl_komentar'] as String?,
    );

Map<String, dynamic> _$KomentarModelToJson(_KomentarModel instance) =>
    <String, dynamic>{
      'id_komentar': instance.idKomentar,
      'id_berita': instance.idBerita,
      'id_user': instance.idUser,
      'nama_lengkap': instance.namaLengkap,
      'komentar': instance.komentar,
      'tgl_komentar': instance.tglKomentar,
    };
