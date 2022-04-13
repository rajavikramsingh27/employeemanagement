import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/ForgetPassword.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Components/TextFieldCustom.dart';
import '../Controllers/LoginController.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      appBar: AppBarStyleAuth(
        title:      'Login',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body:SingleChildScrollView(
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

                    TextFieldLoginCustom(
                      labelText: 'organizations email address',
                      hintText: 'Enter email address',
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    TextFieldPasswordLoginCustom(
                      // title: 'Password ',
                      controller: controller.txtControllerPassword.value,
                      hintText: 'Enter your password',
                      labelText: 'Password',


                    ),
                    SizedBox(
                      height: 46,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child:      InkWell(
                        child: Text(
                          'Forgot password?',
                          style: TextStyles.textStyles_16_normal.apply(
                              color: ColorStyle.grayColor
                          ),
                        ),
                        onTap: (){
                          Get.to(ForgetPassword());
                        },
                      )


                    ),
                  ],
                ),

                Column(
                  children: [
                    ElevatedButtonCustom(
                      text: "Next",
                      colorBG: ColorStyle.grayColor,
                      colorText: ColorStyle.primaryWhite,
                      onTap: () {
                        // Get.to(ForgetPassword());
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
