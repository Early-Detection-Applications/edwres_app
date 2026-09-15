// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/data/repository/referensi_buku_repository.dart';
import 'package:edwres_app/models/models.dart';
import 'package:edwres_app/models/referensi_buku/referensi_buku_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referensi_buku_event.dart';
part 'referensi_buku_state.dart';
part 'referensi_buku_bloc.freezed.dart';

class ReferensiBukuBloc extends Bloc<ReferensiBukuEvent, ReferensiBukuState> {
  final ReferensiBukuRepository _repository;

  ReferensiBukuBloc(this._repository) : super(const ReferensiBukuState()) {
    on<_Fetch>(_onFetch);
    on<_FetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetch(_Fetch event, Emitter<ReferensiBukuState> emit) async {
    emit(
      state.copyWith(listStatus: ReferensiBukuStateStatus.loading, error: ''),
    );

    try {
      final response = await _repository.getList(
        page: event.page,
        perPage: event.perPage,
      );
      emit(
        state.copyWith(
          listStatus: ReferensiBukuStateStatus.loaded,
          data: response.data,
          pagination: response.pagination,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          listStatus: ReferensiBukuStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchDetail(
    _FetchDetail event,
    Emitter<ReferensiBukuState> emit,
  ) async {
    emit(
      state.copyWith(detailStatus: ReferensiBukuStateStatus.loading, error: ''),
    );

    try {
      final detail = await _repository.getDetail(event.id);
      emit(
        state.copyWith(
          detailStatus: ReferensiBukuStateStatus.loaded,
          detail: detail,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          detailStatus: ReferensiBukuStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
