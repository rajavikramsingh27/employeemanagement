import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PermissionScreen extends StatelessWidget {
  const PermissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleAuth(
          title:   'Following permissions',
        ),
      backgroundColor: ColorStyle.primaryWhite,
      body: Container(
        padding: EdgeInsets.only(left: 16,right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),

                Row(
                  children: [
                  Image.asset(ImageStyle.location,
                  height: 50 , width: 50,),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location permission',
                          style: TextStyles.textStyles_12_normal.apply(
                            color: ColorStyle.secondryBlack
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'You need to tell us where you are at ',
                          style: TextStyles.textStyles_12_normal.apply(
                              color: ColorStyle.grayColor
                          ),
                        ),
                        Text(
                          'the time you clock in and out. ',
                          style: TextStyles.textStyles_12_normal.apply(
                              color: ColorStyle.grayColor
                          ),
                        ),
                      ],
                    )
                ]
                ),
                SizedBox(height: 46),
                Row(

                    children: [
                      Image.asset(ImageStyle.notification,
                        height: 50 , width: 50,),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notifications permission ',
                            style: TextStyles.textStyles_12_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'All notifications were sent at the right time.',
                            style: TextStyles.textStyles_12_normal.apply(
                                color: ColorStyle.grayColor
                            ),
                          ),

                        ],
                      )
                    ]
                ),
                SizedBox(height: 219),
              ],
            ),

            Column(
              children: [
                ElevatedButtonCustom(
                  text: "Grant permission",
                  colorBG: ColorStyle.blueColor,
                  colorText: ColorStyle.primaryWhite,
                  width: MediaQuery.of(context).size.width,
                  onTap: () {
                    Get.to(Login());
                  },
                ),
                SizedBox(height: 13),
                ElevatedButtonCustom(
                  text: "Deny permission",
                  colorBG: ColorStyle.grayColor,
                  colorText: ColorStyle.primaryWhite,
                  width: MediaQuery.of(context).size.width,
                  onTap: () {
                    Get.to(Login());
                  },
                ),
                SizedBox(height:40),
              ],
            ),
          ],
        ),
      )
    );
  }
}
