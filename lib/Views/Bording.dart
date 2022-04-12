import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import '../Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Views/CreateAccount.dart';



class Bording extends StatelessWidget {
  const Bording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.primaryWhite,
      body: Container(
          padding: EdgeInsets.only(left: 26, right: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    ImageStyle.bording1,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Welcome to employee management',
                style: TextStyles.textStyles_24_bold,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr',
                style: TextStyles.textStyles_16_normal,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButtonCustom(
                text: "Let's Get Started",
                colorBG: ColorStyle.blueColor,
                colorText: ColorStyle.primaryWhite,
                onTap: () {
                  Get.to(CreateAccount());
                },
              ),
              SizedBox(
                height: 40,
              ),
            ],
          )),
    );
  }
}
