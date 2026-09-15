// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'komentar_model.freezed.dart';
part 'komentar_model.g.dart';

@freezed
abstract class KomentarModel with _$KomentarModel {
  const factory KomentarModel({
    @JsonKey(name: 'id_komentar') int? idKomentar,
    @JsonKey(name: 'id_berita') int? idBerita,
    @JsonKey(name: 'id_user') int? idUser,
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    String? komentar,
    @JsonKey(name: 'tgl_komentar') String? tglKomentar,
  }) = _KomentarModel;

  factory KomentarModel.fromJson(Map<String, dynamic> json) =>
      _$KomentarModelFromJson(json);
}
