// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokoh_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokohModel _$TokohModelFromJson(Map<String, dynamic> json) => _TokohModel(
  id: (json['id'] as num?)?.toInt(),
  namaTokoh: json['nama_tokoh'] as String?,
  namaTeori: json['nama_teori'] as String?,
  teori: json['teori'] as String?,
  gambar: json['gambar'] as String?,
);

Map<String, dynamic> _$TokohModelToJson(_TokohModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_tokoh': instance.namaTokoh,
      'nama_teori': instance.namaTeori,
      'teori': instance.teori,
      'gambar': instance.gambar,
    };
