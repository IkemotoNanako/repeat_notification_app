import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddRoutineButton extends StatelessWidget {
  const AddRoutineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.pop(),
      child: const Text('保存'),
    );
  }
}
