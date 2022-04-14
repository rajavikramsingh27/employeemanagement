import 'package:employeemanagement/Components/AppBarHomeScreen.dart';
import 'package:employeemanagement/Controllers/HomeScreenController.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/ApplyLeave.dart';
import 'package:employeemanagement/Views/AttendanceReports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/ButtonCustom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    return Scaffold(
        backgroundColor: ColorStyle.primaryWhite,
        appBar: AppBarStyleHome(),

        body: GetBuilder(
          init: HomeScreenController(),
          initState: (state) {
            controller.reset();

            print(controller.yesandno.value);
          },
          builder: (authController) {
            return Obx(() =>     SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20,top: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                     InkWell(
                       child:  Column(
                         children: [
                           Text(
                             'My attendance',
                             style: TextStyles.textStyles_20_bold.apply(
                                 color: (controller.yesandno.value == 0)
                                     ? ColorStyle.blueColor
                                     : ColorStyle.secondryBlack
                             ),

                           ),
                           SizedBox(width: 5,),
                           Container(
                             width: 8,
                             height: 8,
                             decoration: BoxDecoration(
                                 color: (   controller.yesandno.value == 0)
                                     ? ColorStyle.blueColor
                                     : ColorStyle.primaryWhite,
                                 borderRadius: BorderRadius.circular(8)
                             ),
                           )
                         ],
                       ),
                       onTap: (){
                         controller.agree.value = !controller.agree.value;
                         controller.yesandno.value = 0;
                       },
                     ),
                      SizedBox(width: 54,),
                      InkWell(
                        child:    Column(
                          children: [
                            Text(
                              'Today my task',
                              style: TextStyles.textStyles_14_normal.apply(
                                color: (   controller.yesandno.value == 1)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.secondryBlack,
                              ),

                            ),
                            SizedBox(width: 5,),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: (   controller.yesandno.value == 1)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.primaryWhite,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                            )
                          ],
                        ),
                        onTap: (){
                          controller.agree.value = !controller.agree.value;
                          controller.yesandno.value = 1;
                        },
                      ),

                    ],
                  ),
                  SizedBox(height: 19,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          '09:02',
                          style: TextStyles.textStyles_32_normal.apply(
                              color: ColorStyle.secondryBlack
                          ),

                        ),
                        SizedBox(width: 12,),
                        Column(
                          children: [
                            Container(height: 14,),
                            Text(
                              'am',
                              style: TextStyles.textStyles_16_normal.apply(
                                  color: ColorStyle.black54
                              ),

                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    alignment: Alignment.center,
                    child:  Text(
                      'Mon, 11 april 2022',
                      style: TextStyles.textStyles_16_normal.apply(
                          color: ColorStyle.secondryBlack
                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                      alignment: Alignment.center,
                      child:  InkWell(
                        child: Container(
                          height: 140,
                          width: 140,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(ImageStyle.Handsss,
                                      height: 32 , width: 32,),
                                    SizedBox(height: 6,),
                                    Text(
                                      'CLOCK IN',
                                      style: TextStyles.textStyles_14_normal.apply(
                                          color: ColorStyle.primaryWhite
                                      ),

                                    ),
                                  ],
                                ) ,
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: ColorStyle.blueColor
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              border: Border.all(
                                  width: 1,
                                  color: ColorStyle.blueColor
                              )
                          ),
                        ),
                        onTap: (){},
                      )
                  ),

                  SizedBox(height: 26,),
                  Row(
                    children: [
                      Image.asset(ImageStyle.location,
                        height: 32 , width: 32,),
                      SizedBox(width: 5,),

                      Text(
                        '   abc software abc building, abc street...',
                        style: TextStyles.textStyles_14_normal.apply(
                            color: ColorStyle.secondryBlack
                        ),

                      ),
                    ],
                  ),
                  SizedBox(height: 39,),
                  Row(
                    children: [
                      InkWell(
                        child:   Container(
                          height: 150,
                          width: 107,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.historyblue,
                                height: 50 , width: 50,),
                              SizedBox(height: 16,),
                              Text(
                                '00:00',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),

                              ),
                              SizedBox(height: 4,),
                              Text(
                                'Clock In',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),

                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(26)

                          ),
                        ),
                        onTap: (){

                        },
                      ),
                      SizedBox(width: 8,),
                      InkWell(
                        child:   Container(
                          height: 150,
                          width: 107,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.history,
                                height: 50 , width: 50,),
                              SizedBox(height: 16,),
                              Text(
                                '00:00',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),

                              ),
                              SizedBox(height: 4,),
                              Text(
                                'Clock Out',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),

                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(26)

                          ),
                        ),
                        onTap: (){

                        },
                      ),
                      SizedBox(width: 8,),
                      InkWell(
                        child:  Container(
                          height: 150,
                          width: 107,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(ImageStyle.historyblack,
                                height: 50 , width: 50,),
                              SizedBox(height: 16,),
                              Text(
                                '00:00',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),

                              ),
                              SizedBox(height: 1,),
                              Text(
                                "Working Hr's",
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),

                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: ColorStyle.grayColor,
                              borderRadius: BorderRadius.circular(26)

                          ),
                        ),
                        onTap: (){

                        },
                      ),

                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButtonCustomBorder(
                          height: 60,
                          text: "Apply leave",
                          colorBorder: ColorStyle.secondryBlack,
                          radius: SizeStyle.textSize_18,
                          onTap: () {
                            Get.to(ApplyLeave());
                          },
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButtonCustomBorder(
                          height: 60,
                          text: "View attendance",
                          colorBorder: ColorStyle.secondryBlack,
                          radius: SizeStyle.textSize_18,
                          onTap: () {
                            Get.to(AttendanceReports());
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),


            ),);
          },
        )


        );
  }
}
