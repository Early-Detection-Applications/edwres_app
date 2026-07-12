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

import 'package:edwres_app/data/repository/guestbook_repository.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guestbook_event.dart';
part 'guestbook_state.dart';
part 'guestbook_bloc.freezed.dart';

class GuestbookBloc extends Bloc<GuestbookEvent, GuestbookState> {
  final GuestbookRepository _guestbookRepository;

  GuestbookBloc(this._guestbookRepository) : super(const GuestbookState()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(event, Emitter<GuestbookState> emit) async {
    emit(state.copyWith(status: GuestbookStateStatus.loading, error: ''));

    try {
      final response = await _guestbookRepository.getGuestbook();

      emit(
        state.copyWith(
          status: GuestbookStateStatus.loaded,
          data: response.data?.data,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: GuestbookStateStatus.error, error: e.toString()),
      );
    }
  }
}
