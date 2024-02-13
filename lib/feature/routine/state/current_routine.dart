import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'current_routine.freezed.dart';
part 'current_routine.g.dart';

@freezed
class RoutineParams with _$RoutineParams {
  const factory RoutineParams({
    required int routineId,
    required Routine? cache,
  }) = _RoutineParams;
}

@Riverpod(dependencies: [])
RoutineParams currentRoutineParams(CurrentRoutineParamsRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [currentRoutineParams])
int currentRoutineId(CurrentRoutineIdRef ref) {
  final params = ref.watch(currentRoutineParamsProvider);
  return params.routineId;
}

@Riverpod(dependencies: [currentRoutineParams])
Routine? currentRoutine(CurrentRoutineRef ref) {
  final params = ref.watch(currentRoutineParamsProvider);
  final cache = params.cache;
  if (cache != null) {
    // キャッシュがあればキャッシュを返す
    return cache;
  }

  // キャッシュがなければデータベースから取得して返す
  final id = params.routineId;
  final isar = ref.watch(isarProvider);
  return isar.routines.getSync(id);
}
