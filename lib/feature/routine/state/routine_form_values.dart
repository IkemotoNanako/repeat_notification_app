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
    required TimeOfDay notificationTimeOfDay,
    @Default(<RepetitionWeek>[]) List<RepetitionWeek> repetitionWeeks,
    @Default(true) bool enableSound,
    @Default('') String label,
  }) = _RoutineFormValues;
  const RoutineFormValues._();

  factory RoutineFormValues.fromEntity(Routine entity) => RoutineFormValues(
        notificationTimeOfDay: entity.notificationTimeOfDay,
        repetitionWeeks: entity.repetitionWeeks,
        enableSound: entity.enableSound,
        label: entity.label,
      );

  /// エンティティに変換する
  Routine toEntity([Routine? base]) => (base ?? Routine())
    ..notificationTime =
        notificationTimeOfDay.hour * 3600 + notificationTimeOfDay.minute * 60
    ..repetitionWeeks = repetitionWeeks
    ..enableSound = enableSound
    ..label = label.isEmpty ? 'アラーム' : label;
}

@riverpod
class AdditionalRoutineFormValuesNotifier
    extends _$AdditionalRoutineFormValuesNotifier
    with _RoutineFormValuesNotifier {
  @override
  RoutineFormValues build() {
    return RoutineFormValues(
      notificationTimeOfDay: TimeOfDay.now(),
    );
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

  void addRepetitionWeek(RepetitionWeek week) {
    if (state.repetitionWeeks.contains(week)) {
      return;
    }
    state = state.copyWith(
      repetitionWeeks: List<RepetitionWeek>.from(state.repetitionWeeks)
        ..add(week),
    );
  }

  void deleteRepetitionWeek(RepetitionWeek week) {
    if (!state.repetitionWeeks.contains(week)) {
      return;
    }
    state = state.copyWith(
      repetitionWeeks: List<RepetitionWeek>.from(state.repetitionWeeks)
        ..remove(week),
    );
  }

  // ignore: avoid_positional_boolean_parameters
  void updateEnableSound(bool value) {
    state = state.copyWith(enableSound: value);
  }

  void updateLabel(String value) {
    state = state.copyWith(label: value);
  }
}
