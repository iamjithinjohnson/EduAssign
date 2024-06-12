// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Classroom _$ClassroomFromJson(Map<String, dynamic> json) {
  return _Classroom.fromJson(json);
}

/// @nodoc
mixin _$Classroom {
  int? get id => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res, Classroom>;
  @useResult
  $Res call({int? id, String? layout, String? name, int? size});
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res, $Val extends Classroom>
    implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? layout = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomImplCopyWith<$Res>
    implements $ClassroomCopyWith<$Res> {
  factory _$$ClassroomImplCopyWith(
          _$ClassroomImpl value, $Res Function(_$ClassroomImpl) then) =
      __$$ClassroomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? layout, String? name, int? size});
}

/// @nodoc
class __$$ClassroomImplCopyWithImpl<$Res>
    extends _$ClassroomCopyWithImpl<$Res, _$ClassroomImpl>
    implements _$$ClassroomImplCopyWith<$Res> {
  __$$ClassroomImplCopyWithImpl(
      _$ClassroomImpl _value, $Res Function(_$ClassroomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? layout = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_$ClassroomImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomImpl implements _Classroom {
  _$ClassroomImpl({this.id, this.layout, this.name, this.size});

  factory _$ClassroomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomImplFromJson(json);

  @override
  final int? id;
  @override
  final String? layout;
  @override
  final String? name;
  @override
  final int? size;

  @override
  String toString() {
    return 'Classroom(id: $id, layout: $layout, name: $name, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, layout, name, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      __$$ClassroomImplCopyWithImpl<_$ClassroomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomImplToJson(
      this,
    );
  }
}

abstract class _Classroom implements Classroom {
  factory _Classroom(
      {final int? id,
      final String? layout,
      final String? name,
      final int? size}) = _$ClassroomImpl;

  factory _Classroom.fromJson(Map<String, dynamic> json) =
      _$ClassroomImpl.fromJson;

  @override
  int? get id;
  @override
  String? get layout;
  @override
  String? get name;
  @override
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
