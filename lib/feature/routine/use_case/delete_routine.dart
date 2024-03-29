import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../../../core/data/local_notifications/local_notifications.dart';
import '../data/routine.dart';
import '../state/local_notifications.dart';

part 'delete_routine.g.dart';

@riverpod
class DeleteRoutineUseCase extends _$DeleteRoutineUseCase {
  @override
  FutureOr<void> build(Routine routine) => null;

  Future<void> invoke() async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final isar = ref.read(isarProvider);
      await isar.writeTxn(() async {
        await isar.routines.delete(routine.id);
        await ref.read(localNotificationsPluginProvider).delete(routine);
      });
    });
  }
}
