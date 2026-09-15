// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
part of 'referensi_buku_bloc.dart';

enum ReferensiBukuStateStatus {
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
abstract class ReferensiBukuState with _$ReferensiBukuState {
  const factory ReferensiBukuState({
    @Default(ReferensiBukuStateStatus.initial)
    ReferensiBukuStateStatus listStatus,
    @Default(ReferensiBukuStateStatus.initial)
    ReferensiBukuStateStatus detailStatus,
    List<ReferensiBukuModel>? data,
    ReferensiBukuModel? detail,
    PaginationModel? pagination,
    @Default('') String error,
  }) = _ReferensiBukuState;
}
