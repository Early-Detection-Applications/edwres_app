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

part of 'komentar_bloc.dart';

enum KomentarListStatus { initial, loading, loaded, error }

enum KomentarAddStatus { initial, loading, success, error }

@freezed
abstract class KomentarState with _$KomentarState {
  const factory KomentarState({
    @Default(KomentarListStatus.initial) KomentarListStatus listStatus,

    @Default(KomentarAddStatus.initial) KomentarAddStatus addStatus,

    @Default([]) List<KomentarModel> data,

    @Default('') String error,

    @Default('') String addError,
  }) = _KomentarState;
}
