// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomImpl _$$ClassroomImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomImpl(
      id: (json['id'] as num?)?.toInt(),
      layout: json['layout'] as String?,
      name: json['name'] as String?,
      size: (json['size'] as num?)?.toInt(),
      subject: json['subject'] as String?,
    );

Map<String, dynamic> _$$ClassroomImplToJson(_$ClassroomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'layout': instance.layout,
      'name': instance.name,
      'size': instance.size,
      'subject': instance.subject,
    };
