// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
part of 'modul_pelatihan_bloc.dart';

@freezed
abstract class ModulPelatihanEvent with _$ModulPelatihanEvent {
  const factory ModulPelatihanEvent.fetch({
    @Default(1) int page,
    @Default(9) int perPage,
  }) = _Fetch;
  const factory ModulPelatihanEvent.fetchDetail(int id) = _FetchDetail;
}
