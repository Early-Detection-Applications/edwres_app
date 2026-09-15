// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

part of 'panduan_aplikasi_bloc.dart';

enum PanduanAplikasiStateStatus {
  initial,
  loading,
  loaded,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isLoaded => this == loaded;
  bool get isError => this == error;
}

@freezed
abstract class PanduanAplikasiState with _$PanduanAplikasiState {
  const factory PanduanAplikasiState({
    @Default(PanduanAplikasiStateStatus.initial)
    PanduanAplikasiStateStatus listStatus,
    @Default(PanduanAplikasiStateStatus.initial)
    PanduanAplikasiStateStatus detailStatus,
    List<PanduanAplikasiModel>? data,
    PanduanAplikasiModel? detail,
    PaginationModel? pagination,
    @Default('') String error,
  }) = _PanduanAplikasiState;
}
