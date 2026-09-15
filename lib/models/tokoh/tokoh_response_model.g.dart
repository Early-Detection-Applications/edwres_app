// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokoh_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokohResponseModel _$TokohResponseModelFromJson(Map<String, dynamic> json) =>
    _TokohResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TokohModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$TokohResponseModelToJson(_TokohResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
      'pagination': instance.pagination,
    };
