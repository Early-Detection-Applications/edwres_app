// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
part of 'referensi_hasil_penelitian_bloc.dart';

@freezed
abstract class ReferensiHasilPenelitianEvent
    with _$ReferensiHasilPenelitianEvent {
  const factory ReferensiHasilPenelitianEvent.fetch({
    @Default(1) int page,
    @Default(9) int perPage,
  }) = _Fetch;
  const factory ReferensiHasilPenelitianEvent.fetchDetail(int id) =
      _FetchDetail;
}
