import 'package:consultant_app/utils/font_family.dart';
import 'package:flutter/material.dart';

import '../constant/app_theme.dart';

class NormalText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String text;
  TextDecoration? textDecoration;
  NormalText({
    this.size,
    this.maxLine,


    this.lineHeight,
    this.textDecoration,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,

      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
        height: lineHeight??1.3,
          decoration: textDecoration,
          color: color ?? Colors.black,
          fontFamily: FontFamily.Manrope,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: size ?? 16+5),
    );
  }
}

class BigText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String text;

  BigText({
    this.size,
    this.maxLine,
    this.lineHeight,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,
      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
        height: lineHeight??1.3,
          color: color ?? Colors.black,
          fontFamily: FontFamily.Manrope,
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: size ?? 22+5),
    );
  }
}

class SmallText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextDecoration? textDecoration;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String text;

  SmallText({
    this.size,
    this.maxLine,
    this.lineHeight,
    this.textDecoration,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,
      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
        height: lineHeight??1.3,
          decoration: textDecoration,
          color: color ?? Colors.grey,
          fontFamily: FontFamily.Manrope,
          fontWeight: fontWeight ?? FontWeight.w300,
          fontSize: size ?? 14+5),
    );
  }
}

class SettingText extends StatelessWidget {
  double? size, lineHeight;
  int? maxLine;
  TextOverflow? textOverflow;
  bool? softWarp;
  Color? color;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  String text;
  TextDecoration? textDecoration;
  SettingText({
    this.size,
    this.maxLine,


    this.lineHeight,
    this.textDecoration,
    this.textOverflow,
    this.softWarp,
    this.textAlign,
    this.color,
    this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLine,

      softWrap: softWarp,
      overflow: textOverflow,
      style: TextStyle(
          height: lineHeight??1.3,
          decoration: textDecoration,
          color: color ?? AppTheme.tileTextColor,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontSize: size ?? 24+5),
    );
  }
}
