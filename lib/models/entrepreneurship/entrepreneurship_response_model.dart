import 'package:edwres_app/models/entrepreneurship/entrepreneurship_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entrepreneurship_response_model.freezed.dart';
part 'entrepreneurship_response_model.g.dart';

@freezed
abstract class EntrepreneurshipResponseModel
    with _$EntrepreneurshipResponseModel {
  const factory EntrepreneurshipResponseModel({
    @JsonKey(name: 'berwirausaha') List<EntrepreneurshipModel>? data,
    int? limit,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'total_records') int? totalRecords,
  }) = _EntrepreneurshipResponseModel;

  factory EntrepreneurshipResponseModel.fromJson(Map<String, dynamic> json) =>
      _$EntrepreneurshipResponseModelFromJson(json);
}
