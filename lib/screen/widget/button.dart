import 'package:ipo_pilot/screen/widget/button_loader.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CustomButton extends ShadButton {
  CustomButton({
    super.key,
    bool isBusy = false,
    void Function()? onPressed,
    super.child,
    super.width,
    super.enabled,
  }) : super(
         leading: isBusy ? ButtonLoader() : null,
         onPressed: isBusy ? null : onPressed,
       );
}
