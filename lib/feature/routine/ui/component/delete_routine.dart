import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/ui/component/button_loading.dart';
import '../../../../core/ui/component/material.dart';
import '../../../../core/ui/component/riverpod.dart';
import '../../state/current_routine.dart';
import '../../use_case/delete_routine.dart';

class DeleteCurrentRoutineButton extends ConsumerWidget {
  const DeleteCurrentRoutineButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routine = ref.watch(currentRoutineProvider);
    if (routine == null) {
      return const SizedBox();
    }

    final deleteProvider = deleteRoutineUseCaseProvider(routine);
    ref.listenAsync(
      deleteProvider,
      success: (_) => context.popRoute(),
    );
    final isLoading = ref.watch(deleteProvider).isLoading;
    return TextButton(
      onPressed: () => ref.read(deleteProvider.notifier).invoke(),
      child: isLoading
          ? const ButtonLoading()
          : Text(
              'ルーティーンを削除',
              style: TextStyle(
                color: context.error,
              ),
            ),
    );
  }
}
