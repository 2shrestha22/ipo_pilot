import 'dart:async';

import 'package:flutter/material.dart';

class CircleLoader extends StatelessWidget {
  const CircleLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 2,
      constraints: BoxConstraints(minHeight: 10, minWidth: 10),
    );
  }
}

class TextLoading extends StatefulWidget {
  const TextLoading({super.key});

  @override
  State<TextLoading> createState() => _TextLoadingState();
}

class _TextLoadingState extends State<TextLoading> {
  int dots = 0;

  late final Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Durations.long4, (timer) {
      setState(() {
        dots = (dots + 1) % 4;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return switch (dots) {
      0 => Text(' '),
      1 => Text('.'),
      2 => Text('..'),
      _ => Text('...'),
    };
  }
}
