import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'routine.g.dart';

@riverpod
Stream<List<Routine>> routines(RoutinesRef ref) {
  final isar = ref.watch(isarProvider);

  // 本来は無限スクロール対応などして部分取得したほうがパフォーマンス的に望ましいが
  // 現状は全件取得して表示している。
  // WHERE state = true ORDER BY createdAt DESC
  return isar.routines
      .filter()
      .stateEqualTo(true)
      .sortByCreatedAtDesc()
      .watch(fireImmediately: true);
}
