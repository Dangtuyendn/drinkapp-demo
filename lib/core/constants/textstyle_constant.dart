import 'package:drinkapp/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles(this.context);
  BuildContext? context;
  static const TextStyle defaultStyle = TextStyle(
      fontSize: 14,
      color: ColorPalette.textColorNone,
      fontWeight: FontWeight.w400,
      height: 16 / 14);
}

extension ExtendedTextStyle on TextStyle {
  TextStyle get blue {
    return copyWith(
        fontSize: 18,
        height: 18 / 16,
        fontWeight: FontWeight.w500,
        color: ColorPalette.textColorBlue);
  }

  TextStyle get textheader {
    return copyWith(
        fontSize: 24,
        height: 24 / 22,
        fontWeight: FontWeight.w700,
        color: ColorPalette.textColorNone);
  }

  TextStyle get textname {
    return copyWith(
        fontSize: 14,
        height: 14 / 12,
        fontWeight: FontWeight.normal,
        color: ColorPalette.textColorNone);
  }

  TextStyle get text16 {
    return copyWith(
        fontSize: 16,
        height: 16 / 14,
        fontWeight: FontWeight.normal,
        color: ColorPalette.textColorNone);
  }
}
