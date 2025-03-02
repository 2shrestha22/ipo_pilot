import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ipo_pilot/screen/app_state.dart';
import 'package:ipo_pilot/screen/app_cubit.dart';
import 'package:ipo_pilot/screen/widget/button.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: add DP
    final userNameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Login', style: ShadTheme.of(context).textTheme.h2),
        Text(
          'Login with your MeroShare credentials to start using IPO Pilot.',
          style: ShadTheme.of(context).textTheme.small,
        ),
        Gutter(),
        ShadInputFormField(
          label: Text('Username'),
          controller: userNameController,
        ),
        ShadInputFormField(
          label: Text('Password'),
          controller: passwordController,
        ),
        SizedBox(
          width: double.infinity,
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return CustomButton(
                isBusy: state.loginStatus.isLoading,
                onPressed: () {
                  context.read<AppCubit>().login(
                    clientId: 184,
                    username: userNameController.text,
                    password: passwordController.text,
                  );
                },
                child: Text('Continue'),
              );
            },
          ),
        ),
      ],
    );
  }
}
