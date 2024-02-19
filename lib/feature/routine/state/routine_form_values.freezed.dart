// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_form_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoutineFormValues {
  TimeOfDay get notificationTimeOfDay => throw _privateConstructorUsedError;
  List<RepetitionWeek> get repetitionWeeks =>
      throw _privateConstructorUsedError;
  bool get enableSound => throw _privateConstructorUsedError;
  bool get enablePush => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutineFormValuesCopyWith<RoutineFormValues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineFormValuesCopyWith<$Res> {
  factory $RoutineFormValuesCopyWith(
          RoutineFormValues value, $Res Function(RoutineFormValues) then) =
      _$RoutineFormValuesCopyWithImpl<$Res, RoutineFormValues>;
  @useResult
  $Res call(
      {TimeOfDay notificationTimeOfDay,
      List<RepetitionWeek> repetitionWeeks,
      bool enableSound,
      bool enablePush});
}

/// @nodoc
class _$RoutineFormValuesCopyWithImpl<$Res, $Val extends RoutineFormValues>
    implements $RoutineFormValuesCopyWith<$Res> {
  _$RoutineFormValuesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationTimeOfDay = null,
    Object? repetitionWeeks = null,
    Object? enableSound = null,
    Object? enablePush = null,
  }) {
    return _then(_value.copyWith(
      notificationTimeOfDay: null == notificationTimeOfDay
          ? _value.notificationTimeOfDay
          : notificationTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      repetitionWeeks: null == repetitionWeeks
          ? _value.repetitionWeeks
          : repetitionWeeks // ignore: cast_nullable_to_non_nullable
              as List<RepetitionWeek>,
      enableSound: null == enableSound
          ? _value.enableSound
          : enableSound // ignore: cast_nullable_to_non_nullable
              as bool,
      enablePush: null == enablePush
          ? _value.enablePush
          : enablePush // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineFormValuesImplCopyWith<$Res>
    implements $RoutineFormValuesCopyWith<$Res> {
  factory _$$RoutineFormValuesImplCopyWith(_$RoutineFormValuesImpl value,
          $Res Function(_$RoutineFormValuesImpl) then) =
      __$$RoutineFormValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimeOfDay notificationTimeOfDay,
      List<RepetitionWeek> repetitionWeeks,
      bool enableSound,
      bool enablePush});
}

/// @nodoc
class __$$RoutineFormValuesImplCopyWithImpl<$Res>
    extends _$RoutineFormValuesCopyWithImpl<$Res, _$RoutineFormValuesImpl>
    implements _$$RoutineFormValuesImplCopyWith<$Res> {
  __$$RoutineFormValuesImplCopyWithImpl(_$RoutineFormValuesImpl _value,
      $Res Function(_$RoutineFormValuesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationTimeOfDay = null,
    Object? repetitionWeeks = null,
    Object? enableSound = null,
    Object? enablePush = null,
  }) {
    return _then(_$RoutineFormValuesImpl(
      notificationTimeOfDay: null == notificationTimeOfDay
          ? _value.notificationTimeOfDay
          : notificationTimeOfDay // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      repetitionWeeks: null == repetitionWeeks
          ? _value._repetitionWeeks
          : repetitionWeeks // ignore: cast_nullable_to_non_nullable
              as List<RepetitionWeek>,
      enableSound: null == enableSound
          ? _value.enableSound
          : enableSound // ignore: cast_nullable_to_non_nullable
              as bool,
      enablePush: null == enablePush
          ? _value.enablePush
          : enablePush // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RoutineFormValuesImpl extends _RoutineFormValues {
  const _$RoutineFormValuesImpl(
      {this.notificationTimeOfDay = const TimeOfDay(hour: 7, minute: 0),
      final List<RepetitionWeek> repetitionWeeks = const <RepetitionWeek>[],
      this.enableSound = true,
      this.enablePush = true})
      : _repetitionWeeks = repetitionWeeks,
        super._();

  @override
  @JsonKey()
  final TimeOfDay notificationTimeOfDay;
  final List<RepetitionWeek> _repetitionWeeks;
  @override
  @JsonKey()
  List<RepetitionWeek> get repetitionWeeks {
    if (_repetitionWeeks is EqualUnmodifiableListView) return _repetitionWeeks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repetitionWeeks);
  }

  @override
  @JsonKey()
  final bool enableSound;
  @override
  @JsonKey()
  final bool enablePush;

  @override
  String toString() {
    return 'RoutineFormValues(notificationTimeOfDay: $notificationTimeOfDay, repetitionWeeks: $repetitionWeeks, enableSound: $enableSound, enablePush: $enablePush)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineFormValuesImpl &&
            (identical(other.notificationTimeOfDay, notificationTimeOfDay) ||
                other.notificationTimeOfDay == notificationTimeOfDay) &&
            const DeepCollectionEquality()
                .equals(other._repetitionWeeks, _repetitionWeeks) &&
            (identical(other.enableSound, enableSound) ||
                other.enableSound == enableSound) &&
            (identical(other.enablePush, enablePush) ||
                other.enablePush == enablePush));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      notificationTimeOfDay,
      const DeepCollectionEquality().hash(_repetitionWeeks),
      enableSound,
      enablePush);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineFormValuesImplCopyWith<_$RoutineFormValuesImpl> get copyWith =>
      __$$RoutineFormValuesImplCopyWithImpl<_$RoutineFormValuesImpl>(
          this, _$identity);
}

abstract class _RoutineFormValues extends RoutineFormValues {
  const factory _RoutineFormValues(
      {final TimeOfDay notificationTimeOfDay,
      final List<RepetitionWeek> repetitionWeeks,
      final bool enableSound,
      final bool enablePush}) = _$RoutineFormValuesImpl;
  const _RoutineFormValues._() : super._();

  @override
  TimeOfDay get notificationTimeOfDay;
  @override
  List<RepetitionWeek> get repetitionWeeks;
  @override
  bool get enableSound;
  @override
  bool get enablePush;
  @override
  @JsonKey(ignore: true)
  _$$RoutineFormValuesImplCopyWith<_$RoutineFormValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
