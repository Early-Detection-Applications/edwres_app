// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/data/repository/tokoh_repository.dart';
import 'package:edwres_app/models/models.dart';
import 'package:edwres_app/models/tokoh/tokoh_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokoh_event.dart';
part 'tokoh_state.dart';
part 'tokoh_bloc.freezed.dart';

class TokohBloc extends Bloc<TokohEvent, TokohState> {
  final TokohRepository _repository;

  TokohBloc(this._repository) : super(const TokohState()) {
    on<_Fetch>(_onFetch);
    on<_FetchDetail>(_onFetchDetail);
  }

  Future<void> _onFetch(_Fetch event, Emitter<TokohState> emit) async {
    emit(state.copyWith(listStatus: TokohStateStatus.loading, error: ''));

    try {
      final response = await _repository.getList(
        page: event.page,
        perPage: event.perPage,
      );
      emit(
        state.copyWith(
          listStatus: TokohStateStatus.loaded,
          data: response.data,
          pagination: response.pagination,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(listStatus: TokohStateStatus.error, error: e.toString()),
      );
    }
  }

  Future<void> _onFetchDetail(
    _FetchDetail event,
    Emitter<TokohState> emit,
  ) async {
    emit(state.copyWith(detailStatus: TokohStateStatus.loading, error: ''));

    try {
      final detail = await _repository.getDetail(event.id);
      emit(
        state.copyWith(detailStatus: TokohStateStatus.loaded, detail: detail),
      );
    } catch (e) {
      emit(
        state.copyWith(
          detailStatus: TokohStateStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
