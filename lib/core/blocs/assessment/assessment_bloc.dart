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

import 'dart:convert';

import 'package:edwres_app/models/assessment/assessment_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_event.dart';
part 'assessment_state.dart';
part 'assessment_bloc.freezed.dart';

class AssessmentBloc extends Bloc<AssessmentEvent, AssessmentState> {
  AssessmentBloc() : super(const AssessmentState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(_Fetch event, Emitter<AssessmentState> emit) async {
    try {
      emit(state.copyWith(status: AssessmentStatus.loading));

      final response = await rootBundle.loadString(
        'assets/json/assessments.json',
      );

      final List<dynamic> jsonData = jsonDecode(response);

      final assessments = jsonData
          .map((e) => AssessmentModel.fromJson(e as Map<String, dynamic>))
          .toList();

      emit(state.copyWith(status: AssessmentStatus.loaded, data: assessments));
    } catch (e) {
      emit(state.copyWith(status: AssessmentStatus.error, error: e.toString()));
    }
  }
}
