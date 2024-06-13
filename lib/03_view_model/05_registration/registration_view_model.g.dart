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
  EduModel? get student {
    _$studentAtom.reportRead();
    return super.student;
  }

  @override
  set student(EduModel? value) {
    _$studentAtom.reportWrite(value, super.student, () {
      super.student = value;
    });
  }

  late final _$subjectAtom =
      Atom(name: 'RegistrationViewModelBase.subject', context: context);

  @override
  EduModel? get subject {
    _$subjectAtom.reportRead();
    return super.subject;
  }

  @override
  set subject(EduModel? value) {
    _$subjectAtom.reportWrite(value, super.subject, () {
      super.subject = value;
    });
  }

  late final _$detailStudentAtom =
      Atom(name: 'RegistrationViewModelBase.detailStudent', context: context);

  @override
  EduModel? get detailStudent {
    _$detailStudentAtom.reportRead();
    return super.detailStudent;
  }

  @override
  set detailStudent(EduModel? value) {
    _$detailStudentAtom.reportWrite(value, super.detailStudent, () {
      super.detailStudent = value;
    });
  }

  late final _$detailSubjectAtom =
      Atom(name: 'RegistrationViewModelBase.detailSubject', context: context);

  @override
  EduModel? get detailSubject {
    _$detailSubjectAtom.reportRead();
    return super.detailSubject;
  }

  @override
  set detailSubject(EduModel? value) {
    _$detailSubjectAtom.reportWrite(value, super.detailSubject, () {
      super.detailSubject = value;
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

  late final _$deleteRegResponseAtom = Atom(
      name: 'RegistrationViewModelBase.deleteRegResponse', context: context);

  @override
  ApiResponse<String> get deleteRegResponse {
    _$deleteRegResponseAtom.reportRead();
    return super.deleteRegResponse;
  }

  @override
  set deleteRegResponse(ApiResponse<String> value) {
    _$deleteRegResponseAtom.reportWrite(value, super.deleteRegResponse, () {
      super.deleteRegResponse = value;
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

  late final _$deleteRegistrationApiAsyncAction = AsyncAction(
      'RegistrationViewModelBase.deleteRegistrationApi',
      context: context);

  @override
  Future<void> deleteRegistrationApi(BuildContext context,
      {required int regId}) {
    return _$deleteRegistrationApiAsyncAction
        .run(() => super.deleteRegistrationApi(context, regId: regId));
  }

  late final _$RegistrationViewModelBaseActionController =
      ActionController(name: 'RegistrationViewModelBase', context: context);

  @override
  void fetchSingleStudent(int stdId) {
    final _$actionInfo = _$RegistrationViewModelBaseActionController
        .startAction(name: 'RegistrationViewModelBase.fetchSingleStudent');
    try {
      return super.fetchSingleStudent(stdId);
    } finally {
      _$RegistrationViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fetchSingleSubject(int subId) {
    final _$actionInfo = _$RegistrationViewModelBaseActionController
        .startAction(name: 'RegistrationViewModelBase.fetchSingleSubject');
    try {
      return super.fetchSingleSubject(subId);
    } finally {
      _$RegistrationViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
student: ${student},
subject: ${subject},
detailStudent: ${detailStudent},
detailSubject: ${detailSubject},
registrationResponse: ${registrationResponse},
newRegistrationResponse: ${newRegistrationResponse},
deleteRegResponse: ${deleteRegResponse}
    ''';
  }
}
