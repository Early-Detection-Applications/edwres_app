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

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(_Fetch event, Emitter<ContactState> emit) async {
    try {
      emit(state.copyWith(status: ContactStatus.loading));

      final response = await rootBundle.loadString('assets/json/contacts.json');

      final List<dynamic> jsonData = jsonDecode(response);

      final contacts = jsonData
          .map((e) => AssessmentModel.fromJson(e as Map<String, dynamic>))
          .toList();

      emit(state.copyWith(status: ContactStatus.loaded, data: contacts));
    } catch (e) {
      emit(state.copyWith(status: ContactStatus.error, error: e.toString()));
    }
  }
}
