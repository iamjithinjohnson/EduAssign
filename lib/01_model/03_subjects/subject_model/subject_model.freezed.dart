// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectModel _$SubjectModelFromJson(Map<String, dynamic> json) {
  return _SubjectModel.fromJson(json);
}

/// @nodoc
mixin _$SubjectModel {
  List<EduModel>? get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectModelCopyWith<SubjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectModelCopyWith<$Res> {
  factory $SubjectModelCopyWith(
          SubjectModel value, $Res Function(SubjectModel) then) =
      _$SubjectModelCopyWithImpl<$Res, SubjectModel>;
  @useResult
  $Res call({List<EduModel>? subjects});
}

/// @nodoc
class _$SubjectModelCopyWithImpl<$Res, $Val extends SubjectModel>
    implements $SubjectModelCopyWith<$Res> {
  _$SubjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<EduModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectModelImplCopyWith<$Res>
    implements $SubjectModelCopyWith<$Res> {
  factory _$$SubjectModelImplCopyWith(
          _$SubjectModelImpl value, $Res Function(_$SubjectModelImpl) then) =
      __$$SubjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EduModel>? subjects});
}

/// @nodoc
class __$$SubjectModelImplCopyWithImpl<$Res>
    extends _$SubjectModelCopyWithImpl<$Res, _$SubjectModelImpl>
    implements _$$SubjectModelImplCopyWith<$Res> {
  __$$SubjectModelImplCopyWithImpl(
      _$SubjectModelImpl _value, $Res Function(_$SubjectModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_$SubjectModelImpl(
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<EduModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectModelImpl implements _SubjectModel {
  _$SubjectModelImpl({final List<EduModel>? subjects}) : _subjects = subjects;

  factory _$SubjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectModelImplFromJson(json);

  final List<EduModel>? _subjects;
  @override
  List<EduModel>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubjectModel(subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectModelImpl &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      __$$SubjectModelImplCopyWithImpl<_$SubjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectModelImplToJson(
      this,
    );
  }
}

abstract class _SubjectModel implements SubjectModel {
  factory _SubjectModel({final List<EduModel>? subjects}) = _$SubjectModelImpl;

  factory _SubjectModel.fromJson(Map<String, dynamic> json) =
      _$SubjectModelImpl.fromJson;

  @override
  List<EduModel>? get subjects;
  @override
  @JsonKey(ignore: true)
  _$$SubjectModelImplCopyWith<_$SubjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
