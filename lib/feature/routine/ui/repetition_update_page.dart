import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../data/routine.dart';
import '../state/routine_form_values.dart';
import 'component/repetition_week_list_tile.dart';

@RoutePage()
class RepetitionUpdatePage extends ConsumerWidget {
  const RepetitionUpdatePage({
    super.key,
    // ignore: avoid_unused_constructor_parameters
    @PathParam.inherit() required int routineId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repetitionWeeks = ref.watch(
      updatedRoutineFormValuesNotifierProvider
          .select((value) => value.repetitionWeeks),
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(32),
          ...RepetitionWeek.values.map(
            (e) => RepetitionWeekListTile(
              selected: repetitionWeeks.contains(e),
              onChanged: (value) {
                final notifier =
                    ref.read(updatedRoutineFormValuesNotifierProvider.notifier);
                if (value) {
                  notifier.addRepetitionWeek(e);
                } else {
                  notifier.deleteRepetitionWeek(e);
                }
              },
              week: e,
            ),
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
