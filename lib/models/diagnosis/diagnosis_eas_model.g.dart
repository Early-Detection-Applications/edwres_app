// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_eas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisEasModel _$DiagnosisEasModelFromJson(Map<String, dynamic> json) =>
    _DiagnosisEasModel(
      kodeEas: json['kode_eas'] as String?,
      inisialEas: json['inisial_eas'] as String?,
      idUser: const StringToIntConverter().fromJson(json['id_user']),
      namaEas: json['nama_eas'] as String?,
      keterangan: json['keterangan'] as String?,
      tips: (json['tips'] as List<dynamic>?)
          ?.map((e) => DiagnosisTipModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiagnosisEasModelToJson(_DiagnosisEasModel instance) =>
    <String, dynamic>{
      'kode_eas': instance.kodeEas,
      'inisial_eas': instance.inisialEas,
      'id_user': const StringToIntConverter().toJson(instance.idUser),
      'nama_eas': instance.namaEas,
      'keterangan': instance.keterangan,
      'tips': instance.tips,
    };
