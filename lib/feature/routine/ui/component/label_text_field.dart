import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/ui/component/material.dart';

class LabelTextField extends ConsumerWidget {
  const LabelTextField({
    super.key,
    required this.label,
    required this.onChanged,
  });

  final String label;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: TextEditingController(text: label),
      decoration: const InputDecoration(
        hintText: 'アラーム',
        border: InputBorder.none,
        counterText: '',
      ),
      textAlign: TextAlign.end,
      style: TextStyle(
        color: context.outline,
      ),
      maxLength: 20,
      onChanged: onChanged,
    );
  }
}
