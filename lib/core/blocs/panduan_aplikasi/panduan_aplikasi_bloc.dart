// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/data/repository/panduan_aplikasi_repository.dart';
import 'package:edwres_app/models/models.dart';
import 'package:edwres_app/models/panduan_aplikasi/panduan_aplikasi_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'panduan_aplikasi_event.dart';
part 'panduan_aplikasi_state.dart';
part 'panduan_aplikasi_bloc.freezed.dart';

class PanduanAplikasiBloc
    extends Bloc<PanduanAplikasiEvent, PanduanAplikasiState> {
  final PanduanAplikasiRepository _repository;

  PanduanAplikasiBloc(this._repository) : super(const PanduanAplikasiState()) {
    on<_Fetch>(_onFetch);
    on<_FetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetch(
    _Fetch event,
    Emitter<PanduanAplikasiState> emit,
  ) async {
    emit(
      state.copyWith(listStatus: PanduanAplikasiStateStatus.loading, error: ''),
    );

    try {
      final response = await _repository.getList(
        page: event.page,
        perPage: event.perPage,
      );
      emit(
        state.copyWith(
          listStatus: PanduanAplikasiStateStatus.loaded,
          data: response.data,
          pagination: response.pagination,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          listStatus: PanduanAplikasiStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchDetail(
    _FetchDetail event,
    Emitter<PanduanAplikasiState> emit,
  ) async {
    emit(
      state.copyWith(
        detailStatus: PanduanAplikasiStateStatus.loading,
        error: '',
      ),
    );

    try {
      final detail = await _repository.getDetail(event.id);
      emit(
        state.copyWith(
          detailStatus: PanduanAplikasiStateStatus.loaded,
          detail: detail,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          detailStatus: PanduanAplikasiStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
