import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'current_routine.g.dart';

@Riverpod(dependencies: [])
int currentRoutineId(CurrentRoutineIdRef ref) {
  throw UnimplementedError();
}

@Riverpod(dependencies: [currentRoutineId])
FutureOr<Routine?> currentRoutine(CurrentRoutineRef ref) async {
  final id = ref.watch(currentRoutineIdProvider);
  final isar = ref.watch(isarProvider);
  return isar.routines.get(id);
}
