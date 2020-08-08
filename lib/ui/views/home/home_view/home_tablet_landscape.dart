part of home_view;

class _HomeTabletLandscape extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeTabletLandscape(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('HomeTabletPortrait')),),
    );
  }
}