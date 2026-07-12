// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DataResponseModel<T> _$DataResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _DataResponseModel<T>(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : DataModel<T>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) => fromJsonT(value),
        ),
);
