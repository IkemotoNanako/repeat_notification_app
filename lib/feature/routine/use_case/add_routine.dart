import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/data/isar/isar.dart';
import '../data/routine.dart';
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
            ref.read(currentRoutineFormValuesNotifierProvider).requireValue;
        await isar.routines.put(formValues.toEntity());
      });
    });
  }
}
