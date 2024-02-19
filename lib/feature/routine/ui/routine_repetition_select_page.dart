import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/routine.dart';
import '../state/routine.dart';

class RoutineRepetitionSelectPage extends StatefulWidget {
  const RoutineRepetitionSelectPage({
    super.key,
    this.initialRepetitionWeeks = const [],
  });

  final List<RepetitionWeek> initialRepetitionWeeks;

  @override
  State<RoutineRepetitionSelectPage> createState() =>
      _RoutineRepetitionSelectPageState();
}

class _RoutineRepetitionSelectPageState
    extends State<RoutineRepetitionSelectPage> {
  late List<RepetitionWeek> _repetitionWeeks;

  @override
  void initState() {
    super.initState();
    _repetitionWeeks = List<RepetitionWeek>.from(widget.initialRepetitionWeeks);
  }

  void _addRepetitionWeek(RepetitionWeek week) {
    if (_repetitionWeeks.contains(week)) {
      return;
    }
    setState(() {
      _repetitionWeeks.add(week);
    });
  }

  void _deleteRepetitionWeek(RepetitionWeek week) {
    if (!_repetitionWeeks.contains(week)) {
      return;
    }
    setState(() {
      _repetitionWeeks.remove(week);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(_repetitionWeeks),
        ),
        title: const Text('繰り返し'),
      ),
      body: SafeArea(
        child: _Body(
          repetitionWeeks: _repetitionWeeks,
          onChanged: (week, selected) {
            if (selected) {
              _addRepetitionWeek(week);
            } else {
              _deleteRepetitionWeek(week);
            }
          },
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.repetitionWeeks,
    required this.onChanged,
  });

  final List<RepetitionWeek> repetitionWeeks;
  // ignore: avoid_positional_boolean_parameters
  final void Function(RepetitionWeek week, bool selected) onChanged;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(32),
          ...RepetitionWeek.values.map(
            (e) => CheckboxListTile(
              value: repetitionWeeks.contains(e),
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                onChanged.call(e, value);
              },
              title: Text(e.label),
            ),
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
