import 'package:ack/ack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ipo_pilot/model/issue.dart';
import 'package:ipo_pilot/screen/app_state.dart';
import 'package:ipo_pilot/screen/app_cubit.dart';
import 'package:ipo_pilot/screen/widget/button.dart';
import 'package:ipo_pilot/screen/widget/circle_loader.dart';
import 'package:ipo_pilot/screen/widget/profile_view.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ProcessView extends StatefulWidget {
  const ProcessView({super.key});

  @override
  State<ProcessView> createState() => _ProcessViewState();
}

class _ProcessViewState extends State<ProcessView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // See https://github.com/flutter/flutter/issues/145155
        // FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          if (state.user != null) {
            return SingleChildScrollView(
              child: Column(
                spacing: 8,
                children: [
                  ProfileView(user: state.user!),
                  ...state.issues
                          ?.map((issue) => IssueCard(issue: issue))
                          .toList() ??
                      [],
                ],
              ),
            );
          }

          return Row(
            children: [
              Flexible(child: Text('Fetching Profile')),
              Gutter.tiny(),
              TextLoading(),
            ],
          );
        },
      ),
    );
  }
}

class IssueCard extends HookWidget {
  const IssueCard({super.key, required this.issue});

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    final totalPrice = useState(issue.pricePerUnit * issue.minUnit);
    final formKey = useMemoized(() => GlobalKey<FormState>(), ['formKey']);

    return Form(
      key: formKey,
      child: ShadCard(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(issue.companyName.toUpperCase(), style: theme.textTheme.table),
            Gutter(),
            Row(
              children: [
                ShadBadge(child: Text(issue.shareTypeName.toUpperCase())),
                Gutter.tiny(),
                Text(issue.subGroup),
                Gutter.tiny(),
                Text('(${issue.scrip.toUpperCase()})'),
              ],
            ),
            Gutter.tiny(),
            Text(issue.shareGroupName),
            ShadDivider.horizontal(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price Per Unit: ${issue.pricePerUnit}'),
                    Text('Min: ${issue.minUnit}'),
                    Text('Max: ${issue.maxUnit}'),
                  ],
                ),
                Gutter.extraLarge(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShadInputFormField(
                        label: Text('Units'),
                        keyboardType: TextInputType.number,
                        initialValue: '${issue.minUnit}',
                        onChanged: (value) {
                          totalPrice.value =
                              (int.tryParse(value) ?? 0) * issue.pricePerUnit;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          final schema = Ack.int.minValue(
                            issue.minUnit,
                          ).maxValue(issue.maxUnit);
                          if (schema.validate(int.tryParse(value)).isFail) {
                            return 'Enter valid amount between ${issue.minUnit} & ${issue.maxUnit}';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ShadDivider.horizontal(),
            CustomButton(
              enabled: issue.canApply,
              width: double.infinity,
              onPressed: () async {
                final isValid = formKey.currentState?.validate() ?? false;
                if (!isValid) return;

                final confirmation = await showShadDialog<bool>(
                  context: context,
                  builder: (context) => ApplyIssueDialog(issue),
                );
                if ((confirmation ?? false) && context.mounted) {
                  context.read<AppCubit>().apply();
                }
              },
              child: Text(' Apply (Rs. ${totalPrice.value})'),
            ),
          ],
        ),
      ),
    );
  }
}

class ApplyIssueDialog extends StatelessWidget {
  const ApplyIssueDialog(this.issue, {super.key});

  final Issue issue;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context).textTheme;
    return ShadDialog.alert(
      actions: [
        ShadButton.outline(
          child: const Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        ShadButton(
          child: const Text('Confirm'),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
      description: Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: RichText(
          text: TextSpan(
            text: 'You are going to apply for ',
            style: theme.p,
            children: [TextSpan(text: issue.companyName, style: theme.table)],
          ),
        ),
      ),
    );
  }
}
