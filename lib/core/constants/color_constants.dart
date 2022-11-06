import 'package:flutter/material.dart';

class ColorPalette {
  static const Color backgroundColor = Color(0xff232323);
  static const Color backgroundColorSecond = Color(0xff4D4D4D);
  static const Color borderColor = Color(0xff08FF7E);
  static const Color borderColor1 = Color(0xffEE3137);
  static const Color textColorNone = Color(0xffFFFFFF);
  static const Color textColorBlue = Color(0xff6DCAC4);
  static const Color circleColor0 = Color(0xffEF6C00);
  static const Color circleColor100 = Color(0xffFFD600);
  static const Color circleColornone = Color(0xffFFFFFF);
  static const Color backgroundColorCircle = Color(0xffABABAB);
  static const Color borderColorCircle = Color(0xff808080);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        ColorPalette.backgroundColor,
        ColorPalette.backgroundColorSecond
      ]);

  static const Gradient boderCircle = LinearGradient(
      colors: [ColorPalette.circleColor0, ColorPalette.circleColor100]);
}
