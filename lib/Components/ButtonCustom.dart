import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:flutter/material.dart';
import 'package:employeemanagement/Utils/Constants.dart';
import '../Styles/TextStyles.dart';


class ElevatedButtonCustom extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;
  final Color? colorText;

  const ElevatedButtonCustom({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.red,
    this.colorText = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colorBG,
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        elevation: 0,
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),

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

class ElevatedButtonWithoutSizeCustom extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;
  final Color? colorText;

  const ElevatedButtonWithoutSizeCustom({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.red,
    this.colorText = Colors.white,
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

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeStyle.textSize_14),
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
