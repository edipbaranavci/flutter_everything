part of '../views/tabs_view.dart';

class _Card extends StatelessWidget {
  const _Card(this.tabModel);

  final TabModel tabModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.instance.desertStorm,
      shape: RoundedRectangleBorder(
        borderRadius: context.lowBorderRadius,
        side: BorderSide(
          color: AppColors.instance.mineShaft.withOpacity(.4),
        ),
      ),
      child: InkWell(
        borderRadius: context.lowBorderRadius,
        onTap: () => context.navigateToPage(tabModel.page),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Icon(
              tabModel.icon,
              size: context.highValue,
            ),
          ),
          context.emptySizedHeightBoxLow3x,
          Text(tabModel.title, style: context.textTheme.bodyLarge),
          context.emptySizedHeightBoxNormal,
        ]),
      ),
    );
  }
}
