import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.primaryWhite,
      body:  SingleChildScrollView(
        child:  Container(
            padding: EdgeInsets.only(left: 26,right: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                Text(
                  'Complete your profile',
                  style: TextStyles.textStyles_24_bold,

                ),
                TextFieldCustom(
                  title: 'EMAIL OR PHONE NUMBER',
                  hintText: 'johnsondoe@nomail.com',

                ),
                TextFieldCustom(
                  hintText: 'Enter your full name',
                ),
                SizedBox(height: 100,),
                ElevatedButtonCustom(
                  text: "Next",
                  colorBG: ColorStyle.grayColor,
                  colorText: ColorStyle.primaryWhite,
                  onTap: () {
                    // Get.to(VerifyCode());
                  },
                ),

              ],
            )
        ),
      ),
    );
  }
}
