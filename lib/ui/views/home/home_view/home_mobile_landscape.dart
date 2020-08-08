part of home_view;

class _HomeMobileLandscape extends StatelessWidget {
  final HomeViewModel viewModel;
  _HomeMobileLandscape(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('HomeMobilePortrait')),),
    );
  }
}