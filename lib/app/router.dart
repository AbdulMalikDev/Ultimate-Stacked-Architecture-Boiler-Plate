import 'package:auto_route/auto_route_annotations.dart';
import 'package:stackedArchitectureDemo/ui/views/home/home_view/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeView homeViewRoute;
  
}
