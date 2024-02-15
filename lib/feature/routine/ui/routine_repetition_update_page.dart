import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../data/routine.dart';
import '../state/routine.dart';
import '../state/routine_form_values.dart';

class RoutineRepetitionUpdatePage extends StatelessWidget {
  const RoutineRepetitionUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('繰り返し'),
      ),
      body: const SafeArea(
        child: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(32),
          ...RepetitionWeek.values.map((e) => _ListTile(week: e)),
          const Gap(32),
        ],
      ),
    );
  }
}

class _ListTile extends ConsumerWidget {
  const _ListTile({
    required this.week,
  });

  final RepetitionWeek week;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repetitionWeeks = ref.watch(
      updatedRoutineFormValuesNotifierProvider
          .select((value) => value.repetitionWeeks),
    );
    return CheckboxListTile(
      value: repetitionWeeks.contains(week),
      onChanged: (value) {
        if (value == null) {
          return;
        }
        if (value) {
          ref
              .read(updatedRoutineFormValuesNotifierProvider.notifier)
              .addRepetitionWeek(week);
        } else {
          ref
              .read(updatedRoutineFormValuesNotifierProvider.notifier)
              .deleteRepetitionWeek(week);
        }
      },
      title: Text(week.label),
    );
  }
}
