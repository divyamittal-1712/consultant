import 'package:flutter/material.dart';

import '../screens/home/home.dart';
import '../screens/splash/views/splashscreen.dart';



// const initialRoute = SplashScreen.routeName;
// const initialRoute= LoginScreen.routeName;

String get initialRoute {
   String route;
  // final LoginModel? user = HiveHandler.getUser();
  // if (!(user?.userId?.isNullOrEmpty ?? true)) {
  //     if (user?.isCompleteProfile.toBool()??false) {
  //       route=  HomeNavScreen.routeName;
  //     } else {
  //       route =  SignUpProfile.routeName;
  //     }
  // }else {
    route = SplashScreen.routeName;
  // }
  // printf(route);
  return route;
}

Route<dynamic> generateRouteNew(RouteSettings settings) {
  Widget routeView;
  switch (settings.name) {
    case SplashScreen.routeName:
      routeView = const SplashScreen();
      break;
    case HomeScreen.routeName:
      routeView = const HomeScreen();
      break;


    default:
      routeView = Scaffold(body: Center(child: Text("Page not fount ${settings.name ?? ''}")));
  }

  final MaterialPageRoute<dynamic> route = MaterialPageRoute<dynamic>(settings: settings, builder: (BuildContext context) => routeView);
  return route;
}
