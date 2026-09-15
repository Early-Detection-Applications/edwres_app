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

part of 'consultation_bloc.dart';

enum ConsultationStatus {
  initial,
  loading,
  loaded,
  error,
  submitting,
  submitted,
  downloadingPdf,
  pdfReady;

  bool get isInitial => this == ConsultationStatus.initial;
  bool get isLoading => this == ConsultationStatus.loading;
  bool get isLoaded => this == ConsultationStatus.loaded;
  bool get isError => this == ConsultationStatus.error;
  bool get isSubmitting => this == ConsultationStatus.submitting;
  bool get isSubmitted => this == ConsultationStatus.submitted;
  bool get isDownloadingPdf => this == ConsultationStatus.downloadingPdf;
  bool get isPdfReady => this == ConsultationStatus.pdfReady;
}

@freezed
abstract class ConsultationState with _$ConsultationState {
  const factory ConsultationState({
    @Default(ConsultationStatus.initial) ConsultationStatus status,
    @Default([]) List<IndicatorModel> indicators,
    @Default([]) List<String> selectedQuestionIds,
    @Default('') String error,
    @Default(null) DiagnosisResponseModel? diagnosis,
    String? pdfUrl,
    @Default(null) String? pdfPath,
  }) = _ConsultationState;
}
