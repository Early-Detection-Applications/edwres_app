// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisModel _$DiagnosisModelFromJson(Map<String, dynamic> json) =>
    _DiagnosisModel(
      riwayatId: (json['riwayat_id'] as num?)?.toInt(),
      tanggal: json['tanggal'] as String?,
      hasil: (json['hasil'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DiagnosisResultModel.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );

Map<String, dynamic> _$DiagnosisModelToJson(_DiagnosisModel instance) =>
    <String, dynamic>{
      'riwayat_id': instance.riwayatId,
      'tanggal': instance.tanggal,
      'hasil': instance.hasil,
    };
