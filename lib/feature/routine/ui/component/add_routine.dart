import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AddRoutineButton extends StatelessWidget {
  const AddRoutineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.popRoute(),
      child: const Text('保存'),
    );
  }
}
