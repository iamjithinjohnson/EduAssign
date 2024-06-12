import 'package:freezed_annotation/freezed_annotation.dart';

import 'classroom.dart';

part 'class_room_model.freezed.dart';
part 'class_room_model.g.dart';

@freezed
class ClassRoomModel with _$ClassRoomModel {
  factory ClassRoomModel({
    List<Classroom>? classrooms,
  }) = _ClassRoomModel;

  factory ClassRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ClassRoomModelFromJson(json);
}
