import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Controllers/VerifyCodeController.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/Profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyCodeController());

    return Scaffold(
      appBar: AppBarStyle(),
      backgroundColor: ColorStyle.primaryWhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 26, right: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 13),
            Text(
              'Verify Code',
              style: TextStyles.textStyles_24_bold,
            ),
            SizedBox(height: 26),
            Text(
              'We will send a six-digit code to your email address to johndeo@abccompany.com',
              style: TextStyles.textStyles_16_normal,
            ),
            SizedBox(height: 75),
            Container(
              height: 40,
              width: 100,
              color: Colors.yellow,
              // decoration: BoxDecoration(color: ColorStyle.redColor),
            ),
            SizedBox(height: 49),
            Container(
              child: Text(
                "0:29",
                style: TextStyles.textStyles_14_normal,
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 16),
            Container(
              child: Text(
                "Didn't receive the code? Resend Code",
                style: TextStyles.textStyles_14_normal,
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 200),
            ElevatedButtonCustom(
              text: "Verify",
              colorBG: ColorStyle.grayColor,
              colorText: ColorStyle.primaryWhite,
              onTap: () {
                Get.to(Profile());
              },
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
