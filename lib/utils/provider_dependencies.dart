import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';




class ProviderHandler {
  List<SingleChildWidget> providersList() {
    List<SingleChildWidget> independentServices = [
      // ListenableProvider<LoginProvider>(create: (_) => LoginProvider()),
      // ListenableProvider<LoginProvider>(create: (_) => LoginProvider()),


    ];
    return independentServices;
  }

}
