part of drawer_widget;

    class _DrawerMobilePortrait extends StatelessWidget {
      final DrawerViewModel viewModel;
      _DrawerMobilePortrait(this.viewModel);
    
      @override
      Widget build(BuildContext context) {
        return ResponsiveBuilder(builder:(context, sizingInformation) => Center(child: Text('DrawerMobilePortrait'),),);
      }
    }