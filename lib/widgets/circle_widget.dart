
import 'package:flutter/cupertino.dart';

import '../constant/app_theme.dart';

class CircleWidget extends StatelessWidget {
  String image;
  double? size;
  Color? topBorderColor, innerBorderColor;

  CircleWidget({
    required this.image,
    this.size = 100,
    this.innerBorderColor,
    this.topBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: size,
          width: size,
          clipBehavior: Clip.antiAlias,
          padding: const EdgeInsets.all(2.5),
          decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: topBorderColor ?? AppTheme.primaryColor.withOpacity(.2)),
          child: Container(
            height: size,
            width: size,
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(2.5),
            decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: innerBorderColor ?? AppTheme.appWhite),
            child: Container(
              height: size,
              width: size,
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  height: size,
                  width: size,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}