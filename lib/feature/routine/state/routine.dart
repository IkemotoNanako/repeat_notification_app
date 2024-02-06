import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'routine.g.dart';

extension RoutineX on Routine {
  TimeOfDay get notificationTimeOfDay => TimeOfDay(
        hour: notificationTime ~/ 3600,
        minute: notificationTime % 60,
      );
}

@riverpod
Stream<List<Routine>> routines(RoutinesRef ref) {
  final isar = ref.watch(isarProvider);

  // 本来は無限スクロール対応などして部分取得したほうがパフォーマンス的に望ましいが
  // 現状は全件取得して表示している。
  // ORDER BY createdAt DESC
  return isar.routines
      .where()
      .sortByCreatedAtDesc()
      .watch(fireImmediately: true);
}
