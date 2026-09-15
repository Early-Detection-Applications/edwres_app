// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:freezed_annotation/freezed_annotation.dart';

part 'panduan_aplikasi_model.freezed.dart';
part 'panduan_aplikasi_model.g.dart';

@freezed
abstract class PanduanAplikasiModel with _$PanduanAplikasiModel {
  const factory PanduanAplikasiModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'judul') String? judul,
    @JsonKey(name: 'isi_panduan') String? isi_panduan,
    @JsonKey(name: 'gambar') String? gambar,
    @JsonKey(name: 'video_url') String? videoUrl,
  }) = _PanduanAplikasiModel;

  factory PanduanAplikasiModel.fromJson(Map<String, dynamic> json) =>
      _$PanduanAplikasiModelFromJson(json);
}
