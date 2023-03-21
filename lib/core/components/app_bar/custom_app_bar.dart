import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

import '../../extensions/open_website_extension.dart';
import '../../init/theme/colors/app_colors.dart';
import '../button/custom_back_button.dart';
import '../button/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String pageTitle;
  final VoidCallback? onBackTap;
  final int? maxLines;
  final String url;

  CustomAppBar({
    Key? key,
    required this.pageTitle,
    required this.url,
    this.maxLines,
    this.onBackTap,
  })  : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Center(child: CustomBackButton(onTap: onBackTap)),
      centerTitle: true,
      actions: [buildOpenWebsiteButton()],
      title: buildTitle(context),
    );
  }

  Text buildTitle(BuildContext context) {
    return Text(
      pageTitle,
      maxLines: maxLines,
      style: context.textTheme.titleLarge?.copyWith(
        color: context.colorScheme.onError,
      ),
    );
  }

  CustomIconButton buildOpenWebsiteButton() {
    return CustomIconButton(
      iconData: FontAwesomeIcons.github,
      color: AppColors.instance.white,
      toolTip: 'Kodu Aç',
      onTap: () => url.openWeb,
    );
  }
}
