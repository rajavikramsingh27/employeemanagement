import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';

class DemoClass extends StatelessWidget {
  const DemoClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.primaryWhite,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                Container(
                  child:  Text(
                    "Log In to your Account.",
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                )
               ],
    ),
    );
  }
}
