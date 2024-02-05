import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../core/ui/component/riverpod.dart';
import '../state/routine_form_values.dart';
import 'component/add_routine.dart';

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
          _EnableSoundListTile(),
          _EnablePushListTile(),
        ],
      ),
    );
  }
}

class _NotificationTimeButton extends ConsumerWidget {
  const _NotificationTimeButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(currentRoutineFormValuesNotifierProvider);
    return asyncValue.whenWidget(
      data: (formValues) {
        return TextButton(
          onPressed: () async {
            final time = await showTimePicker(
              context: context,
              initialTime: formValues.notificationTimeOfDay,
            );
            if (time != null) {
              ref
                  .read(currentRoutineFormValuesNotifierProvider.notifier)
                  .updateNotificationTime(time);
            }
          },
          child: Text(
            formValues.notificationTimeOfDay.format(context),
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}

class _EnableSoundListTile extends ConsumerWidget {
  const _EnableSoundListTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(currentRoutineFormValuesNotifierProvider);
    return asyncValue.whenWidget(
      data: (formValues) {
        return SwitchListTile(
          title: const Text('サウンド通知'),
          value: formValues.enableSound,
          onChanged: (value) {
            ref
                .read(currentRoutineFormValuesNotifierProvider.notifier)
                .updateEnableSound(value);
          },
        );
      },
    );
  }
}

class _EnablePushListTile extends ConsumerWidget {
  const _EnablePushListTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(currentRoutineFormValuesNotifierProvider);
    return asyncValue.whenWidget(
      data: (formValues) {
        return SwitchListTile(
          title: const Text('プッシュ通知'),
          value: formValues.enablePush,
          onChanged: (value) {
            ref
                .read(currentRoutineFormValuesNotifierProvider.notifier)
                .updateEnablePush(value);
          },
        );
      },
    );
  }
}
