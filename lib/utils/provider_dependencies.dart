import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../screens/home/bottom_navigation/home_page/provider/homepage_provider.dart';
import '../screens/home/provider/provider.dart';
import '../screens/splash/controller/splash_controller.dart';

class ProviderHandler {
  List<SingleChildWidget> providersList() {
    List<SingleChildWidget> independentServices = [
      ListenableProvider<SplashProvider>(create: (_) => SplashProvider()),
      ListenableProvider<HomeProvider>(create: (_) => HomeProvider()),
      ListenableProvider<HomePageProvider>(create: (_) => HomePageProvider()),

    ];
    return independentServices;
  }

}
