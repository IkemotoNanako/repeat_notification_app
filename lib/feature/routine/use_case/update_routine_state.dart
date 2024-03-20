import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../../../core/data/local_notifications/local_notifications.dart';
import '../data/routine.dart';
import '../state/local_notifications.dart';

part 'update_routine_state.g.dart';

@riverpod
class UpdateRoutineStateUseCase extends _$UpdateRoutineStateUseCase {
  @override
  FutureOr<void> build(Routine routine) => null;

  // ignore: avoid_positional_boolean_parameters
  Future<void> invoke(bool value) async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final isar = ref.read(isarProvider);
      await isar.writeTxn(() async {
        routine.state = value;
        await isar.routines.put(routine);

        final localNotificationsPlugin =
            ref.read(localNotificationsPluginProvider);
        if (value) {
          await localNotificationsPlugin.register(routine);
        } else {
          await localNotificationsPlugin.delete(routine);
        }
      });
    });
  }
}
