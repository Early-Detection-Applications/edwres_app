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

@freezed
class ConsultationEvent with _$ConsultationEvent {
  const factory ConsultationEvent.fetch() = _Fetch;

  const factory ConsultationEvent.toggleQuestion(String questionId) =
      _ToggleQuestion;

  const factory ConsultationEvent.submit({required String idUser}) = _Submit;

  const factory ConsultationEvent.downloadPdf({required int riwayatId}) =
      _DownloadPdf;

  const factory ConsultationEvent.openPdf({required int riwayatId}) = _OpenPdf;
  const factory ConsultationEvent.reset() = _Reset;
}
