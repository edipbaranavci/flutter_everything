import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onTap;
  final Color? color;
  final double? size;
  final String? toolTip;
  const CustomIconButton({
    Key? key,
    required this.iconData,
    required this.onTap,
    this.color,
    this.size,
    this.toolTip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: context.lowBorderRadius,
      onTap: onTap,
      child: Tooltip(
        message: toolTip ?? '',
        padding: context.paddingLow,
        child: Padding(
          padding: context.paddingLow,
          child: Icon(iconData, size: size, color: color),
        ),
      ),
    );
  }
}
