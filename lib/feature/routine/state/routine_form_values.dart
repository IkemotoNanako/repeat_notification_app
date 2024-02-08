import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/routine.dart';

part 'routine_form_values.freezed.dart';
part 'routine_form_values.g.dart';

/// ルーティーン登録／編集時のフォーム値
@freezed
class RoutineFormValues with _$RoutineFormValues {
  const factory RoutineFormValues({
    @Default(TimeOfDay(hour: 7, minute: 0)) TimeOfDay notificationTimeOfDay,
    @Default(true) bool enableSound,
    @Default(true) bool enablePush,
  }) = _RoutineFormValues;
  const RoutineFormValues._();

  /// エンティティに変換する
  Routine toEntity() => Routine()
    ..notificationTime =
        notificationTimeOfDay.hour * 3600 + notificationTimeOfDay.minute * 60
    ..enableSound = enableSound
    ..enablePush = enablePush;
}

@riverpod
class AdditionalRoutineFormValuesNotifier
    extends _$AdditionalRoutineFormValuesNotifier {
  @override
  RoutineFormValues build() {
    return const RoutineFormValues();
  }

  void updateNotificationTime(TimeOfDay value) {
    state = state.copyWith(notificationTimeOfDay: value);
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
