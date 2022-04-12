import 'package:flutter/material.dart';

class ColorStyle{
  static final Color primaryWhite = Colors.white;
  static final Color secondryBlack =  Colors.black;
  static final Color blueColor= hex("#0282C5");
  static final Color blueLight =  hex("#40DDFE");
  static final Color blueDark =  hex("#0136F9 ");
  static final Color grayColor = hex("#BEC6CA");
  static final Color yellowLight =  hex("#FFE9A9");
  static final Color yellowDark =  hex("#FFCC00");
  static final Color greenColor =  hex("#31C76E ");
  static final Color redColor =  hex("#FF955E  ");







  static Color hex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

}