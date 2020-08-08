part of drawer_widget;

    class _DrawerDesktop extends StatelessWidget {
      final DrawerViewModel viewModel;
    
      _DrawerDesktop(this.viewModel);
    
      @override
      Widget build(BuildContext context) {
        return ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('DrawerDesktopDesktop'),),);
      }
    }