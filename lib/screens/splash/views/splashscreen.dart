import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constant/app_assets.dart';
import '../../../constant/app_theme.dart';
import '../../../utils/shared_pre.dart';
import '../../../utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash_screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) async {
      String storedText = SharedPre.getStringValue(SharedPre.userPhone);

      // if(storedText.isNotEmpty){
      //   Navigator.of(context).pushReplacementNamed(HomeActivity.routeName);
      // }else{
        Navigator.of(context).pushReplacementNamed(SplashScreen.routeName);
      // }
    });

  }


  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: AppTheme.appYellow,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppAssets.appLogo,
              width:  200,
              // width:  cc.animation!.value * 200,
              height:  200,
              // height: cc.animation!.value * 200,
            ),
          ),
        ],
      ), // AppBar
    );
  }
}