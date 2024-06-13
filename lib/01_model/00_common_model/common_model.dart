import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_model.freezed.dart';
part 'common_model.g.dart';

@freezed
class EduModel with _$EduModel {
  factory EduModel({
    int? id,
    int? student,
    dynamic subject,
    String? layout,
    String? name,
    int? size,
    int? credits,
    String? teacher,
    int? age,
    String? email,
  }) = _EduModel;

  factory EduModel.fromJson(Map<String, dynamic> json) =>
      _$EduModelFromJson(json);
}
