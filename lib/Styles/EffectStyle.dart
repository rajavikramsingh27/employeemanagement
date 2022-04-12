import 'package:flutter/material.dart';

class EffectStyle {
  static radiusCustom(double radius) {
    return BorderRadius.circular(radius);
  }
  static curveAuth(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
      ),

      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.1),
      //     blurRadius: 6,
      //     offset: Offset(0, 0), // Shadow position
      //   ),
      // ],
    );
  }
  static padding(double left, double right, double top, double bottom) {
    return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
  }
  static paddingAuthWhite() {
    return EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30);
  }

}