// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisResultModel _$DiagnosisResultModelFromJson(
  Map<String, dynamic> json,
) => _DiagnosisResultModel(
  eas: json['eas'] == null
      ? null
      : DiagnosisEasModel.fromJson(json['eas'] as Map<String, dynamic>),
  mb: const StringToDoubleConverter().fromJson(json['mb']),
  md: const StringToDoubleConverter().fromJson(json['md']),
  cf: const StringToDoubleConverter().fromJson(json['cf']),
  percentage: const StringToDoubleConverter().fromJson(json['percentage']),
  category: json['category'] as String?,
);

Map<String, dynamic> _$DiagnosisResultModelToJson(
  _DiagnosisResultModel instance,
) => <String, dynamic>{
  'eas': instance.eas,
  'mb': const StringToDoubleConverter().toJson(instance.mb),
  'md': const StringToDoubleConverter().toJson(instance.md),
  'cf': const StringToDoubleConverter().toJson(instance.cf),
  'percentage': const StringToDoubleConverter().toJson(instance.percentage),
  'category': instance.category,
};
