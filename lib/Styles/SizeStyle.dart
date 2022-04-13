import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SizeStyle {
  static final double textSize_12 = 12;
  static final double textSize_14 = 14;
  static final double textSize_16 = 16;
  static final double textSize_18 = 18;
  static final double textSize_20 = 20;
  static final double textSize_22 = 22;
  static final double textSize_24 = 24;
  static final double textSize_30 = 30;
  static final double textSize_32 = 32;

  static final double buttonHeightSubmit = 44;
  static final double buttonHeightOption = 30;

  static final double iconHeight = 30;

  static double heightFullScreen() {
      BuildContext contextScreen = Get.context!;
      final height = MediaQuery
          .of(contextScreen)
          .size
          .height - (MediaQuery
          .of(contextScreen)
          .padding
          .top + kToolbarHeight);
      return height;
  }

}
