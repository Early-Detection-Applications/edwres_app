// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IndicatorResponseModel _$IndicatorResponseModelFromJson(
  Map<String, dynamic> json,
) => _IndicatorResponseModel(
  indikator:
      (json['indikator'] as List<dynamic>?)
          ?.map((e) => IndicatorModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$IndicatorResponseModelToJson(
  _IndicatorResponseModel instance,
) => <String, dynamic>{'indikator': instance.indikator};
