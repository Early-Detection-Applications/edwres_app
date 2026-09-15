// Copyright 2026 ariefsetyonugroho
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
import 'package:edwres_app/models/pagination/pagination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'tokoh_model.dart';

part 'tokoh_response_model.freezed.dart';
part 'tokoh_response_model.g.dart';

@freezed
abstract class TokohResponseModel with _$TokohResponseModel {
  const factory TokohResponseModel({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') List<TokohModel>? data,
    @JsonKey(name: 'pagination') PaginationModel? pagination,
  }) = _TokohResponseModel;

  factory TokohResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$TokohResponseModelFromJson(json);
}
