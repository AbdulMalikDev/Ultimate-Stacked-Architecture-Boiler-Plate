library drawer_widget;

import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './../drawer_view_model.dart';

part './../drawer_mobile_portrait.dart';
part 'drawer_mobile_landscape.dart';
part 'drawer_tablet_portrait.dart';
part 'drawer_tablet_landscape.dart';
part 'drawer_desktop.dart';

class DrawerWidget extends StatefulWidget {
  static const routeName = '/drawer';

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DrawerViewModel>.reactive(
      viewModelBuilder: () => DrawerViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (BuildContext context) =>  OrientationLayoutBuilder(
            portrait: (BuildContext context) => _DrawerMobilePortrait(viewModel),
            //landscape: (BuildContext context) => _DrawerMobileLandscape(viewModel),
          ), 
          // tablet: (BuildContext context) =>  OrientationLayoutBuilder(
          //   portrait: (BuildContext context) => _DrawerTabletPortrait(viewModel),
          //   landscape: (BuildContext context) => _DrawerTabletLandscape(viewModel),
          // ), 
          // desktop: (BuildContext context) =>  _DrawerDesktop(viewModel),
        );
      }
    );
  }
}