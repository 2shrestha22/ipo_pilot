import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ipo_pilot/app.dart';

void main() {
  runApp(ProviderScope(child: const App()));
}
