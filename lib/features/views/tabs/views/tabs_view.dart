import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/button/custom_icon_button.dart';
import '../../../../core/extensions/open_website_extension.dart';
import '../../../../core/init/theme/colors/app_colors.dart';
import '../../../models/tabs/tab_model.dart';
import '../cubit/tabs_cubit.dart';

part '../components/card.dart';

class TabsView extends StatelessWidget {
  const TabsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TabsCubit>(
      create: (context) => TabsCubit(),
      child: const _TabsView(),
    );
  }
}

class _TabsView extends StatelessWidget {
  const _TabsView({Key? key}) : super(key: key);

  final String title = 'Flutter Everything';
  final String subTitle = 'EKABAV';
  final String gitHubButtonToolMessage = 'GitHub';
  final String gitHubUrl =
      'https://github.com/edipbaranavci/flutter_everything';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  Center buildBody() {
    return Center(
      child: BlocBuilder<TabsCubit, TabsState>(
        builder: (context, state) {
          return GridView.count(
            padding: context.paddingLow,
            crossAxisCount: 2,
            children: state.tabModelList?.map((e) => _Card(e)).toList() ?? [],
          );
        },
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.instance.mineShaft,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: context.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          context.emptySizedHeightBoxLow,
          Text(
            subTitle,
            style: context.textTheme.bodyLarge?.copyWith(color: Colors.white54),
          ),
        ],
      ),
      actions: [buildGitHubButton()],
    );
  }

  Center buildGitHubButton() {
    return Center(
      child: CustomIconButton(
        iconData: FontAwesomeIcons.github,
        color: Colors.white,
        onTap: () => gitHubUrl.openWeb,
        toolTip: gitHubButtonToolMessage,
      ),
    );
  }
}
