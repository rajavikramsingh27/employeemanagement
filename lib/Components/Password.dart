import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'ButtonCustom.dart';
import 'TextFieldCustom.dart';
import '../Controllers/CompleteYourProfileController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/SizeStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/UploadeProfilePicture.dart';
import 'AppBarStyle.dart';

class Password extends StatelessWidget {
  Password({Key? key}) : super(key: key);

  final controller = Get.put(CompleteYourProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: CompleteYourProfileController(),
        initState: (state) {},
        builder: (authController) {
          return Obx(() => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldPasswordLoginCustom(
                // title: 'Password ',
                controller: controller.txtControllerPassword.value,
                hintText: 'Enter your Password',
                labelText: 'Password',
                onChanged: (text) {
                  if (controller.txtControllerPassword.value.text.length >= 8) {
                    controller.listPasswordHintsSelect[0] = true;
                  } else if (controller
                      .txtControllerPassword.value.text.length <
                      8) {
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
                runSpacing: 10,
                children: [
                  ElevatedButtonCustom(
                    text: controller.listPasswordHints[0],
                    colorBG: controller.listPasswordHintsSelect[0]
                        ? ColorStyle.blueColor
                        : ColorStyle.grayColor,
                    colorText: ColorStyle.primaryWhite,
                    width: double.infinity,
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
                    width: double.infinity,
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
                    width: double.infinity,
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
                    width: double.infinity,
                    onTap: () {
                      controller.listPasswordHintsSelect[3] =
                      !controller.listPasswordHintsSelect[3];
                    },
                  ),
                ],
              ),
            ],
          ));
        });
  }
}
