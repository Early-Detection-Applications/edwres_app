// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referensi_buku_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferensiBukuModel _$ReferensiBukuModelFromJson(Map<String, dynamic> json) =>
    _ReferensiBukuModel(
      id: (json['id'] as num?)?.toInt(),
      judul: json['judul'] as String?,
      penulis: json['penulis'] as String?,
      penerbit: json['penerbit'] as String?,
      tahun: json['tahun'] as String?,
      gambar: json['gambar'] as String?,
      file_dokumen: json['file_dokumen'] as String?,
    );

Map<String, dynamic> _$ReferensiBukuModelToJson(_ReferensiBukuModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'judul': instance.judul,
      'penulis': instance.penulis,
      'penerbit': instance.penerbit,
      'tahun': instance.tahun,
      'gambar': instance.gambar,
      'file_dokumen': instance.file_dokumen,
    };
