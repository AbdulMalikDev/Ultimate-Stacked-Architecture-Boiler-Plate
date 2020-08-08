part of drawer_widget;

class _DrawerMobileLandscape extends StatelessWidget {
  final DrawerViewModel viewModel;
  _DrawerMobileLandscape(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('DrawerMobileLandScape'),),);
    
  }
}