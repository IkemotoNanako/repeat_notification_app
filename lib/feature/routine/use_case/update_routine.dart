import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../../../core/data/local_notifications/local_notifications.dart';
import '../data/routine.dart';
import '../state/current_routine.dart';
import '../state/local_notifications.dart';
import '../state/routine_form_values.dart';

part 'update_routine.g.dart';

@Riverpod(dependencies: [currentRoutine, UpdatedRoutineFormValuesNotifier])
class UpdateRoutineUseCase extends _$UpdateRoutineUseCase {
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
        final oldEntity = ref.read(currentRoutineProvider);
        if (oldEntity == null) {
          throw StateError('Routine is not found');
        }
        final formValues = ref.read(updatedRoutineFormValuesNotifierProvider);
        final newEntity = formValues.toEntity(oldEntity);
        await isar.routines.put(newEntity);

        final localNotificationsPlugin =
            ref.read(localNotificationsPluginProvider);
        await localNotificationsPlugin.delete(oldEntity);
        await localNotificationsPlugin.register(newEntity);
      });
    });
  }
}
