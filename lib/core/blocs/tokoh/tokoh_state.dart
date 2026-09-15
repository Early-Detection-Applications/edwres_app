// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

part of 'tokoh_bloc.dart';

enum TokohStateStatus {
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
abstract class TokohState with _$TokohState {
  const factory TokohState({
    @Default(TokohStateStatus.initial) TokohStateStatus listStatus,
    @Default(TokohStateStatus.initial) TokohStateStatus detailStatus,
    List<TokohModel>? data,
    TokohModel? detail,
    PaginationModel? pagination,
    @Default('') String error,
  }) = _TokohState;
}
