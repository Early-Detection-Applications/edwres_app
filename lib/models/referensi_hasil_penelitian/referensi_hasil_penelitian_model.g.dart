// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referensi_hasil_penelitian_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReferensiHasilPenelitianModel _$ReferensiHasilPenelitianModelFromJson(
  Map<String, dynamic> json,
) => _ReferensiHasilPenelitianModel(
  id: (json['id'] as num?)?.toInt(),
  judul: json['judul'] as String?,
  peneliti: json['peneliti'] as String?,
  institusi: json['institusi'] as String?,
  tahun: json['tahun'] as String?,
  deskripsi: json['deskripsi'] as String?,
  fileDokumen: json['file_dokumen'] as String?,
);

Map<String, dynamic> _$ReferensiHasilPenelitianModelToJson(
  _ReferensiHasilPenelitianModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'judul': instance.judul,
  'peneliti': instance.peneliti,
  'institusi': instance.institusi,
  'tahun': instance.tahun,
  'deskripsi': instance.deskripsi,
  'file_dokumen': instance.fileDokumen,
};
