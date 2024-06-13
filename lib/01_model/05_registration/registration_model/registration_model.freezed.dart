// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationModel _$RegistrationModelFromJson(Map<String, dynamic> json) {
  return _RegistrationModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationModel {
  List<EduModel>? get registrations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res, RegistrationModel>;
  @useResult
  $Res call({List<EduModel>? registrations});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res, $Val extends RegistrationModel>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrations = freezed,
  }) {
    return _then(_value.copyWith(
      registrations: freezed == registrations
          ? _value.registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<EduModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationModelImplCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$$RegistrationModelImplCopyWith(_$RegistrationModelImpl value,
          $Res Function(_$RegistrationModelImpl) then) =
      __$$RegistrationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EduModel>? registrations});
}

/// @nodoc
class __$$RegistrationModelImplCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res, _$RegistrationModelImpl>
    implements _$$RegistrationModelImplCopyWith<$Res> {
  __$$RegistrationModelImplCopyWithImpl(_$RegistrationModelImpl _value,
      $Res Function(_$RegistrationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrations = freezed,
  }) {
    return _then(_$RegistrationModelImpl(
      registrations: freezed == registrations
          ? _value._registrations
          : registrations // ignore: cast_nullable_to_non_nullable
              as List<EduModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationModelImpl implements _RegistrationModel {
  _$RegistrationModelImpl({final List<EduModel>? registrations})
      : _registrations = registrations;

  factory _$RegistrationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistrationModelImplFromJson(json);

  final List<EduModel>? _registrations;
  @override
  List<EduModel>? get registrations {
    final value = _registrations;
    if (value == null) return null;
    if (_registrations is EqualUnmodifiableListView) return _registrations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegistrationModel(registrations: $registrations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationModelImpl &&
            const DeepCollectionEquality()
                .equals(other._registrations, _registrations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_registrations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationModelImplCopyWith<_$RegistrationModelImpl> get copyWith =>
      __$$RegistrationModelImplCopyWithImpl<_$RegistrationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationModel implements RegistrationModel {
  factory _RegistrationModel({final List<EduModel>? registrations}) =
      _$RegistrationModelImpl;

  factory _RegistrationModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationModelImpl.fromJson;

  @override
  List<EduModel>? get registrations;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationModelImplCopyWith<_$RegistrationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
