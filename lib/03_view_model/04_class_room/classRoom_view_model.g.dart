// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classRoom_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClassRoomViewModel on ClassRoomViewModelBase, Store {
  late final _$classRoomResponseAtom =
      Atom(name: 'ClassRoomViewModelBase.classRoomResponse', context: context);

  @override
  ApiResponse<ClassRoomModel> get classRoomResponse {
    _$classRoomResponseAtom.reportRead();
    return super.classRoomResponse;
  }

  @override
  set classRoomResponse(ApiResponse<ClassRoomModel> value) {
    _$classRoomResponseAtom.reportWrite(value, super.classRoomResponse, () {
      super.classRoomResponse = value;
    });
  }

  late final _$subjectUpdateResponseAtom = Atom(
      name: 'ClassRoomViewModelBase.subjectUpdateResponse', context: context);

  @override
  ApiResponse<String> get subjectUpdateResponse {
    _$subjectUpdateResponseAtom.reportRead();
    return super.subjectUpdateResponse;
  }

  @override
  set subjectUpdateResponse(ApiResponse<String> value) {
    _$subjectUpdateResponseAtom.reportWrite(value, super.subjectUpdateResponse,
        () {
      super.subjectUpdateResponse = value;
    });
  }

  late final _$detailSubjectAtom =
      Atom(name: 'ClassRoomViewModelBase.detailSubject', context: context);

  @override
  Subject? get detailSubject {
    _$detailSubjectAtom.reportRead();
    return super.detailSubject;
  }

  @override
  set detailSubject(Subject? value) {
    _$detailSubjectAtom.reportWrite(value, super.detailSubject, () {
      super.detailSubject = value;
    });
  }

  late final _$classDetailResponseAtom = Atom(
      name: 'ClassRoomViewModelBase.classDetailResponse', context: context);

  @override
  ApiResponse<Classroom> get classDetailResponse {
    _$classDetailResponseAtom.reportRead();
    return super.classDetailResponse;
  }

  @override
  set classDetailResponse(ApiResponse<Classroom> value) {
    _$classDetailResponseAtom.reportWrite(value, super.classDetailResponse, () {
      super.classDetailResponse = value;
    });
  }

  late final _$fetchClassRoomApiAsyncAction =
      AsyncAction('ClassRoomViewModelBase.fetchClassRoomApi', context: context);

  @override
  Future<void> fetchClassRoomApi() {
    return _$fetchClassRoomApiAsyncAction.run(() => super.fetchClassRoomApi());
  }

  late final _$classRoomDetailApiAsyncAction = AsyncAction(
      'ClassRoomViewModelBase.classRoomDetailApi',
      context: context);

  @override
  Future<void> classRoomDetailApi({required int classId}) {
    return _$classRoomDetailApiAsyncAction
        .run(() => super.classRoomDetailApi(classId: classId));
  }

  late final _$updateClassRoomSubjectApiAsyncAction = AsyncAction(
      'ClassRoomViewModelBase.updateClassRoomSubjectApi',
      context: context);

  @override
  Future<void> updateClassRoomSubjectApi(BuildContext context,
      {required int subjectId, required int classId}) {
    return _$updateClassRoomSubjectApiAsyncAction.run(() => super
        .updateClassRoomSubjectApi(context,
            subjectId: subjectId, classId: classId));
  }

  late final _$ClassRoomViewModelBaseActionController =
      ActionController(name: 'ClassRoomViewModelBase', context: context);

  @override
  void getSubjectName(int subId) {
    final _$actionInfo = _$ClassRoomViewModelBaseActionController.startAction(
        name: 'ClassRoomViewModelBase.getSubjectName');
    try {
      return super.getSubjectName(subId);
    } finally {
      _$ClassRoomViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
classRoomResponse: ${classRoomResponse},
subjectUpdateResponse: ${subjectUpdateResponse},
detailSubject: ${detailSubject},
classDetailResponse: ${classDetailResponse}
    ''';
  }
}
