import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'delete_routine.g.dart';

@riverpod
class DeleteRoutineUseCase extends _$DeleteRoutineUseCase {
  @override
  FutureOr<void> build() => null;

  Future<void> invoke(Routine routine) async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final isar = ref.read(isarProvider);
      await isar.writeTxn(() async {
        await isar.routines.delete(routine.id);
      });
    });
  }
}
