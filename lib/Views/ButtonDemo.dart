import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:flutter/material.dart';
import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Components/AppBarStyle.dart';



class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.blueColor,
      appBar: AppBarStyleAuth(),
      body :Container(
        padding: EdgeInsets.only(
          left: 16, right: 16, top: 16
        ),
        child: ElevatedButtonWithoutSizeCustom(
          text: "Let's get started",
          colorBG: ColorStyle.blueColor,
          colorText: ColorStyle.primaryWhite,
          onTap: () {

          },
        ),
      )
    );
  }
}
