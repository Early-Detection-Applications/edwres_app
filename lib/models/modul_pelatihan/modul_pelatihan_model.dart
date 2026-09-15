// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modul_pelatihan_model.freezed.dart';
part 'modul_pelatihan_model.g.dart';

@freezed
abstract class ModulPelatihanModel with _$ModulPelatihanModel {
  const factory ModulPelatihanModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'judul') String? judul,
    @JsonKey(name: 'deskripsi') String? deskripsi,
    @JsonKey(name: 'durasi') String? durasi,
    @JsonKey(name: 'file_modul') String? file_modul,
  }) = _ModulPelatihanModel;

  factory ModulPelatihanModel.fromJson(Map<String, dynamic> json) =>
      _$ModulPelatihanModelFromJson(json);
}
