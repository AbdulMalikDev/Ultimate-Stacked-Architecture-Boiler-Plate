import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedArchitectureDemo/ui/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

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
