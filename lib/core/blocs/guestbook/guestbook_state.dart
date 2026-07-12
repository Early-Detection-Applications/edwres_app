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

part of 'guestbook_bloc.dart';

enum GuestbookStateStatus {
  initial,
  loading,
  loaded,
  error;

  bool get isInitial => this == GuestbookStateStatus.initial;
  bool get isLoading => this == GuestbookStateStatus.loading;
  bool get isLoaded => this == GuestbookStateStatus.loaded;
  bool get isError => this == GuestbookStateStatus.error;
}

@freezed
abstract class GuestbookState with _$GuestbookState {
  const factory GuestbookState({
    @Default(GuestbookStateStatus.initial) GuestbookStateStatus status,
    List<GuestbookModel>? data,
    @Default('') String? error,
  }) = _GuestbookState;
}
