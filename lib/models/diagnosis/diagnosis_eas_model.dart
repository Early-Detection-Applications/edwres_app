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

import 'package:edwres_app/core/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'diagnosis_tip_model.dart';

part 'diagnosis_eas_model.freezed.dart';
part 'diagnosis_eas_model.g.dart';

@freezed
abstract class DiagnosisEasModel with _$DiagnosisEasModel {
  const factory DiagnosisEasModel({
    @JsonKey(name: 'kode_eas') String? kodeEas,

    @JsonKey(name: 'inisial_eas') String? inisialEas,

    @StringToIntConverter() @JsonKey(name: 'id_user') int? idUser,

    @JsonKey(name: 'nama_eas') String? namaEas,

    @JsonKey(name: 'keterangan') String? keterangan,

    @JsonKey(name: 'tips') List<DiagnosisTipModel>? tips,
  }) = _DiagnosisEasModel;

  factory DiagnosisEasModel.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisEasModelFromJson(json);
}
