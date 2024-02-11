import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/ui/component/button_loading.dart';
import '../../../../core/ui/component/material.dart';
import '../../../../core/ui/component/riverpod.dart';
import '../../state/current_routine.dart';
import '../../use_case/delete_routine.dart';

class DeleteCurrentRoutineButton extends ConsumerWidget {
  const DeleteCurrentRoutineButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(currentRoutineProvider);
    return asyncValue.whenWidget(
      data: (routine) {
        if (routine == null) {
          return const SizedBox();
        }

        final deleteProvider = deleteRoutineUseCaseProvider(routine);

        ref.listenAsync(
          deleteProvider,
          success: (_) => context.pop(),
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
      },
      loading: SizedBox.new,
    );
  }
}
