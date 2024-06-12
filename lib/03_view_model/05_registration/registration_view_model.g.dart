// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RegistrationViewModel on RegistrationViewModelBase, Store {
  late final _$studentAtom =
      Atom(name: 'RegistrationViewModelBase.student', context: context);

  @override
  Student? get student {
    _$studentAtom.reportRead();
    return super.student;
  }

  @override
  set student(Student? value) {
    _$studentAtom.reportWrite(value, super.student, () {
      super.student = value;
    });
  }

  late final _$subjectAtom =
      Atom(name: 'RegistrationViewModelBase.subject', context: context);

  @override
  Subject? get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(Subject? value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  late final _$registrationResponseAtom = Atom(
      name: 'RegistrationViewModelBase.registrationResponse', context: context);

  @override
  ApiResponse<RegistrationModel> get registrationResponse {
    _$registrationResponseAtom.reportRead();
    return super.registrationResponse;
  }

  @override
  set registrationResponse(ApiResponse<RegistrationModel> value) {
    _$registrationResponseAtom.reportWrite(value, super.registrationResponse,
        () {
      super.registrationResponse = value;
    });
  }

  late final _$newRegistrationResponseAtom = Atom(
      name: 'RegistrationViewModelBase.newRegistrationResponse',
      context: context);

  @override
  ApiResponse<String> get newRegistrationResponse {
    _$newRegistrationResponseAtom.reportRead();
    return super.newRegistrationResponse;
  }

  @override
  set newRegistrationResponse(ApiResponse<String> value) {
    _$newRegistrationResponseAtom
        .reportWrite(value, super.newRegistrationResponse, () {
      super.newRegistrationResponse = value;
    });
  }

  late final _$fetchRegistrationApiAsyncAction = AsyncAction(
      'RegistrationViewModelBase.fetchRegistrationApi',
      context: context);

  @override
  Future<void> fetchRegistrationApi() {
    return _$fetchRegistrationApiAsyncAction
        .run(() => super.fetchRegistrationApi());
  }

  late final _$updateClassRoomSubjectApiAsyncAction = AsyncAction(
      'RegistrationViewModelBase.updateClassRoomSubjectApi',
      context: context);

  @override
  Future<void> updateClassRoomSubjectApi(BuildContext context,
      {required int subjectId, required int studentId}) {
    return _$updateClassRoomSubjectApiAsyncAction.run(() => super
        .updateClassRoomSubjectApi(context,
            subjectId: subjectId, studentId: studentId));
  }

  @override
  String toString() {
    return '''
student: ${student},
subject: ${subject},
registrationResponse: ${registrationResponse},
newRegistrationResponse: ${newRegistrationResponse}
    ''';
  }
}
