import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/ui/component/button_loading.dart';
import '../../../../core/ui/component/riverpod.dart';
import '../../use_case/update_routine.dart';

class UpdateRoutineButton extends ConsumerWidget {
  const UpdateRoutineButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listenAsync(
      updateRoutineUseCaseProvider,
      success: (_) => context.popRoute(),
    );
    final isLoading = ref.watch(updateRoutineUseCaseProvider).isLoading;
    return TextButton(
      onPressed: () => ref.read(updateRoutineUseCaseProvider.notifier).invoke(),
      child: isLoading ? const ButtonLoading() : const Text('保存'),
    );
  }
}
