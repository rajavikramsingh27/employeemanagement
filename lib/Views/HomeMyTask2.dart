import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/MyAllTask.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarHomeScreen.dart';
import '../Controllers/HomeMyTask2Controller.dart';

class HomeMyTask2 extends StatelessWidget {
  const HomeMyTask2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeMyTask2Controller());

    return Scaffold(
      appBar: AppBarStyleHome(),
      backgroundColor: ColorStyle.primaryWhite,
      body:   GetBuilder(
        init: HomeMyTask2Controller(),
        initState: (state) {
          controller.reset();

        },
        builder: (authController) {
          return Obx(
                () =>    SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20, right: 20,top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child:  Column(
                              children: [
                                Text(
                                  'My attendance',
                                  style: TextStyles.textStyles_16_normal.apply(
                                    color: (   controller.yes.value == 0)
                                        ? ColorStyle.blueColor
                                        : ColorStyle.secondryBlack,
                                  ),

                                ),
                                SizedBox(width: 5,),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: (   controller.yes.value == 0)
                                          ? ColorStyle.blueColor
                                          : ColorStyle.primaryWhite,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                )
                              ],
                            ),
                            onTap: (){
                              controller.agree.value = !controller.agree.value;
                              controller.yes.value = 0;
                            },
                          ),
                          InkWell(
                            child:    Column(
                              children: [
                                Text(
                                  'Today my task',
                                  style: TextStyles.textStyles_16_normal.apply(
                                    color: (   controller.yes.value == 1)
                                        ? ColorStyle.blueColor
                                        : ColorStyle.secondryBlack,
                                  ),

                                ),
                                SizedBox(width: 5,),
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      color: (   controller.yes.value == 1)
                                          ? ColorStyle.blueColor
                                          : ColorStyle.primaryWhite,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                )
                              ],
                            ),
                            onTap: (){
                              controller.agree.value = !controller.agree.value;
                              controller.yes.value = 1;
                              // Get.to(HomeMyTask());

                            },
                          ),

                        ],
                      ),

                      Container(
                        // color: Colors.lightBlue,
                        height: MediaQuery.of(context).size.height-327,
                        // width:500,
                        child: ListView.builder(
                          padding: EdgeInsets.only(top: 14),
                            shrinkWrap: true,
                            itemCount: controller.listMyTask.length,
                            // scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              String bg_SecondColor;
                              return      Container(

                                padding: EdgeInsets.only(left: 10,right: 10),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 12,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Teem meeting',
                                          style: TextStyles.textStyles_14_normal.apply(
                                              color: ColorStyle.secondryBlack
                                          ),
                                        ),

                                        Text(
                                          '09:20 am',
                                          style: TextStyles.textStyles_14_normal.apply(
                                              color: ColorStyle.secondryBlack
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 14,),
                                    Text(
                                      'Discusses with new project abc company with',
                                      style: TextStyles.textStyles_12_normal.apply(
                                          color: ColorStyle.secondryBlack
                                      ),
                                    ),
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            padding: EdgeInsets.only(left: 18,right: 18),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'View',
                                                  style: TextStyles.textStyles_12_normal.apply(
                                                      color: ColorStyle.primaryWhite
                                                  ),
                                                ),

                                                Image.asset(
                                                    ImageStyle.rightarrowblue,
                                                    height: 14,
                                                    width: 14,
                                                    color: ColorStyle.primaryWhite
                                                ),
                                              ],
                                            ),
                                            width: 100,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(14),
                                                color: ColorStyle.secondryBlack
                                            ),
                                          ),
                                          onTap: (){
                                            Get.to(MyAllTask());
                                          },
                                        ),
                                        SizedBox(width: 10,),
                                        InkWell(
                                          child: Container(

                                            padding: EdgeInsets.only(left: 18,right: 18),

                                            child: Text(
                                              // 'Completed',
                                              controller.listMyTask[index],
                                              style: TextStyles.textStyles_12_normal.apply(
                                                  color: ColorStyle.primaryWhite
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            width: 110,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(14),
                                                color: ColorStyle.blueLight
                                            ),
                                          ),
                                          onTap: (){
                                            // Get.to(HomeMyTask2());
                                          },
                                        ),
                                      ],
                                    )

                                  ],
                                ),
                                margin: EdgeInsets.only(bottom: 8),
                                height: 150,
                                // width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              );

                            }),
                      ),
                      SizedBox(height: 8,),
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 12,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Interview with smith',
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.primaryWhite
                                  ),
                                ),

                                Text(
                                  '1:00 pm',
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.primaryWhite
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14,),
                            Text(
                              'Lorem ipsum dolor sit amet, consetetur ',
                              style: TextStyles.textStyles_12_normal.apply(
                                  color: ColorStyle.primaryWhite
                              ),
                            ),
                            SizedBox(height: 20,),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(left: 14,right: 14),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'View',
                                      style: TextStyles.textStyles_16_normal.apply(
                                          color: Colors.blueAccent
                                      ),
                                    ),

                                    Image.asset(
                                      ImageStyle.rightarrowblue,
                                      height: 22,
                                      width: 22,
                                    ),
                                  ],
                                ),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: ColorStyle.primaryWhite
                                ),
                              ),
                              onTap: (){
                                // Get.to(HomeMyTask2());
                              },
                            )
                          ],
                        ),
                        height: 150,
                        // width: 300,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      Container(
                        // color: Colors.lightBlue,
                        height: MediaQuery.of(context).size.height-300,
                        // width:500,
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: 10),
                            shrinkWrap: true,
                            itemCount: 12,
                            // scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              String bg_SecondColor;
                              return Container(

                                padding: EdgeInsets.only(left: 10,right: 10),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 12,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'ABC projects',
                                          style: TextStyles.textStyles_14_normal.apply(
                                              color: ColorStyle.secondryBlack
                                          ),
                                        ),

                                        Text(
                                          '09:20 am',
                                          style: TextStyles.textStyles_14_normal.apply(
                                              color: ColorStyle.secondryBlack
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 14,),
                                    Text(
                                      'Lorem ipsum dolor sit amet, consetetur ',
                                      style: TextStyles.textStyles_12_normal.apply(
                                          color: ColorStyle.secondryBlack
                                      ),
                                    ),   SizedBox(height: 20,),

                                  ],
                                ),
                                margin: EdgeInsets.only(bottom: 10),
                                height: 100,
                                // width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.black26.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                              );

                            }),
                      ),
                    ],
                  ),


                ),
          );
        },
      ),

    );
  }
}
