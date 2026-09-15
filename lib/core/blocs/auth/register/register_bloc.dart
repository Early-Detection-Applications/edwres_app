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

import 'package:edwres_app/data/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRepository _userRepository;

  RegisterBloc(this._userRepository) : super(const RegisterState()) {
    on<_Register>(_onRegister);
  }

  Future<void> _onRegister(_Register event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(status: RegisterStateStatus.loading, error: ''));

    try {
      final response = await _userRepository.register(
        username: event.username,
        password: event.password,
        namaLengkap: event.namaLengkap,
        email: event.email,
      );

      emit(
        state.copyWith(status: RegisterStateStatus.loaded, message: response),
      );
    } catch (e) {
      emit(
        state.copyWith(status: RegisterStateStatus.error, error: e.toString()),
      );
    }
  }
}
