// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisResponseModel _$DiagnosisResponseModelFromJson(
  Map<String, dynamic> json,
) => _DiagnosisResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : DiagnosisModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DiagnosisResponseModelToJson(
  _DiagnosisResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};
