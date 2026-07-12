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

import 'package:edwres_app/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
abstract class NewsModel with _$NewsModel {
  const factory NewsModel({
    @JsonKey(name: 'id_berita') String? idBerita,
    @JsonKey(name: 'id_kategori') String? idKategori,
    @JsonKey(name: 'id_user') String? idUser,
    @JsonKey(name: 'judul') String? judul,
    @JsonKey(name: 'isi_berita') String? isiBerita,
    @JsonKey(name: 'gambar') String? gambar,
    @JsonKey(name: 'tanggal') DateTime? tanggal,
    @JsonKey(name: 'counter') String? counter,
    @JsonKey(name: 'jenis_berita') String? jenisBerita,
    @JsonKey(name: 'kategori') KategoriModel? kategori,
    @JsonKey(name: 'user') UserModel? user,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
