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

import 'package:freezed_annotation/freezed_annotation.dart';

import 'detection_history_model.dart';

part 'detection_history_response_model.freezed.dart';
part 'detection_history_response_model.g.dart';

@freezed
abstract class DetectionHistoryResponseModel
    with _$DetectionHistoryResponseModel {
  const factory DetectionHistoryResponseModel({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<DetectionHistoryModel>? data,
  }) = _DetectionHistoryResponseModel;

  factory DetectionHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DetectionHistoryResponseModelFromJson(json);
}
