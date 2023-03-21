import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/components/button/custom_drop_down_button_form_field.dart';
import '../cubit/fonts_cubit.dart';
import 'package:kartal/kartal.dart';

import '../../../../../../core/components/app_bar/custom_app_bar.dart';

class FontsView extends StatelessWidget {
  const FontsView({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FontsCubit>(
      create: (context) => FontsCubit(),
      child: _FontsView(url: url),
    );
  }
}

class _FontsView extends StatelessWidget {
  const _FontsView({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(pageTitle: 'Fontlar', url: url),
      body: SingleChildScrollView(
        padding: context.paddingLow,
        child: BlocBuilder<FontsCubit, FontsState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildColorsRow(state.colorList, context),
                buildTextStylesColumn(context, state.textColor),
                context.emptySizedHeightBoxLow3x,
                CustomDropDownButtonFormField<TextAlign>(
                  value: state.textAlign ?? TextAlign.values.first,
                  borderColor: state.textColor,
                  items: TextAlign.values
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              'TextAlign: ${e.name}',
                              style: context.textTheme.bodyLarge?.copyWith(
                                color: state.textColor,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) =>
                      context.read<FontsCubit>().changeTextAlign(value),
                ),
                context.emptySizedHeightBoxLow,
                Text(
                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry.
Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                  textAlign: state.textAlign,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: state.textColor,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Column buildTextStylesColumn(BuildContext context, Color? color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Display Large',
          style: context.textTheme.displayLarge?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Display Medium',
          style: context.textTheme.displayMedium?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Display Small',
          style: context.textTheme.displaySmall?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Headline Large',
          style: context.textTheme.headlineLarge?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Headline Medium',
          style: context.textTheme.headlineMedium?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Headline Small',
          style: context.textTheme.headlineSmall?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Title Large',
          style: context.textTheme.titleLarge?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Title Medium',
          style: context.textTheme.titleMedium?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Title Small',
          style: context.textTheme.titleSmall?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Body Large',
          style: context.textTheme.bodyLarge?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Body Medium',
          style: context.textTheme.bodyMedium?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Body Small',
          style: context.textTheme.bodySmall?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Label Large',
          style: context.textTheme.labelLarge?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Label Medium',
          style: context.textTheme.labelMedium?.copyWith(
            color: color,
          ),
        ),
        Text(
          'Label Small',
          style: context.textTheme.labelSmall?.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }

  Widget buildColorsRow(List<Color>? colorList, BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: colorList
                ?.map((e) => InkWell(
                    onTap: () => context.read<FontsCubit>().changeTextColor(e),
                    child: Tooltip(
                      message: e.toString(),
                      child: Container(
                        color: e,
                        height: context.mediumValue * 1.5,
                        width: context.mediumValue * 1.5,
                      ),
                    )))
                .toList() ??
            [],
      ),
    );
  }
}
