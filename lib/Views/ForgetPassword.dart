import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/VerifyCode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/TextFieldCustom.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyleAuth(
        title:      'Forgot password',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 26, right: 26),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: SizeStyle.heightFullScreen()
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),

                    Text(
                     "Enter your organization's email address and we will"
                     "send a six-digit code to your email address to verify "
                     "your email address." ,
                      style: TextStyles.textStyles_14_normal.apply(
                        color: ColorStyle.grayColor
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    TextFieldLoginCustom(
                      labelText: 'organizations email address',
                      hintText: 'Enter email address',
                    ),
                  ],
                ),

                Column(
                  children: [
                    ElevatedButtonCustom(
                      text: "Next",
                      colorBG: ColorStyle.grayColor,
                      colorText: ColorStyle.primaryWhite,
                      width: MediaQuery.of(context).size.width,
                      onTap: () {
                        Get.to(VerifyCode());
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
