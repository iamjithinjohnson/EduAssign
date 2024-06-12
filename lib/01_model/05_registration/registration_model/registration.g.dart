// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationImpl _$$RegistrationImplFromJson(Map<String, dynamic> json) =>
    _$RegistrationImpl(
      id: (json['id'] as num?)?.toInt(),
      student: (json['student'] as num?)?.toInt(),
      subject: (json['subject'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegistrationImplToJson(_$RegistrationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'subject': instance.subject,
    };
