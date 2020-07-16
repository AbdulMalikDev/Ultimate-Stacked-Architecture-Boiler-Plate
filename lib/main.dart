import 'package:flutter/material.dart';
import 'package:stackedArchitectureDemo/app/locator.dart';
import 'package:stackedArchitectureDemo/app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stacked Architecture Demo',
       initialRoute: Routes.startUpViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}

