import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Views/AdminDashBord.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/ButtonCustom.dart';
import '../Components/Password.dart';
import '../Controllers/ChangePasswordController.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ChangePasswordController());

    return Scaffold(
      appBar: AppBarStyleAuth(
        title:      'Change password',
      ),
      backgroundColor: ColorStyle.primaryWhite,

     body: GetBuilder(
        init: ChangePasswordController(),
        initState: (state) {},
        builder: (authController) {
          return Obx(
                () => SingleChildScrollView(
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
                          Container(height: 30,),
                          TextFieldPasswordLoginCustom(
                            // title: 'Password ',
                            controller: controller.txtControllerOldPassword.value,
                            hintText: 'Old password ',
                            labelText: 'Old password ',
                            onChanged: (text) {
                              if (controller.txtControllerOldPassword.value.text.length >= 8) {
                                controller.listPasswordHintsSelect[0] = true;
                              } else if (controller.txtControllerOldPassword.value.text.length < 8) {
                                controller.listPasswordHintsSelect[0] = false;
                              }


                            },
                          ),
                          Container(height: 30,),
                          TextFieldPasswordLoginCustom(
                            // title: 'Password ',
                            controller: controller.txtControllerNewPassword.value,
                            hintText: 'New password ',
                            labelText: 'New password ',
                            onChanged: (text) {
                              if (controller.txtControllerNewPassword.value.text.length >= 8) {
                                controller.listPasswordHintsSelect[0] = true;
                              } else if (controller.txtControllerNewPassword.value.text.length < 8) {
                                controller.listPasswordHintsSelect[0] = false;
                              }


                            },
                          ),
                          Container(height: 30,),
                          Password(),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButtonCustom(
                            text: "Change password",
                            colorBG: ColorStyle.grayColor,
                            colorText: ColorStyle.primaryWhite,
                            width: MediaQuery.of(context).size.width,
                            onTap: () {
                              Get.to(AdminDashBord());
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),

                        ],
                      ),
                      // Column(
                      //   children: [
                      //     ElevatedButtonCustom(
                      //       text: "Change password",
                      //       colorBG: ColorStyle.blueColor,
                      //       colorText: ColorStyle.primaryWhite,
                      //       onTap: () {
                      //         Get.to(AdminDashBord());
                      //       },
                      //     ),
                      //     SizedBox(height: 40,),
                      //   ],
                      // ),
                    ],
                  ),
                )
            ),
          );
        },
      ),
    );
  }
}
