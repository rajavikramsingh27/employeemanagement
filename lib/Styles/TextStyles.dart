import 'package:flutter/material.dart';
import '../Utils/Constants.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/SizeStyle.dart';

class TextStyles {
  static String kFontFamily = "Axiforma";

  static TextStyle get textStyles_24_bold => TextStyle(
        fontSize: SizeStyle.textSize_24,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyles_16_normal => TextStyle(
        fontSize: SizeStyle.textSize_16,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get textStyles_32_bold => TextStyle(
        fontSize: SizeStyle.textSize_32,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyles_14_normal => TextStyle(
        fontSize: SizeStyle.textSize_14,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get textStyles_20_bold => TextStyle(
        fontSize: SizeStyle.textSize_20,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyles_16_w600 => TextStyle(
        fontSize: SizeStyle.textSize_16,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get textStyles_12_normal => TextStyle(
        fontSize: SizeStyle.textSize_12,
        fontFamily: kFontFamily,
        fontWeight: FontWeight.normal,
      );
}
