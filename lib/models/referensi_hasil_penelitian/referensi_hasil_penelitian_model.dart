// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referensi_hasil_penelitian_model.freezed.dart';
part 'referensi_hasil_penelitian_model.g.dart';

@freezed
abstract class ReferensiHasilPenelitianModel
    with _$ReferensiHasilPenelitianModel {
  const factory ReferensiHasilPenelitianModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'judul') String? judul,
    @JsonKey(name: 'peneliti') String? peneliti,
    @JsonKey(name: 'institusi') String? institusi,
    @JsonKey(name: 'tahun') String? tahun,
    @JsonKey(name: 'deskripsi') String? deskripsi,
    @JsonKey(name: 'file_dokumen') String? fileDokumen,
  }) = _ReferensiHasilPenelitianModel;

  factory ReferensiHasilPenelitianModel.fromJson(Map<String, dynamic> json) =>
      _$ReferensiHasilPenelitianModelFromJson(json);
}
