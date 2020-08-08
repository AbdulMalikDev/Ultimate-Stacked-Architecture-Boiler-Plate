part of drawer_widget;

    class _DrawerTabletPortrait extends StatelessWidget {
      final DrawerViewModel viewModel;
    
      _DrawerTabletPortrait(this.viewModel);
    
      @override
      Widget build(BuildContext context) {
        return ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('DrawerTabletPortrait'),),);
      }
    }