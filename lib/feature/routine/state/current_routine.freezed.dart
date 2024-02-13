// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_routine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoutineParams {
  int get routineId => throw _privateConstructorUsedError;
  Routine? get cache => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutineParamsCopyWith<RoutineParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineParamsCopyWith<$Res> {
  factory $RoutineParamsCopyWith(
          RoutineParams value, $Res Function(RoutineParams) then) =
      _$RoutineParamsCopyWithImpl<$Res, RoutineParams>;
  @useResult
  $Res call({int routineId, Routine? cache});
}

/// @nodoc
class _$RoutineParamsCopyWithImpl<$Res, $Val extends RoutineParams>
    implements $RoutineParamsCopyWith<$Res> {
  _$RoutineParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? cache = freezed,
  }) {
    return _then(_value.copyWith(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      cache: freezed == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Routine?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineParamsImplCopyWith<$Res>
    implements $RoutineParamsCopyWith<$Res> {
  factory _$$RoutineParamsImplCopyWith(
          _$RoutineParamsImpl value, $Res Function(_$RoutineParamsImpl) then) =
      __$$RoutineParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int routineId, Routine? cache});
}

/// @nodoc
class __$$RoutineParamsImplCopyWithImpl<$Res>
    extends _$RoutineParamsCopyWithImpl<$Res, _$RoutineParamsImpl>
    implements _$$RoutineParamsImplCopyWith<$Res> {
  __$$RoutineParamsImplCopyWithImpl(
      _$RoutineParamsImpl _value, $Res Function(_$RoutineParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? cache = freezed,
  }) {
    return _then(_$RoutineParamsImpl(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      cache: freezed == cache
          ? _value.cache
          : cache // ignore: cast_nullable_to_non_nullable
              as Routine?,
    ));
  }
}

/// @nodoc

class _$RoutineParamsImpl implements _RoutineParams {
  const _$RoutineParamsImpl({required this.routineId, required this.cache});

  @override
  final int routineId;
  @override
  final Routine? cache;

  @override
  String toString() {
    return 'RoutineParams(routineId: $routineId, cache: $cache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineParamsImpl &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.cache, cache) || other.cache == cache));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routineId, cache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineParamsImplCopyWith<_$RoutineParamsImpl> get copyWith =>
      __$$RoutineParamsImplCopyWithImpl<_$RoutineParamsImpl>(this, _$identity);
}

abstract class _RoutineParams implements RoutineParams {
  const factory _RoutineParams(
      {required final int routineId,
      required final Routine? cache}) = _$RoutineParamsImpl;

  @override
  int get routineId;
  @override
  Routine? get cache;
  @override
  @JsonKey(ignore: true)
  _$$RoutineParamsImplCopyWith<_$RoutineParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
