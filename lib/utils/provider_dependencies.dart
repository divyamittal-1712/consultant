import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../screens/splash/controller/splash_controller.dart';

class ProviderHandler {
  List<SingleChildWidget> providersList() {
    List<SingleChildWidget> independentServices = [
      ListenableProvider<SplashProvider>(create: (_) => SplashProvider()),

    ];
    return independentServices;
  }

}
