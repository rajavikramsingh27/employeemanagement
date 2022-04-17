import 'package:employeemanagement/Controllers/AdminDashBordController.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/TabbarScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarHomeScreen.dart';
import '../Components/TextFieldCustom.dart';

class AdminDashBord extends StatelessWidget {
   AdminDashBord({Key? key}) : super(key: key);
  final controller = Get.put(AdminDashBordController());
  final padding = EdgeInsets.only(
    left: 20,
    right: 20,
  );
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBarStyleHome(),
      backgroundColor: ColorStyle.primaryWhite,
         body: GetBuilder(
  init: AdminDashBordController(),
  initState: (state) {
    controller.reset();

  },
  builder: (authController) {
    return Obx(
          () => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28),
            Container(
              // color: Colors.lightBlue,
              height: 55,
              // width:500,
              child: ListView.separated(
                  padding: padding,
                  shrinkWrap: true,
                  itemCount: controller.listAdminDashboard.length,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        SizedBox(width: 12,),
                        InkWell(

                          child:  Column(
                            children: [
                              Text(
                                // 'Assigned task',
                                controller.listAdminDashboard[index],

                                style: TextStyles.textStyles_16_normal.apply(
                                  color: (controller.intAppBar.value == index)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.primaryWhite,


                                ),

                              ),
                              SizedBox(width: 5,),
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                    color: (controller.intAppBar.value == index)
                                        ? ColorStyle.blueColor
                                        : ColorStyle.primaryWhite,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              )
                            ],
                          ),
                          onTap: (){
                            controller.intAppBar.value = index;
                          },
                        ),
                        // SizedBox(width: 54,),



                      ],
                    );
                  }),


            ),

            Container(
               margin: EdgeInsets.only(  left: 20,
                 right: 20,),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: ColorStyle.blueColor,
                  ),
                  SizedBox(width: 10,),
                  Expanded(child: TextField(
                    // obscureText: true,
                    decoration: InputDecoration(

                      border: InputBorder.none,
                      hintText: 'Search employee name',
                      hintStyle: TextStyles.textStyles_14_normal.apply(
                          color: ColorStyle.grayColor
                      ),
                    ),
                  ))
                ],
              ),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 1,
                  color: ColorStyle.grayColor
                )
              ),
            ),
            Container(
              // color: Colors.lightBlue,
              height: MediaQuery.of(context).size.height,
              // width:500,
              child: ListView.builder(
                  padding: padding,
                  shrinkWrap: true,
                  // itemCount: controller.listApplyLeave.length,
                  // scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    String bg_SecondColor;
                    return Container(
                      padding: EdgeInsets.only(left: 12,right: 12),
                      alignment: Alignment.center,
                      // color: Colors.red,
                      height: 92,
                      // width: 343,

                      margin: EdgeInsets.all(6),
                      // color: Colors.red,
                      child:   Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageStyle.person,
                            height: 60,
                            width: 60,
                          ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'John deo',
                                  // controller.listApplyLeave[index],
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.secondryBlack
                                  ),
                                ),
                                Text(
                                  'Assigned task : 20',
                                  // controller.listApplyLeave[index],
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.secondryBlack
                                  ),
                                ),
                                Text(
                                  'Emp ID : 12345',
                                  // controller.listApplyLeave[index],
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.grayColor
                                  ),
                                ),

                              ],
                            ),
                          SizedBox(width: 40,),
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 14,right: 14),
                              child:    Text(
                                'View',
                                style: TextStyles.textStyles_16_normal.apply(
                                    color: ColorStyle.primaryWhite
                                ),
                              ),
                              width: 70,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: ColorStyle.secondryBlack
                              ),
                            ),
                            onTap: (){
                              // Get.to(TabbarScreen());
                            },
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: Colors.lightBlueAccent.withOpacity(0.1)
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
