import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'update_routine.g.dart';

@riverpod
class UpdateRoutineUseCase extends _$UpdateRoutineUseCase {
  @override
  FutureOr<void> build() => null;

  Future<void> invoke(
    Routine routine, {
    bool? newState,
  }) async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final isar = ref.read(isarProvider);
      await isar.writeTxn(() async {
        if (newState != null) {
          routine.state = newState;
        }
        await isar.routines.put(routine);
      });
    });
  }
}
