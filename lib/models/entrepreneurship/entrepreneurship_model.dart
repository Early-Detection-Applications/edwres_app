import 'package:freezed_annotation/freezed_annotation.dart';

part 'entrepreneurship_model.freezed.dart';
part 'entrepreneurship_model.g.dart';

@freezed
abstract class EntrepreneurshipModel with _$EntrepreneurshipModel {
  const factory EntrepreneurshipModel({
    int? id,
    String? title,
    String? image,
    String? link,
  }) = _EntrepreneurshipModel;

  factory EntrepreneurshipModel.fromJson(Map<String, dynamic> json) =>
      _$EntrepreneurshipModelFromJson(json);
}
