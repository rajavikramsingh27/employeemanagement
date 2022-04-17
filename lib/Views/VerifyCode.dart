import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Controllers/VerifyCodeController.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/EffectStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/CreateNewPassword.dart';
import 'package:employeemanagement/Views/CompleteYourProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Components/TextFieldCustom.dart';


class VerifyCode extends StatelessWidget {
  VerifyCode({Key? key}) : super(key: key);
  final controller = Get.put(VerifyCodeController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBarStyleAuth(
        title:   'Verify Code',
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
                  SizedBox(height: 26),
                  Text(
                    'We will send a six-digit code to your email address to johndeo@abccompany.com',
                    style: TextStyles.textStyles_16_normal,
                  ),
                  SizedBox(height: 75),
                  Row(
                    children: [
                      Expanded(
                          child:  TextFieldOTP(
                            controller:
                            controller.txtOTP_First.value,
                            focusNode: controller.focusFirst,
                            onChanged: (text) {
                              if (controller.txtOTP_First.value.text.length > 0)
                                controller.focusSecond
                                    .requestFocus();
                            },
                          ),),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFieldOTP(
                            controller:
                            controller.txtOTP_Second.value,
                            focusNode: controller.focusSecond,
                            onChanged: (text) {
                              print("text text text text text text text text text text text ");
                              print(text);
                              if (controller.txtOTP_Second.value.text.length > 0)
                                controller.focusThird
                                    .requestFocus();
                              else if (controller.txtOTP_Second.value.text == '')
                                controller.focusFirst
                                    .requestFocus();
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFieldOTP(
                            controller:
                            controller.txtOTP_Third.value,
                            focusNode: controller.focusThird,
                            onChanged: (text) {
                              if (controller.txtOTP_Third.value.text.length > 0)
                                controller.focusFourth
                                    .requestFocus();
                              else if (controller.txtOTP_Third.value.text == '')
                                controller.focusSecond
                                    .requestFocus();
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFieldOTP(
                            controller:
                            controller.txtOTP_Fourth.value,
                            focusNode: controller.focusFourth,
                            onChanged: (text) {
                              if (controller.txtOTP_Fourth.value.text.length > 0)
                                controller.focusFive
                                    .requestFocus();
                              // debugPrint("Hello");
                              else if (controller.txtOTP_Fourth.value.text == '')
                                controller.focusThird
                                    .requestFocus();
                              // else
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFieldOTP(
                            controller:
                            controller.txtOTP_Five.value,
                            focusNode: controller.focusFive,
                            onChanged: (text) {
                              if (controller.txtOTP_Five.value.text.length > 0)
                                controller.focusSix
                                    .requestFocus();
                              else if (controller.txtOTP_Five.value.text == '')
                                controller.focusFourth
                                    .requestFocus();
                            },
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFieldOTP(
                            controller:
                            controller.txtOTP_Six.value,
                            focusNode: controller.focusSix,
                            onChanged: (text) {
                              if (controller.txtOTP_Six.value.text.length > 0)
                                // controller.focusSix
                                //     .requestFocus();
                                print("OTP is filled");
                              else if (controller.txtOTP_Six.value.text == '')
                                controller.focusFive
                                    .requestFocus();
                            },
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 49),
                  Container(
                    child: Text(
                      "0:29",
                      style: TextStyles.textStyles_14_normal,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Didn't receive the code? ",
                          style: TextStyles.textStyles_14_normal,
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        child: Text(
                          " Resend Code",
                          style: TextStyles.textStyles_14_normal.apply(
                              color: ColorStyle.grayColor
                          ),
                        ),
                        // alignment: Alignment.center,
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                children: [
                  ElevatedButtonCustom(
                    text: "Verify",
                    colorBG: ColorStyle.grayColor,
                    colorText: ColorStyle.primaryWhite,
                    width: MediaQuery.of(context).size.width,
                    onTap: () {
                      Get.to(CreateNewPassword());
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
