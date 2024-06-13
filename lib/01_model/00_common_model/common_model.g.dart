// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EduModelImpl _$$EduModelImplFromJson(Map<String, dynamic> json) =>
    _$EduModelImpl(
      id: (json['id'] as num?)?.toInt(),
      student: (json['student'] as num?)?.toInt(),
      subject: json['subject'],
      layout: json['layout'] as String?,
      name: json['name'] as String?,
      size: (json['size'] as num?)?.toInt(),
      credits: (json['credits'] as num?)?.toInt(),
      teacher: json['teacher'] as String?,
      age: (json['age'] as num?)?.toInt(),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$EduModelImplToJson(_$EduModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'subject': instance.subject,
      'layout': instance.layout,
      'name': instance.name,
      'size': instance.size,
      'credits': instance.credits,
      'teacher': instance.teacher,
      'age': instance.age,
      'email': instance.email,
    };
