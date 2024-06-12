// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassRoomModel _$ClassRoomModelFromJson(Map<String, dynamic> json) {
  return _ClassRoomModel.fromJson(json);
}

/// @nodoc
mixin _$ClassRoomModel {
  List<Classroom>? get classrooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassRoomModelCopyWith<ClassRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRoomModelCopyWith<$Res> {
  factory $ClassRoomModelCopyWith(
          ClassRoomModel value, $Res Function(ClassRoomModel) then) =
      _$ClassRoomModelCopyWithImpl<$Res, ClassRoomModel>;
  @useResult
  $Res call({List<Classroom>? classrooms});
}

/// @nodoc
class _$ClassRoomModelCopyWithImpl<$Res, $Val extends ClassRoomModel>
    implements $ClassRoomModelCopyWith<$Res> {
  _$ClassRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = freezed,
  }) {
    return _then(_value.copyWith(
      classrooms: freezed == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<Classroom>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassRoomModelImplCopyWith<$Res>
    implements $ClassRoomModelCopyWith<$Res> {
  factory _$$ClassRoomModelImplCopyWith(_$ClassRoomModelImpl value,
          $Res Function(_$ClassRoomModelImpl) then) =
      __$$ClassRoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Classroom>? classrooms});
}

/// @nodoc
class __$$ClassRoomModelImplCopyWithImpl<$Res>
    extends _$ClassRoomModelCopyWithImpl<$Res, _$ClassRoomModelImpl>
    implements _$$ClassRoomModelImplCopyWith<$Res> {
  __$$ClassRoomModelImplCopyWithImpl(
      _$ClassRoomModelImpl _value, $Res Function(_$ClassRoomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = freezed,
  }) {
    return _then(_$ClassRoomModelImpl(
      classrooms: freezed == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<Classroom>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassRoomModelImpl implements _ClassRoomModel {
  _$ClassRoomModelImpl({final List<Classroom>? classrooms})
      : _classrooms = classrooms;

  factory _$ClassRoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassRoomModelImplFromJson(json);

  final List<Classroom>? _classrooms;
  @override
  List<Classroom>? get classrooms {
    final value = _classrooms;
    if (value == null) return null;
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassRoomModel(classrooms: $classrooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassRoomModelImpl &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_classrooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassRoomModelImplCopyWith<_$ClassRoomModelImpl> get copyWith =>
      __$$ClassRoomModelImplCopyWithImpl<_$ClassRoomModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassRoomModelImplToJson(
      this,
    );
  }
}

abstract class _ClassRoomModel implements ClassRoomModel {
  factory _ClassRoomModel({final List<Classroom>? classrooms}) =
      _$ClassRoomModelImpl;

  factory _ClassRoomModel.fromJson(Map<String, dynamic> json) =
      _$ClassRoomModelImpl.fromJson;

  @override
  List<Classroom>? get classrooms;
  @override
  @JsonKey(ignore: true)
  _$$ClassRoomModelImplCopyWith<_$ClassRoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
