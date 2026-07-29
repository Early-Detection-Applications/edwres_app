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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'consultation_bloc.freezed.dart';
part 'consultation_event.dart';
part 'consultation_state.dart';

class ConsultationBloc extends Bloc<ConsultationEvent, ConsultationState> {
  ConsultationBloc() : super(const ConsultationState()) {
    on<_ToggleQuestion>(_onToggleQuestion);
    on<_Reset>(_onReset);
  }

  void _onToggleQuestion(
    _ToggleQuestion event,
    Emitter<ConsultationState> emit,
  ) {
    final selected = List<int>.from(state.selectedQuestionIds);

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
}
