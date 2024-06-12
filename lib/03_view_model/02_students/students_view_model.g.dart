// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StudentViewModel on StudentViewModelBase, Store {
  late final _$studentResponseAtom =
      Atom(name: 'StudentViewModelBase.studentResponse', context: context);

  @override
  ApiResponse<StudentModel> get studentResponse {
    _$studentResponseAtom.reportRead();
    return super.studentResponse;
  }

  @override
  set studentResponse(ApiResponse<StudentModel> value) {
    _$studentResponseAtom.reportWrite(value, super.studentResponse, () {
      super.studentResponse = value;
    });
  }

  late final _$fetchStudentsApiAsyncAction =
      AsyncAction('StudentViewModelBase.fetchStudentsApi', context: context);

  @override
  Future<void> fetchStudentsApi() {
    return _$fetchStudentsApiAsyncAction.run(() => super.fetchStudentsApi());
  }

  @override
  String toString() {
    return '''
studentResponse: ${studentResponse}
    ''';
  }
}
