import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0xff56F790);
  static const secondary = Color(0xffffffff);
  static const textPrimary = Color(0xff000000);
  static const textSecondary = Color(0xffFFFFFF);
  static final blackWithOpacity = const Color(0xff000000).withOpacity(0.1);

  static const Color textFieldBackground = Color(0xffFAFAFA);
  static const Color textFieldBorder = Color(0xffF4F4F6);
}

class RecycleRushColor {
  // Green
  static const int _greenPrimaryValue = 0xff56f790;

  static const MaterialColor green = MaterialColor(_greenPrimaryValue, {
    50: Color(0xffeefff3),
    100: Color(0xffd7ffe5),
    200: Color(0xffb2ffcd),
    300: Color(0xff75ffa6),
    400: Color(_greenPrimaryValue),
    500: Color(0xFF08df56),
    600: Color(0xff00b943),
    700: Color(0xff049138),
    800: Color(0xff0a7131),
    900: Color(0xff0a5d2b),
  });

  // Purple
  static const int _purplePrimaryValue = 0xFF8e43ff;

  static const MaterialColor purple = MaterialColor(_purplePrimaryValue, {
    50: Color(0xfff9f5ff),
    100: Color(0xfff0e7ff),
    200: Color(0xffe4d3ff),
    300: Color(0xffcfb0ff),
    400: Color(0xffb17eff),
    500: Color(_purplePrimaryValue),
    600: Color(0xff7c2af3),
    700: Color(0xff6a1ad6),
    800: Color(0xff5b1aaf),
    900: Color(0xff4c178c),
  });

  // Blue
  static const int _bluePrimaryValue = 0xff3772fa;

  static const MaterialColor blue = MaterialColor(_bluePrimaryValue, {
    50: Color(0xffeff5ff),
    100: Color(0xffdae7ff),
    200: Color(0xffbed6ff),
    300: Color(0xff9ac2ff),
    400: Color(0xff5d99fd),
    500: Color(_bluePrimaryValue),
    600: Color(0xff2152ef),
    700: Color(0xff193ddc),
    800: Color(0xff1b34b2),
    900: Color(0xff1c318c),
  });

  // Yellow
  static const int _yellowPrimaryValue = 0xffFBBE0C;

  static const MaterialColor yellow = MaterialColor(_yellowPrimaryValue, {
    50: Color(0xffFFFDEA),
    100: Color(0xffFFFBC6),
    200: Color(0xffFFF687),
    300: Color(0xffFFEA49),
    400: Color(0xffFFDB1F),
    500: Color(_yellowPrimaryValue),
    600: Color(0xffDE9101),
    700: Color(0xffB86705),
    800: Color(0xff954F0B),
    900: Color(0xff7B410C),
    950: Color(0xff472101),
  });
}
