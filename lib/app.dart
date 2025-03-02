import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipo_pilot/screen/app_cubit.dart';
import 'package:ipo_pilot/screen/home.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit(),
      child: ShadApp(title: 'Flutter Demo', home: HomePage()),
    );
  }
}
