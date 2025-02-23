import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: add DP
    final userNameController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('IPO Pilot')),
      body: Column(
        children: [
          TextFormField(
            controller: userNameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          FilledButton(onPressed: () {}, child: Text('Continue')),
        ],
      ),
    );
  }
}
