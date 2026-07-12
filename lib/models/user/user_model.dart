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

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'id_user') int? idUser,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'nama_lengkap') String? nameLengkap,
    @JsonKey(name: 'nama_panggilan') String? namaPanggilan,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'google_id') String? googleId,
    @JsonKey(name: 'asal_sekolah') String? asalSekolah,
    @JsonKey(name: 'kelas_jurusan') String? kelasJurusan,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'foto') String? foto,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
