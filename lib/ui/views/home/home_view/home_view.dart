library home_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import './../home_view_model.dart';

part './../home_mobile_portrait.dart';
part 'home_mobile_landscape.dart';
part 'home_tablet_portrait.dart';
part 'home_tablet_landscape.dart';
part 'home_desktop.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout.builder(
          mobile: (BuildContext context) =>  OrientationLayoutBuilder(
            portrait: (BuildContext context) => _HomeMobilePortrait(viewModel),
            //landscape: (BuildContext context) => _HomeMobileLandscape(viewModel),
          ), 
          // tablet: (BuildContext context) =>  OrientationLayoutBuilder(
          //   portrait: (BuildContext context) => _HomeTabletPortrait(viewModel),
          //   landscape: (BuildContext context) => _HomeTabletLandscape(viewModel),
          // ), 
          // desktop: (BuildContext context) =>  _HomeDesktop(viewModel),
        );
      }
    );
  }
}