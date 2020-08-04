import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stackedArchitectureDemo/app/locator.dart';
import 'package:stackedArchitectureDemo/app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:device_preview/device_preview.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  Logger.level = Level.verbose;
  runApp(MyApp());
}

//For Device Preview
// void main() {
//   setupLocator();
//   runApp(DevicePreview(builder:(context)=>MyApp()));
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stacked Architecture Demo',
      initialRoute: Routes.homeViewRoute,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}

