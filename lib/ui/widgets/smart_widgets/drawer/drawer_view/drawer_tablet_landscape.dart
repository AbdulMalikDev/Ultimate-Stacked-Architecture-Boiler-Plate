part of drawer_widget;

    class _DrawerTabletLandscape extends StatelessWidget {
      final DrawerViewModel viewModel;
    
      _DrawerTabletLandscape(this.viewModel);
    
      @override
      Widget build(BuildContext context) {
        return ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('DrawerTabletLandScape'),),);
      }
    }