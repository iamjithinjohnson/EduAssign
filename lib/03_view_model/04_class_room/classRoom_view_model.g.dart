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

  late final _$fetchClassRoomApiAsyncAction =
      AsyncAction('ClassRoomViewModelBase.fetchClassRoomApi', context: context);

  @override
  Future<void> fetchClassRoomApi() {
    return _$fetchClassRoomApiAsyncAction.run(() => super.fetchClassRoomApi());
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

  @override
  String toString() {
    return '''
classRoomResponse: ${classRoomResponse},
subjectUpdateResponse: ${subjectUpdateResponse}
    ''';
  }
}
