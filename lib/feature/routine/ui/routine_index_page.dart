import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/ui/component/riverpod.dart';
import '../data/routine.dart';
import '../state/routine.dart';
import 'component/navigate_routine_add_page.dart';

class RoutineIndexPage extends StatelessWidget {
  const RoutineIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ルーティン一覧'),
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
        return ListView.builder(
          itemCount: routines.length,
          itemBuilder: (context, index) => _ListTile(routine: routines[index]),
        );
      },
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    required this.routine,
  });

  final Routine routine;

  @override
  Widget build(BuildContext context) {
    // TODO(any): 表示は仮実装
    return ListTile(
      leading: Text(routine.id.toString()),
      title: Text(routine.notificationTime.toString()),
      subtitle: Text(routine.createdAt.toString()),
    );
  }
}
