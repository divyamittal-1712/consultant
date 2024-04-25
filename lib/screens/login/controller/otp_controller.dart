import 'package:consultant_app/screens/home/bottom_navigation/home_page/homepage_screen.dart';
import 'package:consultant_app/screens/home/home.dart';
import 'package:flutter/cupertino.dart';

class OTPProvider extends ChangeNotifier{

  homeTap(BuildContext context){
    Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
  }
}