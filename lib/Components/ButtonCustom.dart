import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:flutter/material.dart';
import 'package:employeemanagement/Utils/Constants.dart';
import '../Styles/TextStyles.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;
  final Color? colorText;
  final double? width;
  final double? height;


  const ElevatedButtonCustom({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.red,
    this.colorText = Colors.white,
    this.width = 200,
    this.height = 44,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorBG,
        elevation: 0,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        fixedSize: Size(width!, height!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeStyle.textSize_18),
        ),
      ),
      child: Text(
        text!,
        style: TextStyles.textStyles_16_normal.apply(
          color: colorText,
        ),
      ),
      onPressed: onTap,
    );
  }
}

class ElevatedButtonCustomBorder extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;
  final Color? colorText;
  final Color? colorBorder;
  final double? radius;
  final double? width;
  final double? height;


  const ElevatedButtonCustomBorder({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.transparent,
    this.colorText = Colors.black,
    this.colorBorder = Colors.transparent,
    this.radius = 1,
    this.width = 200,
    this.height = 44,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: colorBG,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        fixedSize: Size(width!, height!),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: colorBorder!),
            borderRadius: BorderRadius.circular(radius!),
        ),
      ),
      child: Text(
        text!,
        style: TextStyles.textStyles_14_normal.apply(
          color: colorText,
        ),
      ),
      onPressed: onTap,
    );
  }
}
