import 'package:auto_route/auto_route_annotations.dart';
import 'package:stackedArchitectureDemo/ui/views/home/home_view.dart';
import 'package:stackedArchitectureDemo/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartUpView startUpViewRoute;
  
  HomeView homeViewRoute;
}
