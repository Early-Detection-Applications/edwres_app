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

import 'package:edwres_app/core/core.dart';
import 'package:edwres_app/data/repository/user_repository.dart';
import 'package:edwres_app/models/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository _userRepository;

  LoginBloc(this._userRepository) : super(const LoginState()) {
    on<_Login>(_onLogin);
  }

  Future<void> _onLogin(_Login event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStateStatus.loading, error: ''));

    try {
      final response = await _userRepository.login(
        username: event.username,
        password: event.password,
      );

      await SessionManager.save(response.user!);

      emit(state.copyWith(status: LoginStateStatus.loaded, data: response));
    } catch (e) {
      emit(state.copyWith(status: LoginStateStatus.error, error: e.toString()));
    }
  }
}
