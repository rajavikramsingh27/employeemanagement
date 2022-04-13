import 'dart:async';

import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/Bording.dart';
import 'package:employeemanagement/Views/ButtonDemo.dart';
import 'package:flutter/material.dart';

import 'package:employeemanagement/Styles/ColorStyle.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    Bording()
            )
        )
    );
    return Scaffold(
        backgroundColor: ColorStyle.primaryWhite,
        body:  Container(
            alignment: Alignment.center,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'employee',
                    style: TextStyles.textStyles_32_bold.apply(
                      color: ColorStyle.blueColor
                    )
                ),
                Text(
                  'MANAGEMENT ',
                  style: TextStyles.textStyles_16_normal.apply(
                    color: ColorStyle.secondryBlack
                  ),
                ),
              ],
            )
        )
    );
  }
}
