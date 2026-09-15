// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/data/repository/modul_pelatihan_repository.dart';
import 'package:edwres_app/models/models.dart';
import 'package:edwres_app/models/modul_pelatihan/modul_pelatihan_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modul_pelatihan_event.dart';
part 'modul_pelatihan_state.dart';
part 'modul_pelatihan_bloc.freezed.dart';

class ModulPelatihanBloc
    extends Bloc<ModulPelatihanEvent, ModulPelatihanState> {
  final ModulPelatihanRepository _repository;

  ModulPelatihanBloc(this._repository) : super(const ModulPelatihanState()) {
    on<_Fetch>(_onFetch);
    on<_FetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetch(_Fetch event, Emitter<ModulPelatihanState> emit) async {
    emit(
      state.copyWith(listStatus: ModulPelatihanStateStatus.loading, error: ''),
    );

    try {
      final response = await _repository.getList(
        page: event.page,
        perPage: event.perPage,
      );
      emit(
        state.copyWith(
          listStatus: ModulPelatihanStateStatus.loaded,
          data: response.data,
          pagination: response.pagination,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          listStatus: ModulPelatihanStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchDetail(
    _FetchDetail event,
    Emitter<ModulPelatihanState> emit,
  ) async {
    emit(
      state.copyWith(
        detailStatus: ModulPelatihanStateStatus.loading,
        error: '',
      ),
    );

    try {
      final detail = await _repository.getDetail(event.id);
      emit(
        state.copyWith(
          detailStatus: ModulPelatihanStateStatus.loaded,
          detail: detail,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          detailStatus: ModulPelatihanStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
