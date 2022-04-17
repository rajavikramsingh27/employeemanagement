import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/UploadeProfilePicture.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';
import '../Components/Password.dart';



class CompleteYourProfile extends StatelessWidget {
  CompleteYourProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Complete your profile',
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
                      height: 36,
                    ),
                    TextFieldLoginCustom(
                      labelText: 'Full name',
                      hintText: 'Enter your full name',
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    TextFieldLoginCustom(
                      labelText: 'Employee ID number ',
                      hintText: 'Enter your ID Number',
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Password(),
                    SizedBox(
                      height: 100,
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
                        Get.to(UploadeProfilePicture());
                      },
                    ),
                    SizedBox(height: 40,),
                  ],
                ),
              ],
            ),
          )
      )
    );
  }
}
