import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipo_pilot/model/user.dart';
import 'package:ipo_pilot/screen/app_cubit.dart';
import 'package:ipo_pilot/screen/app_state.dart';
import 'package:ipo_pilot/screen/widget/circle_loader.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state.queryStatus.isLoading) return CircleLoader();
        return ShadCard(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(user.name, style: ShadTheme.of(context).textTheme.large),
              Text(user.address, style: ShadTheme.of(context).textTheme.small),
              Text(user.email, style: ShadTheme.of(context).textTheme.small),
            ],
          ),
        );
      },
    );
  }
}
