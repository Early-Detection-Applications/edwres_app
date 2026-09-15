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

part 'indicator_model.freezed.dart';
part 'indicator_model.g.dart';

@freezed
abstract class IndicatorModel with _$IndicatorModel {
  const IndicatorModel._();
  const factory IndicatorModel({
    @JsonKey(name: 'kode_indikator') String? kodeIndikator,
    @JsonKey(name: 'nama_indikator') String? namaIndikator,
  }) = _IndicatorModel;

  factory IndicatorModel.fromJson(Map<String, dynamic> json) =>
      _$IndicatorModelFromJson(json);

  String get category => (kodeIndikator ?? '').replaceAll(RegExp(r'\d'), '');
}
