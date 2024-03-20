import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../core/ui/component/material.dart';
import '../../../router/router.dart';
import '../state/routine.dart';
import '../state/routine_form_values.dart';
import 'component/delete_routine.dart';
import 'component/label_text_field.dart';
import 'component/update_routine.dart';

@RoutePage()
class RoutineUpdatePage extends StatelessWidget {
  const RoutineUpdatePage({
    super.key,
    // ignore: avoid_unused_constructor_parameters
    @PathParam.inherit() required int routineId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('ルーティン編集'),
        actions: const [
          UpdateRoutineButton(),
        ],
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
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Gap(32),
          Center(
            child: _NotificationTimeButton(),
          ),
          Gap(32),
          _RepetitionListTile(),
          _UpdateLabelListTile(),
          _EnableSoundListTile(),
          Gap(32),
          DeleteCurrentRoutineButton(),
          Gap(32),
        ],
      ),
    );
  }
}

class _NotificationTimeButton extends ConsumerWidget {
  const _NotificationTimeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationTimeOfDay = ref.watch(
      updatedRoutineFormValuesNotifierProvider.select(
        (value) => value.notificationTimeOfDay,
      ),
    );
    return TextButton(
      onPressed: () async {
        final time = await showTimePicker(
          context: context,
          initialTime: notificationTimeOfDay,
        );
        if (time != null) {
          ref
              .read(updatedRoutineFormValuesNotifierProvider.notifier)
              .updateNotificationTime(time);
        }
      },
      child: Text(
        notificationTimeOfDay.format(context),
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _RepetitionListTile extends ConsumerWidget {
  const _RepetitionListTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repetitionWeeks = ref.watch(
      updatedRoutineFormValuesNotifierProvider
          .select((value) => value.repetitionWeeks),
    );
    return ListTile(
      onTap: () => context.navigateTo(RepetitionUpdateRoute()),
      title: Row(
        children: [
          const Expanded(
            child: Text('繰り返し'),
          ),
          Text(
            repetitionWeeks.title,
            style: TextStyle(
              color: context.outline,
            ),
          ),
        ],
      ),
      trailing: const Icon(Icons.navigate_next),
    );
  }
}

class _UpdateLabelListTile extends ConsumerWidget {
  const _UpdateLabelListTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final label = ref.watch(
      updatedRoutineFormValuesNotifierProvider.select((value) => value.label),
    );
    return ListTile(
      title: Row(
        children: [
          const Text('ラベル'),
          Expanded(
            child: LabelTextField(
              label: label,
              onChanged: (value) {
                ref
                    .read(updatedRoutineFormValuesNotifierProvider.notifier)
                    .updateLabel(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _EnableSoundListTile extends ConsumerWidget {
  const _EnableSoundListTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enableSound = ref.watch(
      updatedRoutineFormValuesNotifierProvider.select(
        (value) => value.enableSound,
      ),
    );
    return SwitchListTile(
      title: const Text('サウンド通知'),
      value: enableSound,
      onChanged: (value) {
        ref
            .read(updatedRoutineFormValuesNotifierProvider.notifier)
            .updateEnableSound(value);
      },
    );
  }
}
