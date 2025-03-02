import 'package:flutter/widgets.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title: ', style: ShadTheme.of(context).textTheme.p),
        Text(value, style: ShadTheme.of(context).textTheme.table),
      ],
    );
  }
}
