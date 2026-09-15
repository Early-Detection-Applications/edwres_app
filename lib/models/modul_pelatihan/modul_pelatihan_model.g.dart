// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modul_pelatihan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModulPelatihanModel _$ModulPelatihanModelFromJson(Map<String, dynamic> json) =>
    _ModulPelatihanModel(
      id: (json['id'] as num?)?.toInt(),
      judul: json['judul'] as String?,
      deskripsi: json['deskripsi'] as String?,
      durasi: json['durasi'] as String?,
      file_modul: json['file_modul'] as String?,
    );

Map<String, dynamic> _$ModulPelatihanModelToJson(
  _ModulPelatihanModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'judul': instance.judul,
  'deskripsi': instance.deskripsi,
  'durasi': instance.durasi,
  'file_modul': instance.file_modul,
};
