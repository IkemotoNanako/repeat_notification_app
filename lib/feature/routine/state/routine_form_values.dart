import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/routine.dart';
import 'current_routine.dart';
import 'routine.dart';

part 'routine_form_values.freezed.dart';
part 'routine_form_values.g.dart';

/// ルーティーン登録／編集時のフォーム値
@freezed
class RoutineFormValues with _$RoutineFormValues {
  const factory RoutineFormValues({
    @Default(TimeOfDay(hour: 7, minute: 0)) TimeOfDay notificationTimeOfDay,
    @Default(<RepetitionWeek>[]) List<RepetitionWeek> repetitionWeeks,
    @Default(true) bool enableSound,
    @Default(true) bool enablePush,
  }) = _RoutineFormValues;
  const RoutineFormValues._();

  factory RoutineFormValues.fromEntity(Routine entity) => RoutineFormValues(
        notificationTimeOfDay: entity.notificationTimeOfDay,
        repetitionWeeks: entity.repetitionWeeks,
        enableSound: entity.enableSound,
        enablePush: entity.enablePush,
      );

  /// エンティティに変換する
  Routine toEntity([Routine? base]) => (base ?? Routine())
    ..notificationTime =
        notificationTimeOfDay.hour * 3600 + notificationTimeOfDay.minute * 60
    ..repetitionWeeks = repetitionWeeks
    ..enableSound = enableSound
    ..enablePush = enablePush;
}

@riverpod
class AdditionalRoutineFormValuesNotifier
    extends _$AdditionalRoutineFormValuesNotifier
    with _RoutineFormValuesNotifier {
  @override
  RoutineFormValues build() {
    return const RoutineFormValues();
  }
}

@Riverpod(dependencies: [currentRoutine])
class UpdatedRoutineFormValuesNotifier
    extends _$UpdatedRoutineFormValuesNotifier with _RoutineFormValuesNotifier {
  @override
  RoutineFormValues build() {
    final routine = ref.watch(currentRoutineProvider);
    if (routine == null) {
      throw StateError('Routine is not found');
    }
    return RoutineFormValues.fromEntity(routine);
  }
}

mixin _RoutineFormValuesNotifier on AutoDisposeNotifier<RoutineFormValues> {
  void updateNotificationTime(TimeOfDay value) {
    state = state.copyWith(notificationTimeOfDay: value);
  }

  void updateRepetitionWeeks(List<RepetitionWeek> value) {
    value.sort((a, b) => a.index.compareTo(b.index));
    state = state.copyWith(repetitionWeeks: value);
  }

  // ignore: avoid_positional_boolean_parameters
  void updateEnableSound(bool value) {
    state = state.copyWith(enableSound: value);
  }

  // ignore: avoid_positional_boolean_parameters
  void updateEnablePush(bool value) {
    state = state.copyWith(enablePush: value);
  }
}
