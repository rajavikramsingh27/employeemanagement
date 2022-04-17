import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Views/AdminDashBord.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/ButtonCustom.dart';
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
                          TextFieldPasswordLoginCustom(
                            // title: 'Password ',
                            controller: controller.txtControllerConfirmPassword.value,
                            hintText: 'Confirm password ',
                            labelText: 'Confirm password ',
                            onChanged: (text) {
                              if (controller.txtControllerConfirmPassword.value.text.length >= 8) {
                                controller.listPasswordHintsSelect[0] = true;
                              } else if (controller.txtControllerConfirmPassword.value.text.length < 8) {
                                controller.listPasswordHintsSelect[0] = false;
                              }


                            },
                          ),
                          SizedBox(
                            height: 26,
                          ),
                          Text(
                            'Password must be ',
                            style: TextStyles.textStyles_16_w600,
                          ),
                          Wrap(
                            children: [
                              ElevatedButtonCustom(
                                text: controller.listPasswordHints[0],
                                colorBG: controller.listPasswordHintsSelect[0]
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor,
                                colorText: ColorStyle.primaryWhite,
                                width: MediaQuery.of(context).size.width,
                                onTap: () {
                                  controller.listPasswordHintsSelect[0] =
                                  !controller.listPasswordHintsSelect[0];
                                },
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButtonCustom(
                                text: controller.listPasswordHints[1],
                                colorBG: controller.listPasswordHintsSelect[1]
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor,
                                colorText: ColorStyle.primaryWhite,
                                onTap: () {
                                  controller.listPasswordHintsSelect[1] =
                                  !controller.listPasswordHintsSelect[1];
                                },
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButtonCustom(
                                text: controller.listPasswordHints[2],
                                colorBG: controller.listPasswordHintsSelect[2]
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor,
                                colorText: ColorStyle.primaryWhite,
                                onTap: () {
                                  controller.listPasswordHintsSelect[2] =
                                  !controller.listPasswordHintsSelect[2];
                                },
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButtonCustom(
                                text: controller.listPasswordHints[3],
                                colorBG: controller.listPasswordHintsSelect[3]
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor,
                                colorText: ColorStyle.primaryWhite,
                                onTap: () {
                                  controller.listPasswordHintsSelect[3] =
                                  !controller.listPasswordHintsSelect[3];
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButtonCustom(
                            text: "Change password",
                            colorBG: ColorStyle.blueColor,
                            colorText: ColorStyle.primaryWhite,
                            onTap: () {
                              Get.to(AdminDashBord());
                            },
                          ),
                          SizedBox(height: 40,),
                        ],
                      ),
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
