import 'package:flutter/material.dart';

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
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('ルーティン登録'),
        ],
      ),
    );
  }
}
