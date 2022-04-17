import 'package:employeemanagement/Components/Password.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Styles/SizeStyle.dart';
import '../Components/ButtonCustom.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/CreateNewPasswordController.dart';


class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarStyleAuth(
        title:   'Create new password',
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
                Password(),
                Column(
                  children: [
                    ElevatedButtonCustom(
                      text: "Save password",
                      colorBG: ColorStyle.grayColor,
                      colorText: ColorStyle.primaryWhite,
                      width: MediaQuery.of(context).size.width,
                      onTap: () {
                        // Get.to(UploadeProfilePicture());
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
