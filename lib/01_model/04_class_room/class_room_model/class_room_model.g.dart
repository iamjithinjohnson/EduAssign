// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassRoomModelImpl _$$ClassRoomModelImplFromJson(Map<String, dynamic> json) =>
    _$ClassRoomModelImpl(
      classrooms: (json['classrooms'] as List<dynamic>?)
          ?.map((e) => EduModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassRoomModelImplToJson(
        _$ClassRoomModelImpl instance) =>
    <String, dynamic>{
      'classrooms': instance.classrooms,
    };
