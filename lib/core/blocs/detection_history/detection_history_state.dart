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

part of 'detection_history_bloc.dart';

enum DetectionHistoryStatus {
  initial,
  loading,
  loaded,
  error;

  bool get isInitial => this == DetectionHistoryStatus.initial;
  bool get isLoading => this == DetectionHistoryStatus.loading;
  bool get isLoaded => this == DetectionHistoryStatus.loaded;
  bool get isError => this == DetectionHistoryStatus.error;
}

@freezed
abstract class DetectionHistoryState with _$DetectionHistoryState {
  const factory DetectionHistoryState({
    @Default(DetectionHistoryStatus.initial) DetectionHistoryStatus status,
    List<DetectionHistoryModel>? data,
    @Default('') String? error,
  }) = _DetectionHistoryState;
}
