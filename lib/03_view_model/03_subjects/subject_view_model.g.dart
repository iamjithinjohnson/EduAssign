// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SubjectViewModel on SubjectViewModelBase, Store {
  late final _$subjectResponseAtom =
      Atom(name: 'SubjectViewModelBase.subjectResponse', context: context);

  @override
  ApiResponse<SubjectModel> get subjectResponse {
    _$subjectResponseAtom.reportRead();
    return super.subjectResponse;
  }

  @override
  set subjectResponse(ApiResponse<SubjectModel> value) {
    _$subjectResponseAtom.reportWrite(value, super.subjectResponse, () {
      super.subjectResponse = value;
    });
  }

  late final _$fetchSubjectApiAsyncAction =
      AsyncAction('SubjectViewModelBase.fetchSubjectApi', context: context);

  @override
  Future<void> fetchSubjectApi() {
    return _$fetchSubjectApiAsyncAction.run(() => super.fetchSubjectApi());
  }

  @override
  String toString() {
    return '''
subjectResponse: ${subjectResponse}
    ''';
  }
}
