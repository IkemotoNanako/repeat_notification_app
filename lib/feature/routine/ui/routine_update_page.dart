import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../state/routine_form_values.dart';
import 'component/delete_routine.dart';
import 'component/update_routine.dart';

class RoutineUpdatePage extends StatelessWidget {
  const RoutineUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          _EnableSoundListTile(),
          _EnablePushListTile(),
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

class _EnablePushListTile extends ConsumerWidget {
  const _EnablePushListTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enablePush = ref.watch(
      updatedRoutineFormValuesNotifierProvider
          .select((value) => value.enablePush),
    );
    return SwitchListTile(
      title: const Text('プッシュ通知'),
      value: enablePush,
      onChanged: (value) {
        ref
            .read(updatedRoutineFormValuesNotifierProvider.notifier)
            .updateEnablePush(value);
      },
    );
  }
}
