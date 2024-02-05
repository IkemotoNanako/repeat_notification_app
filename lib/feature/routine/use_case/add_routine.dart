import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';

part 'add_routine.g.dart';

@riverpod
class AddRoutineUseCase extends _$AddRoutineUseCase {
  @override
  FutureOr<void> build() => null;

  Future<void> invoke() async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final isar = ref.read(isarProvider);
      await isar.writeTxn(() async {
        // TODO(susa): 仮実装
        await isar.routines.put(Routine());
      });
    });
  }
}
