// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/models/pagination/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'referensi_hasil_penelitian_model.dart';

part 'referensi_hasil_penelitian_response_model.freezed.dart';
part 'referensi_hasil_penelitian_response_model.g.dart';

@freezed
abstract class ReferensiHasilPenelitianResponseModel with _$ReferensiHasilPenelitianResponseModel {
  const factory ReferensiHasilPenelitianResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<ReferensiHasilPenelitianModel>? data,
    @JsonKey(name: 'pagination') PaginationModel? pagination,
  }) = _ReferensiHasilPenelitianResponseModel;

  factory ReferensiHasilPenelitianResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$ReferensiHasilPenelitianResponseModelFromJson(json);
}
