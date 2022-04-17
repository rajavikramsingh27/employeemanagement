import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/CompleteYourProfile.dart';
import 'package:employeemanagement/Views/VerifyCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:employeemanagement/Components/TextFieldCustom.dart';
import 'package:employeemanagement/Components/TextEmployee.dart';
import '../Components/AppBarStyle.dart';
import '../Controllers/CreateAccountController.dart';
import '../Styles/SizeStyle.dart';
import '../Views/Login.dart';


class CreateAccount extends StatelessWidget {
   CreateAccount({Key? key}) : super(key: key);
  final controller = Get.put(CreateAccountController());

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(CreateAccountController());

    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Create an account',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: GetBuilder<CreateAccountController>(
        init: CreateAccountController(),
        initState: (state) {
          controller.reset();
        },
        builder: (authController) {
          return Obx(
                () => SingleChildScrollView(
                  padding: EdgeInsets.only(left: 26,right: 26),
                  child:  Container(
                    constraints: BoxConstraints(
                      maxHeight:SizeStyle.heightFullScreen(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 30,),
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
                            SizedBox(height: 26,),
                            TextFieldLoginCustom(
                              controller: controller.txtControllerEmail.value,
                              labelText: 'organizations email address',
                              hintText: 'Enter email address',
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
                              child: InkWell(
                                child: Text(
                                  'Already have an account ? Log in',
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.secondryBlack
                                  ),
                                ),
                                onTap: () {
                                  Get.to(Login());
                                },
                              ),
                            ),
                            SizedBox(height: 180,),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButtonCustom(
                              text: "Next",
                              colorBG: (controller.txtControllerEmail.value.text.isEmpty) ? ColorStyle.grayColor : ColorStyle.blueColor,
                              colorText: ColorStyle.primaryWhite,
                              width: MediaQuery.of(context).size.width,
                              onTap: () {
                                Get.to(CompleteYourProfile());
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
