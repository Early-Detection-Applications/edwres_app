// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0

part of 'modul_pelatihan_bloc.dart';

enum ModulPelatihanStateStatus {
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
abstract class ModulPelatihanState with _$ModulPelatihanState {
  const factory ModulPelatihanState({
    @Default(ModulPelatihanStateStatus.initial)
    ModulPelatihanStateStatus listStatus,
    @Default(ModulPelatihanStateStatus.initial)
    ModulPelatihanStateStatus detailStatus,
    List<ModulPelatihanModel>? data,
    ModulPelatihanModel? detail,
    PaginationModel? pagination,
    @Default('') String error,
  }) = _ModulPelatihanState;
}
