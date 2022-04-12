import 'dart:async';

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
                  style: TextStyle(
                      fontSize: 37,

                      fontFamily: 'Axiforma',
                      fontWeight: FontWeight.bold,
                      color: ColorStyle.blueColor
                  ),
                ),
                Text(
                  'management ',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Axiforma',
                      // fontWeight: FontWeight.l,
                      color: ColorStyle.blueColor
                  ),
                ),
              ],
            )
        )
    );
  }
}
