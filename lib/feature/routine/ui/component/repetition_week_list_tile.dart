import 'package:flutter/material.dart';

import '../../data/routine.dart';
import '../../state/routine.dart';

class RepetitionWeekListTile extends StatelessWidget {
  const RepetitionWeekListTile({
    super.key,
    required this.week,
    required this.selected,
    required this.onChanged,
  });

  final RepetitionWeek week;
  final bool selected;
  // ignore: avoid_positional_boolean_parameters
  final void Function(bool value) onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: selected,
      onChanged: (value) {
        if (value == null) {
          return;
        }
        onChanged.call(value);
      },
      title: Text(week.label),
    );
  }
}
