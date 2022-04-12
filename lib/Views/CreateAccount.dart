import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/VerifyCode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Components/TextEmployee.dart';
class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.primaryWhite,
      body: SingleChildScrollView(
        child:  Container(
            padding: EdgeInsets.only(left: 26,right: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                Text(
                  'employee',
                  style: TextStyles.textStyles_32_bold.apply(
                    color: ColorStyle.blueColor
                  ),
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
                SizedBox(height: 26,),
                Text(
                  "organization's email address",
                  style: TextStyles.textStyles_16_w600,
                ),
                // SizedBox(height: 15,),
                TextFieldCustom(
                  hintText: 'johnsondoe@nomail.com',
                ),
                SizedBox(height: 16,),
                Text(
                  "Enter your organization's email address and we will"
                      "send a six-digit code to your email address to verify"
                      "your email address. ",
                  style: TextStyles.textStyles_12_normal.apply(
                    color: ColorStyle.grayColor
                  ),
                ),
                SizedBox(height: 47,),
                Container(
                  alignment: Alignment.center ,
                  child: Text(
                    'Already have an account ? Log in',
                    style: TextStyles.textStyles_14_normal.apply(
                      color: ColorStyle.secondryBlack
                    ),

                  ),
                ),
                SizedBox(height: 180,),
                ElevatedButtonCustom(
                  text: "Next",
                  colorBG: ColorStyle.grayColor,
                  colorText: ColorStyle.primaryWhite,
                  onTap: () {
                    Get.to(VerifyCode());
                  },
                ),
                SizedBox(height: 80,),
              ],
            )
        ),
      )
    );
  }
}
