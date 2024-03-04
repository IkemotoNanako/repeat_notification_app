import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../../../core/data/local_notifications/local_notifications.dart';
import '../data/routine.dart';
import '../state/local_notifications.dart';
import '../state/routine_form_values.dart';

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
        final formValues =
            ref.read(additionalRoutineFormValuesNotifierProvider);
        final entity = formValues.toEntity();
        await isar.routines.put(entity);
        await ref.read(localNotificationsPluginProvider).register(entity);
      });
    });
  }
}
