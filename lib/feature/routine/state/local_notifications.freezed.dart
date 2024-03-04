// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_notifications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoutineLocalNotification {
  int get routineId => throw _privateConstructorUsedError;
  int? get week => throw _privateConstructorUsedError;
  tz.TZDateTime get scheduledDate => throw _privateConstructorUsedError;
  DateTimeComponents? get dateTimeComponents =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoutineLocalNotificationCopyWith<RoutineLocalNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineLocalNotificationCopyWith<$Res> {
  factory $RoutineLocalNotificationCopyWith(RoutineLocalNotification value,
          $Res Function(RoutineLocalNotification) then) =
      _$RoutineLocalNotificationCopyWithImpl<$Res, RoutineLocalNotification>;
  @useResult
  $Res call(
      {int routineId,
      int? week,
      tz.TZDateTime scheduledDate,
      DateTimeComponents? dateTimeComponents});
}

/// @nodoc
class _$RoutineLocalNotificationCopyWithImpl<$Res,
        $Val extends RoutineLocalNotification>
    implements $RoutineLocalNotificationCopyWith<$Res> {
  _$RoutineLocalNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? week = freezed,
    Object? scheduledDate = null,
    Object? dateTimeComponents = freezed,
  }) {
    return _then(_value.copyWith(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledDate: null == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as tz.TZDateTime,
      dateTimeComponents: freezed == dateTimeComponents
          ? _value.dateTimeComponents
          : dateTimeComponents // ignore: cast_nullable_to_non_nullable
              as DateTimeComponents?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineLocalNotificationImplCopyWith<$Res>
    implements $RoutineLocalNotificationCopyWith<$Res> {
  factory _$$RoutineLocalNotificationImplCopyWith(
          _$RoutineLocalNotificationImpl value,
          $Res Function(_$RoutineLocalNotificationImpl) then) =
      __$$RoutineLocalNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int routineId,
      int? week,
      tz.TZDateTime scheduledDate,
      DateTimeComponents? dateTimeComponents});
}

/// @nodoc
class __$$RoutineLocalNotificationImplCopyWithImpl<$Res>
    extends _$RoutineLocalNotificationCopyWithImpl<$Res,
        _$RoutineLocalNotificationImpl>
    implements _$$RoutineLocalNotificationImplCopyWith<$Res> {
  __$$RoutineLocalNotificationImplCopyWithImpl(
      _$RoutineLocalNotificationImpl _value,
      $Res Function(_$RoutineLocalNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routineId = null,
    Object? week = freezed,
    Object? scheduledDate = null,
    Object? dateTimeComponents = freezed,
  }) {
    return _then(_$RoutineLocalNotificationImpl(
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as int?,
      scheduledDate: null == scheduledDate
          ? _value.scheduledDate
          : scheduledDate // ignore: cast_nullable_to_non_nullable
              as tz.TZDateTime,
      dateTimeComponents: freezed == dateTimeComponents
          ? _value.dateTimeComponents
          : dateTimeComponents // ignore: cast_nullable_to_non_nullable
              as DateTimeComponents?,
    ));
  }
}

/// @nodoc

class _$RoutineLocalNotificationImpl extends _RoutineLocalNotification {
  const _$RoutineLocalNotificationImpl(
      {required this.routineId,
      required this.week,
      required this.scheduledDate,
      required this.dateTimeComponents})
      : super._();

  @override
  final int routineId;
  @override
  final int? week;
  @override
  final tz.TZDateTime scheduledDate;
  @override
  final DateTimeComponents? dateTimeComponents;

  @override
  String toString() {
    return 'RoutineLocalNotification(routineId: $routineId, week: $week, scheduledDate: $scheduledDate, dateTimeComponents: $dateTimeComponents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineLocalNotificationImpl &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId) &&
            (identical(other.week, week) || other.week == week) &&
            (identical(other.scheduledDate, scheduledDate) ||
                other.scheduledDate == scheduledDate) &&
            (identical(other.dateTimeComponents, dateTimeComponents) ||
                other.dateTimeComponents == dateTimeComponents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, routineId, week, scheduledDate, dateTimeComponents);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineLocalNotificationImplCopyWith<_$RoutineLocalNotificationImpl>
      get copyWith => __$$RoutineLocalNotificationImplCopyWithImpl<
          _$RoutineLocalNotificationImpl>(this, _$identity);
}

abstract class _RoutineLocalNotification extends RoutineLocalNotification {
  const factory _RoutineLocalNotification(
          {required final int routineId,
          required final int? week,
          required final tz.TZDateTime scheduledDate,
          required final DateTimeComponents? dateTimeComponents}) =
      _$RoutineLocalNotificationImpl;
  const _RoutineLocalNotification._() : super._();

  @override
  int get routineId;
  @override
  int? get week;
  @override
  tz.TZDateTime get scheduledDate;
  @override
  DateTimeComponents? get dateTimeComponents;
  @override
  @JsonKey(ignore: true)
  _$$RoutineLocalNotificationImplCopyWith<_$RoutineLocalNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
