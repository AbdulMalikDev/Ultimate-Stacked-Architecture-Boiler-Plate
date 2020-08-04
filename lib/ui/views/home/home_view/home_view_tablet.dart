import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import '../home_viewmodel.dart';


class HomeTablet extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  HomeTablet({Key key}) : super(key: key);

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