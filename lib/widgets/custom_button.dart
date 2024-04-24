
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/app_theme.dart';
import '../utils/size_config.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onPressed;
  String title;
  Color? color;


  CustomButton({Key? key, required this.onPressed, required this.title,this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color??AppTheme.appYellow,
      height: 50,
      minWidth: SizeConfig.width * 100,
      splashColor: AppTheme.accentColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: onPressed,
      child: Text(
        title,
        style:  TextStyle(
            color: AppTheme.appBlack, fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
