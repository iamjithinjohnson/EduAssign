import 'package:freezed_annotation/freezed_annotation.dart';

import 'student.dart';

part 'student_model.freezed.dart';
part 'student_model.g.dart';

@freezed
class StudentModel with _$StudentModel {
  factory StudentModel({
    List<Student>? students,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, dynamic> json) =>
      _$StudentModelFromJson(json);
}
