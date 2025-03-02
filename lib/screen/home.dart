import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ipo_pilot/screen/app_state.dart';
import 'package:ipo_pilot/screen/app_cubit.dart';
import 'package:ipo_pilot/screen/widget/login_view.dart';
import 'package:ipo_pilot/screen/widget/process_view.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCubit, AppState>(
      listenWhen: (previous, current) => previous.error != current.error,
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error.toString())));
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text('IPO Pilot')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              if (state.token == null) return LoginView();
              return ProcessView();
            },
          ),
        ),
      ),
    );
  }
}
