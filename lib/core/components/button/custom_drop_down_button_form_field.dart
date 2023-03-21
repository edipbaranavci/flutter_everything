import 'package:flutter/material.dart';

import '../../init/theme/colors/app_colors.dart';

class CustomDropDownButtonFormField<T> extends StatelessWidget {
  const CustomDropDownButtonFormField({
    super.key,
    required this.onChanged,
    required this.items,
    required this.value,
    this.borderColor,
  });
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final T value;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T?>(
      decoration: InputDecoration(
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        disabledBorder: _border,
      ),
      value: value,
      items: items,
      onChanged: onChanged,
    );
  }

  OutlineInputBorder get _border => OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? AppColors.instance.mineShaft,
        ),
      );
}
