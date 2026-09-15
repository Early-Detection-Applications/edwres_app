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

import 'package:edwres_app/data/repository/repository.dart';
import 'package:edwres_app/models/detection_history/detection_history.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detection_history_event.dart';
part 'detection_history_state.dart';
part 'detection_history_bloc.freezed.dart';

class DetectionHistoryBloc
    extends Bloc<DetectionHistoryEvent, DetectionHistoryState> {
  final DetectionHistoryRepository _detectionHistoryRepository;

  DetectionHistoryBloc(this._detectionHistoryRepository)
    : super(const DetectionHistoryState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(
    _Fetch event,
    Emitter<DetectionHistoryState> emit,
  ) async {
    emit(state.copyWith(status: DetectionHistoryStatus.loading, error: ''));

    try {
      final response = await _detectionHistoryRepository.detectionHistory(
        idUser: event.idUser,
      );

      emit(
        state.copyWith(
          status: DetectionHistoryStatus.loaded,
          data: response.data,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: DetectionHistoryStatus.error,
          error: e.toString(),
        ),
      );
    }
  }
}
