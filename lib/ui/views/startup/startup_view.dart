import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedArchitectureDemo/ui/views/startup/startup_viewmodel.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text("StartUp View"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.navigateToHome(),
          ),
        );
      },
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
