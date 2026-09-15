// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:edwres_app/data/data.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_event.dart';
part 'consultation_state.dart';
part 'consultation_bloc.freezed.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  final IndicatorRepository _indicatorRepository;
  final DiagnosisRepository _diagnosisRepository;

  ConsultationBloc(this._indicatorRepository, this._diagnosisRepository)
    : super(const ConsultationState()) {
    on<_Fetch>(_onFetch);
    on<_ToggleQuestion>(_onToggleQuestion);
    on<_Reset>(_onReset);
    on<_Submit>(_onSubmit);
    on<_DownloadPdf>(_onDownloadPdf);
    on<_OpenPdf>(_onOpenPdf);
  }

  Future<void> _onFetch(_Fetch event, Emitter<ConsultationState> emit) async {
    emit(state.copyWith(status: ConsultationStatus.loading, error: ''));

    try {
      final response = await _indicatorRepository.getIndicator();

      emit(
        state.copyWith(
          status: ConsultationStatus.loaded,
          indicators: response.indikator,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: ConsultationStatus.error, error: e.toString()),
      );
    }
  }

  void _onToggleQuestion(
    _ToggleQuestion event,
    Emitter<ConsultationState> emit,
  ) {
    final selected = List<String>.from(state.selectedQuestionIds);

    if (selected.contains(event.questionId)) {
      selected.remove(event.questionId);
    } else {
      selected.add(event.questionId);
    }

    emit(state.copyWith(selectedQuestionIds: selected));
  }

  void _onReset(_Reset event, Emitter<ConsultationState> emit) {
    emit(state.copyWith(selectedQuestionIds: []));
  }

  Future<void> _onSubmit(_Submit event, Emitter<ConsultationState> emit) async {
    emit(state.copyWith(status: ConsultationStatus.submitting));

    try {
      final response = await _diagnosisRepository.diagnosis(
        idUser: event.idUser,
        indikator: state.selectedQuestionIds,
      );

      emit(
        state.copyWith(
          status: ConsultationStatus.submitted,
          diagnosis: response,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: ConsultationStatus.error, error: e.toString()),
      );
    }
  }

  Future<void> _onOpenPdf(
    _OpenPdf event,
    Emitter<ConsultationState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ConsultationStatus.downloadingPdf,
        error: '',
        pdfUrl: null,
      ),
    );

    try {
      final pdfUrl = await _diagnosisRepository.getPdfUrl(
        riwayatId: event.riwayatId,
      );

      if (pdfUrl.isEmpty) {
        throw Exception('URL PDF tidak tersedia.');
      }

      emit(state.copyWith(status: ConsultationStatus.pdfReady, pdfUrl: pdfUrl));
    } catch (e) {
      emit(
        state.copyWith(status: ConsultationStatus.error, error: e.toString()),
      );
    }
  }

  Future<void> _onDownloadPdf(
    _DownloadPdf event,
    Emitter<ConsultationState> emit,
  ) async {
    emit(
      state.copyWith(
        status: ConsultationStatus.downloadingPdf,
        error: '',
        pdfPath: null,
      ),
    );

    try {
      final pdfPath = await _diagnosisRepository.downloadPdf(
        riwayatId: event.riwayatId,
      );

      emit(
        state.copyWith(status: ConsultationStatus.pdfReady, pdfPath: pdfPath),
      );
    } catch (e) {
      emit(
        state.copyWith(status: ConsultationStatus.error, error: e.toString()),
      );
    }
  }
}
