import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import 'custom_icon_button.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key, this.color, this.onTap}) : super(key: key);

  final Color? color;
  final VoidCallback? onTap;
  final String toolTipMessage = 'Geri';

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      iconData: Icons.chevron_left_outlined,
      onTap: onTap ?? () => context.pop(),
      color: color ?? context.colorScheme.onPrimary,
      toolTip: toolTipMessage,
    );
  }
}
