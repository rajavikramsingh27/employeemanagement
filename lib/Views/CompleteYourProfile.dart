import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Controllers/CompleteYourProfileController.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/UploadeProfilePicture.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/AppBarStyle.dart';

class CompleteYourProfile extends StatelessWidget {
  const CompleteYourProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Complete your profile',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: GetBuilder(
        init: ProfileController(),
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
                          TextFieldPasswordLoginCustom(
                            // title: 'Password ',
                            controller: controller.txtControllerPassword.value,
                            hintText: 'Enter your Password',
                            labelText: 'Password',
                            onChanged: (text) {
                              if (controller.txtControllerPassword.value.text.length >= 8) {
                                controller.listPasswordHintsSelect[0] = true;
                              } else if (controller.txtControllerPassword.value.text.length < 8) {
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
                            text: "Next",
                            colorBG: ColorStyle.grayColor,
                            colorText: ColorStyle.primaryWhite,
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
            ),
          );
        },
      ),
    );
  }
}
