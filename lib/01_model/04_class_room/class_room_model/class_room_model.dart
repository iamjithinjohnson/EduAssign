import 'package:edu_assign/01_model/00_common_model/common_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_room_model.freezed.dart';
part 'class_room_model.g.dart';

@freezed
class ClassRoomModel with _$ClassRoomModel {
  factory ClassRoomModel({
    List<EduModel>? classrooms,
  }) = _ClassRoomModel;

  factory ClassRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ClassRoomModelFromJson(json);
}
