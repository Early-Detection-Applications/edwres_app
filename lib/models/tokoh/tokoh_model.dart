// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokoh_model.freezed.dart';
part 'tokoh_model.g.dart';

@freezed
abstract class TokohModel with _$TokohModel {
  const factory TokohModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'nama_tokoh') String? namaTokoh,
    @JsonKey(name: 'nama_teori') String? namaTeori,
    @JsonKey(name: 'teori') String? teori,
    @JsonKey(name: 'gambar') String? gambar,
  }) = _TokohModel;

  factory TokohModel.fromJson(Map<String, dynamic> json) =>
      _$TokohModelFromJson(json);
}
