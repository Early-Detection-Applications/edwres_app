// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detection_history_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetectionHistoryResponseModel _$DetectionHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) => _DetectionHistoryResponseModel(
  status: json['status'] as String?,
  message: json['message'] as String?,
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => DetectionHistoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DetectionHistoryResponseModelToJson(
  _DetectionHistoryResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};
