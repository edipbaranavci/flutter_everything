import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_everything/core/components/button/custom_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';

import '../cubit/tabs_cubit.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: BlocBuilder<TabsCubit, TabsState>(
          builder: (context, state) {
            return GridView.count(
              padding: context.paddingLow,
              crossAxisCount: 2,
              children: state.tabModelList
                      ?.map((e) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: context.lowBorderRadius,
                            ),
                            child: InkWell(
                              borderRadius: context.lowBorderRadius,
                              onTap: () {},
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(e.icon),
                                    context.emptySizedHeightBoxLow3x,
                                    Text(e.title),
                                  ]),
                            ),
                          ))
                      .toList() ??
                  [],
            );
          },
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 113, 3, 133),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Flutter Everyhing',
            style: context.textTheme.titleLarge?.copyWith(color: Colors.white),
          ),
          context.emptySizedHeightBoxLow,
          Text(
            'EKABAV',
            style: context.textTheme.bodyLarge?.copyWith(color: Colors.white54),
          ),
        ],
      ),
      actions: [
        Center(
          child: CustomIconButton(
            iconData: FontAwesomeIcons.github,
            color: Colors.white,
            onTap: () {},
            toolTip: 'GitHub',
          ),
        )
      ],
    );
  }
}
