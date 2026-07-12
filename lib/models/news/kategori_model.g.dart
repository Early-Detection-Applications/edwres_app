// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kategori_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KategoriModel _$KategoriModelFromJson(Map<String, dynamic> json) =>
    _KategoriModel(
      idKategori: (json['id_kategori'] as num?)?.toInt(),
      namaKategori: json['nama_kategori'] as String?,
      Keterangan: json['keterangan'] as String?,
    );

Map<String, dynamic> _$KategoriModelToJson(_KategoriModel instance) =>
    <String, dynamic>{
      'id_kategori': instance.idKategori,
      'nama_kategori': instance.namaKategori,
      'keterangan': instance.Keterangan,
    };
