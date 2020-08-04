
/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../home_viewmodel.dart';


class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationLayoutBuilder(
      portrait: (BuildContext context) => HomeMobilePortrait(),
      landscape: (BuildContext context) => HomeMobileLandscape(),
    );
  }
}

class HomeMobilePortrait extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.title),
          ),
          body: Center(
            child: Text(model.counter.toString()),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(model.title),
          ),
          body: Center(
            child: Text(model.counter.toString()),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}