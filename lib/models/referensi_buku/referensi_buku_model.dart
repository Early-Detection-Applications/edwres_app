// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referensi_buku_model.freezed.dart';
part 'referensi_buku_model.g.dart';

@freezed
abstract class ReferensiBukuModel with _$ReferensiBukuModel {
  const factory ReferensiBukuModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'judul') String? judul,
    @JsonKey(name: 'penulis') String? penulis,
    @JsonKey(name: 'penerbit') String? penerbit,
    @JsonKey(name: 'tahun') String? tahun,
    @JsonKey(name: 'gambar') String? gambar,
    @JsonKey(name: 'file_dokumen') String? file_dokumen,
  }) = _ReferensiBukuModel;

  factory ReferensiBukuModel.fromJson(Map<String, dynamic> json) =>
      _$ReferensiBukuModelFromJson(json);
}
