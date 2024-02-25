import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/ui/component/button_loading.dart';
import '../../../../core/ui/component/riverpod.dart';
import '../../use_case/add_routine.dart';

class AddRoutineButton extends ConsumerWidget {
  const AddRoutineButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // UseCaseの処理状態を監視する
    ref.listenAsync(
      addRoutineUseCaseProvider,
      // 処理終了後に前の画面に戻る
      success: (_) => context.popRoute(),
    );

    // UseCaseがローディング状態かどうか
    final isLoading = ref.watch(addRoutineUseCaseProvider).isLoading;
    return TextButton(
      onPressed: () => ref.read(addRoutineUseCaseProvider.notifier).invoke(),
      child: isLoading ? const ButtonLoading() : const Text('保存'),
    );
  }
}
