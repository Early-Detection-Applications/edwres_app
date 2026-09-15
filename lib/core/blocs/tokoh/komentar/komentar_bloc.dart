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

import 'package:edwres_app/data/repository/komentar_repository.dart';
import 'package:edwres_app/models/komentar/komentar_model.dart';
import 'package:edwres_app/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'komentar_event.dart';
part 'komentar_state.dart';
part 'komentar_bloc.freezed.dart';

class KomentarBloc extends Bloc<KomentarEvent, KomentarState> {
  final KomentarRepository _repository;

  KomentarBloc(this._repository) : super(const KomentarState()) {
    on<_Fetch>(_onFetch);
    on<_Add>(_onAdd);
  }

  // ============================================================
  // FETCH KOMENTAR
  // ============================================================

  Future<void> _onFetch(_Fetch event, Emitter<KomentarState> emit) async {
    print('════════════════════════════════════════');
    print('[KOMENTAR] FETCH START');
    print('[KOMENTAR] ID BERITA: ${event.idBerita}');

    emit(state.copyWith(listStatus: KomentarListStatus.loading, error: ''));

    try {
      final data = await _repository.getKomentar(idBerita: event.idBerita);

      emit(
        state.copyWith(
          listStatus: KomentarListStatus.loaded,
          data: data,
          error: '',
        ),
      );

      print('[KOMENTAR] DATA LOADED: ${data.length} items');
      print('════════════════════════════════════════');
    } catch (error) {
      emit(
        state.copyWith(
          listStatus: KomentarListStatus.error,
          error: error.toString(),
        ),
      );

      print('[KOMENTAR] FETCH FAILED');
      print('[KOMENTAR] ERROR: $error');
      print('════════════════════════════════════════');
    }
  }

  // ============================================================
  // ADD KOMENTAR
  // ============================================================

  Future<void> _onAdd(_Add event, Emitter<KomentarState> emit) async {
    print('════════════════════════════════════════');
    print('[KOMENTAR] ADD START');
    print('[KOMENTAR] ID BERITA: ${event.idBerita}');
    print('[KOMENTAR] ID USER: ${event.idUser}');

    emit(state.copyWith(addStatus: KomentarAddStatus.loading, addError: ''));

    try {
      await _repository.addKomentar(
        idBerita: event.idBerita,
        idUser: event.idUser,
        komentar: event.komentar,
      );

      emit(state.copyWith(addStatus: KomentarAddStatus.success, addError: ''));

      print('[KOMENTAR] ADD SUCCESS');
      print('════════════════════════════════════════');

      // Ambil ulang komentar agar komentar terbaru
      // langsung masuk ke state.
      final data = await _repository.getKomentar(idBerita: event.idBerita);

      emit(
        state.copyWith(
          listStatus: KomentarListStatus.loaded,
          data: data,
          addStatus: KomentarAddStatus.success,
          error: '',
        ),
      );

      print('[KOMENTAR] DATA UPDATED: ${data.length} items');
      print('════════════════════════════════════════');
    } catch (error) {
      emit(
        state.copyWith(
          addStatus: KomentarAddStatus.error,
          addError: error.toString(),
        ),
      );

      print('[KOMENTAR] ADD FAILED');
      print('[KOMENTAR] ERROR: $error');
      print('════════════════════════════════════════');
    }
  }
}
