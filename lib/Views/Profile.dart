import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/ProfileController.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ProfileController());


    return Scaffold(
        appBar: AppBarStyleAuth(
          title:      'Profile',
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body:Obx(()=> Container(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 16,right: 16),
                height: 90,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Image.asset(
                            ImageStyle.person,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John deo',
                                style: TextStyles.textStyles_16_bold.apply(
                                    color: ColorStyle.secondryBlack
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'johndeo@abccompany.com',
                                style: TextStyles.textStyles_12_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyles.textStyles_12_normal.apply(
                          color: ColorStyle.blueColor
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: ColorStyle.blueLight,
                  borderRadius:BorderRadius.circular(18),
                ),
              ),

              Container(
                width:double.infinity,
                height:MediaQuery.of(context).size.height-168,
                // color: Colors.yellow,
                child: ListView.builder(
                    itemCount:controller.listProfileSelect.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 13),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 60,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // 'My all task ',
                                        controller.listProfileSelect[index],
                                        style: TextStyles.textStyles_12_normal.apply(
                                            color: ColorStyle.secondryBlack
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        // 'My all task ',
                                        controller.listProfile[index],
                                        style: TextStyles.textStyles_12_normal.apply(
                                            color: ColorStyle.grayColor
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  child:  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    // size: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Container(
                              height: 1,
                              width: double.infinity,
                              color: ColorStyle.grayColor,
                            ),

                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(18),
                        ),
                      );
                    }),
              ),






            ],
          ),
        ))

    );
  }
}
