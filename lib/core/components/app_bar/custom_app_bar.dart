import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../button/custom_back_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String pageTitle;
  final VoidCallback? onBackTap;
  final int? maxLines;

  CustomAppBar({
    Key? key,
    required this.pageTitle,
    this.maxLines,
    this.onBackTap,
  })  : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(child: CustomBackButton(onTap: onBackTap)),
      centerTitle: true,
      title: Text(
        pageTitle,
        maxLines: maxLines,
        style: context.textTheme.titleLarge?.copyWith(
          color: context.colorScheme.onError,
        ),
      ),
    );
  }
}
