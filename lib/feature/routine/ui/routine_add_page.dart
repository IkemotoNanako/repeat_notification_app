import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../core/ui/component/material.dart';
import '../../../router/router.dart';
import '../state/routine.dart';
import '../state/routine_form_values.dart';
import 'component/add_routine.dart';
import 'component/label_text_field.dart';

@RoutePage()
class RoutineAddPage extends StatelessWidget {
  const RoutineAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ルーティン登録'),
        actions: const [
          AddRoutineButton(),
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
      additionalRoutineFormValuesNotifierProvider
          .select((value) => value.notificationTimeOfDay),
    );
    return TextButton(
      onPressed: () async {
        final time = await showTimePicker(
          context: context,
          initialTime: notificationTimeOfDay,
        );
        if (time != null) {
          ref
              .read(additionalRoutineFormValuesNotifierProvider.notifier)
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
      additionalRoutineFormValuesNotifierProvider
          .select((value) => value.repetitionWeeks),
    );
    return ListTile(
      onTap: () => context.navigateTo(const RepetitionAddRoute()),
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
      additionalRoutineFormValuesNotifierProvider
          .select((value) => value.label),
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
                    .read(additionalRoutineFormValuesNotifierProvider.notifier)
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
      additionalRoutineFormValuesNotifierProvider
          .select((value) => value.enableSound),
    );
    return SwitchListTile(
      title: const Text('サウンド通知'),
      value: enableSound,
      onChanged: (value) {
        ref
            .read(additionalRoutineFormValuesNotifierProvider.notifier)
            .updateEnableSound(value);
      },
    );
  }
}
