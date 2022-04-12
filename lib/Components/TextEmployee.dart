import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';


class TextEmployee extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? colorBG;
  final Color? colorText;

  const TextEmployee({
    Key? key,
    this.onTap,
    this.text = "Elevated Button",
    this.colorBG = Colors.red,
    this.colorText = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'employee',
              style: TextStyles.textStyles_32_bold,

            ),
            Text(
              'MANAGEMENT',
              style: TextStyles.textStyles_14_normal,

            ),
            SizedBox(height: 22,),
            Text(
              'Create an account',
              style: TextStyles.textStyles_20_bold,

            ),
          ],
        ),
      ),
    );
  }
}
