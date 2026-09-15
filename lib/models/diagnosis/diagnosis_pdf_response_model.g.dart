// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_pdf_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DiagnosisPdfResponseModel _$DiagnosisPdfResponseModelFromJson(
  Map<String, dynamic> json,
) => _DiagnosisPdfResponseModel(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  pdfUrl: json['pdf_url'] as String?,
);

Map<String, dynamic> _$DiagnosisPdfResponseModelToJson(
  _DiagnosisPdfResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'pdf_url': instance.pdfUrl,
};
