part of home_view;

class _HomeMobilePortrait extends StatelessWidget {
  final HomeViewModel viewModel;
  _HomeMobilePortrait(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('HomeMobilePortrait')),),
    );
  }
}