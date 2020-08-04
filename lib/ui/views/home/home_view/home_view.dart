import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedArchitectureDemo/ui/views/home/home_view/home_view_mobile.dart';
import 'package:stackedArchitectureDemo/ui/views/home/home_view/home_view_tablet.dart';
import 'package:stackedArchitectureDemo/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => HomeViewMobile(),
      tablet: (BuildContext context) => HomeTablet(),
    );
  }
}
