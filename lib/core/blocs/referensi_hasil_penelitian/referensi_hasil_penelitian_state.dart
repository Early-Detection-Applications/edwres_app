// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

part of 'referensi_hasil_penelitian_bloc.dart';

enum ReferensiHasilPenelitianStateStatus {
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
abstract class ReferensiHasilPenelitianState
    with _$ReferensiHasilPenelitianState {
  const factory ReferensiHasilPenelitianState({
    @Default(ReferensiHasilPenelitianStateStatus.initial)
    ReferensiHasilPenelitianStateStatus listStatus,
    @Default(ReferensiHasilPenelitianStateStatus.initial)
    ReferensiHasilPenelitianStateStatus detailStatus,
    List<ReferensiHasilPenelitianModel>? data,
    ReferensiHasilPenelitianModel? detail,
    PaginationModel? pagination,
    @Default('') String error,
  }) = _ReferensiHasilPenelitianState;
}
