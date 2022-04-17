import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarStyle.dart';
import '../Controllers/AttendanceReportsController.dart';


class AttendanceReports extends StatelessWidget {
  const AttendanceReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AttendanceReportsController());
    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Attendance reports',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: GetBuilder(
        init: AttendanceReportsController(),
        initState: (state) {
          controller.reset();

          print(controller.yesandno.value);
        },
        builder: (authController) {
          return Obx(() =>   SingleChildScrollView(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    InkWell(
                      child: Column(
                        children: [
                          Text(
                            'Day',
                            style: TextStyles.textStyles_16_normal.apply(
                                color: (controller.yesandno.value == 0)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor
                            ),

                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: (controller.yesandno.value == 0)
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
                    SizedBox(width: 44),
                    InkWell(
                      child: Column(
                        children: [
                          Text(
                            'Week',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: (controller.yesandno.value == 1)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor
                            ),

                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: (controller.yesandno.value == 1)
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
                      }
                      ,
                    ),

                    SizedBox(width: 44),
                    InkWell(
                      child: Column(
                        children: [
                          Text(
                            'Month',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: (controller.yesandno.value == 2)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.grayColor
                            ),

                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                color: (controller.yesandno.value == 2)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.primaryWhite,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          )
                        ],
                      ),
                      onTap: (){
                        controller.agree.value = !controller.agree.value;
                        controller.yesandno.value = 2;
                      },
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      'April, 2022',
                      style: TextStyles.textStyles_16_bold.apply(
                          color: ColorStyle.secondryBlack
                      ),

                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      child:  Container(
                          height: 24,
                          width: 24,
                          child:  Image.asset(ImageStyle.dropDownbutton,
                            height: 32 , width: 32,),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: ColorStyle.grayColor
                          )
                      ),
                      onTap: (){
                        months();
                      },
                    )

                  ],
                ),
                SizedBox(height: 40),
                Text(
                  'Mon, 11 april 2022',
                  style: TextStyles.textStyles_16_normal.apply(
                      color: ColorStyle.secondryBlack
                  ),

                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageStyle.historyblue,
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                '00:00',
                                style: TextStyles.textStyles_14_normal
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Clock In',
                                style: TextStyles.textStyles_14_normal
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(26)),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageStyle.history,
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                '00:00',
                                style: TextStyles.textStyles_14_normal
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Clock Out',
                                style: TextStyles.textStyles_14_normal
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(26)),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        child: Container(
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                ImageStyle.historyblack,
                                height: 50,
                                width: 50,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                '00:00',
                                style: TextStyles.textStyles_14_normal
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              Text(
                                "Working Hr's",
                                style: TextStyles.textStyles_14_normal
                                    .apply(color: ColorStyle.secondryBlack),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: ColorStyle.grayColor,
                              borderRadius: BorderRadius.circular(26)),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30,),
                Container(
                  height: 120,
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          SizedBox(width: 18,),
                          Image.asset(ImageStyle.historyblue,
                            height: 32 , width: 32,),
                          SizedBox(width: 12,),
                          Text(
                            '09:02 am',
                            style: TextStyles.textStyles_16_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),

                          ),
                          SizedBox(width: 24,),
                          Text(
                            'Clock In',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),

                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          SizedBox(width: 18,),
                          Image.asset(ImageStyle.location,
                            height: 32 , width: 32,),
                          SizedBox(width: 12,),
                          Text(
                            'abc software abc building, abc street...',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),

                          ),

                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.lightBlue.withOpacity(0.1),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 120,
                  child: Column(
                    children: [
                      SizedBox(height: 12,),
                      Row(
                        children: [
                          SizedBox(width: 18,),
                          Image.asset(ImageStyle.history,
                            height: 32 , width: 32,),
                          SizedBox(width: 12,),
                          Text(
                            '06:12 pm',
                            style: TextStyles.textStyles_16_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),

                          ),
                          SizedBox(width: 24,),
                          Text(
                            'Clock In',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),

                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          SizedBox(width: 18,),
                          Image.asset(ImageStyle.location,
                            height: 32 , width: 32,),
                          SizedBox(width: 12,),
                          Text(
                            'abc software abc building, abc street...',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),

                          ),

                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    color: Colors.lightBlue.withOpacity(0.1),
                  ),
                )
              ],
            ),
          ));
        },
      )





    );
  }
}
months() {
  final controller = Get.put(AttendanceReportsController());

  return Get.dialog(
      Material(
          color: Colors.transparent,
          child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                height: 580,
                width: MediaQuery.of(Get.context!).size.width,
                decoration: BoxDecoration(
                  color: ColorStyle.primaryWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Select month',
                          style: TextStyles.textStyles_20_bold,
                        ),
                        SizedBox(
                          width: 142,
                        ),
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 31,
                            height: 31,
                            child:Icon(
                              Icons.clear,
                              color: ColorStyle.secondryBlack,
                              size:20.0,

                            ),
                            decoration: BoxDecoration(
                                // color: ColorStyle.bgColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black12..withOpacity(0.16),
                                    blurRadius: 50.0,
                                  ),
                                ]),
                          ),
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    ),
                    ListView.builder(
                        padding: EdgeInsets.only(top: 20),
                        shrinkWrap: true,
                        itemCount: controller.listMonths.length,
                        // itemCount: 11,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [

                              InkWell(
                                child: Container(

                                  child: Icon(
                                    controller.agree.value ?  Icons.check :  Icons.check,
                                    color: (controller.yesandno.value == index)
                                        ? ColorStyle.primaryWhite
                                        : Colors.white,
                                    size:20.0,

                                  ),
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 32,
                                  margin: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 10),
                                  decoration: BoxDecoration(
                                      color: (controller.yesandno.value == index)
                                          ? ColorStyle.blueColor
                                          : Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      width: 1,
                                      color: ColorStyle.grayColor
                                    )

                                  ),
                          ),
                                onTap: () {
                                  controller.yesandno.value = index;
                                },
                              ),
                              Text(

                                // 'Logo',
                                controller.listMonths[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15

                                ),
                              ),
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ],
          ))
      ));
}