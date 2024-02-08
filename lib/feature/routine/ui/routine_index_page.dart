import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../core/ui/component/material.dart';
import '../../../core/ui/component/riverpod.dart';
import '../data/routine.dart';
import '../state/routine.dart';
import '../use_case/delete_routine.dart';
import '../use_case/update_routine_state.dart';
import 'component/navigate_routine_add_page.dart';

class RoutineIndexPage extends StatelessWidget {
  const RoutineIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ルーティン'),
        actions: const [
          NavigateRoutineAddPageButton(),
        ],
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 本来は無限スクロール対応などして部分取得したほうがパフォーマンス的に望ましいが
    // 現状は全件取得して表示している。
    final asyncValue = ref.watch(routinesProvider);
    return asyncValue.whenWidget(
      data: (routines) {
        if (routines.isEmpty) {
          return const Center(
            child: Text('ルーティンがありません'),
          );
        }
        return ListView.separated(
          itemCount: routines.length,
          itemBuilder: (context, index) => _ListTile(routine: routines[index]),
          separatorBuilder: (context, index) => const _Divider(),
        );
      },
    );
  }
}

class _ListTile extends ConsumerWidget {
  const _ListTile({
    required this.routine,
  });

  final Routine routine;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateStateProvider = updateRoutineStateUseCaseProvider(routine);
    final deleteProvider = deleteRoutineUseCaseProvider(routine);
    ref.listenAsync(updateStateProvider);
    ref.listenAsync(deleteProvider);
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.2,
        children: [
          SlidableAction(
            onPressed: (context) => ref.read(deleteProvider.notifier).invoke(),
            backgroundColor: context.error,
            foregroundColor: context.onError,
            label: '削除',
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          // TODO(susa): 編集画面に遷移する
        },
        title: Text(
          routine.notificationTimeOfDay.format(context),
          style: context.displayMedium?.copyWith(
            color: routine.state ? null : context.outline,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        trailing: Switch(
          value: routine.state,
          onChanged: (value) =>
              ref.read(updateStateProvider.notifier).invoke(value),
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      indent: 16,
      endIndent: 16,
    );
  }
}
