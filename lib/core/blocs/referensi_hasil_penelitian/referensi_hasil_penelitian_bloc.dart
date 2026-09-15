// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/data/repository/referensi_hasil_penelitian_repository.dart';
import 'package:edwres_app/models/models.dart';
import 'package:edwres_app/models/referensi_hasil_penelitian/referensi_hasil_penelitian_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'referensi_hasil_penelitian_event.dart';
part 'referensi_hasil_penelitian_state.dart';
part 'referensi_hasil_penelitian_bloc.freezed.dart';

class ReferensiHasilPenelitianBloc
    extends Bloc<ReferensiHasilPenelitianEvent, ReferensiHasilPenelitianState> {
  final ReferensiHasilPenelitianRepository _repository;

  ReferensiHasilPenelitianBloc(this._repository)
    : super(const ReferensiHasilPenelitianState()) {
    on<_Fetch>(_onFetch);
    on<_FetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetch(
    _Fetch event,
    Emitter<ReferensiHasilPenelitianState> emit,
  ) async {
    emit(
      state.copyWith(
        listStatus: ReferensiHasilPenelitianStateStatus.loading,
        error: '',
      ),
    );

    try {
      final response = await _repository.getList(
        page: event.page,
        perPage: event.perPage,
      );
      emit(
        state.copyWith(
          listStatus: ReferensiHasilPenelitianStateStatus.loaded,
          data: response.data,
          pagination: response.pagination,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          listStatus: ReferensiHasilPenelitianStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _onFetchDetail(
    _FetchDetail event,
    Emitter<ReferensiHasilPenelitianState> emit,
  ) async {
    emit(
      state.copyWith(
        detailStatus: ReferensiHasilPenelitianStateStatus.loading,
        error: '',
      ),
    );

    try {
      final detail = await _repository.getDetail(event.id);
      emit(
        state.copyWith(
          detailStatus: ReferensiHasilPenelitianStateStatus.loaded,
          detail: detail,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          detailStatus: ReferensiHasilPenelitianStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
