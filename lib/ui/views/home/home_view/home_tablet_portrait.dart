part of home_view;

class _HomeTabletPortrait extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeTabletPortrait(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('HomeTabletPortrait')),),
    );
  }
}