part of '../views/tabs_view.dart';

class _Card extends StatelessWidget {
  const _Card(this.tabModel);

  final TabModel tabModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: context.lowBorderRadius,
      ),
      child: InkWell(
        borderRadius: context.lowBorderRadius,
        onTap: () => context.navigateToPage(tabModel.page),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(tabModel.icon),
          context.emptySizedHeightBoxLow3x,
          Text(tabModel.title),
        ]),
      ),
    );
  }
}
