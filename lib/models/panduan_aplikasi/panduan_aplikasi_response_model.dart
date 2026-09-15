// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/models/pagination/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'panduan_aplikasi_model.dart';

part 'panduan_aplikasi_response_model.freezed.dart';
part 'panduan_aplikasi_response_model.g.dart';

@freezed
abstract class PanduanAplikasiResponseModel with _$PanduanAplikasiResponseModel {
  const factory PanduanAplikasiResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<PanduanAplikasiModel>? data,
    @JsonKey(name: 'pagination') PaginationModel? pagination,
  }) = _PanduanAplikasiResponseModel;

  factory PanduanAplikasiResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$PanduanAplikasiResponseModelFromJson(json);
}
