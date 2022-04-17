import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarHomeScreen.dart';
import '../Components/ButtonCustom.dart';
import '../Controllers/ApplyLeaveController.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/TextStyles.dart';

class ApplyLeave extends StatelessWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ApplyLeaveController());
    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Leave',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: GetBuilder(
        init: ApplyLeaveController(),
        initState: (state) {
          controller.reset();

          print(controller.yesandno.value);
        },
        builder: (authController) {
          return Obx(
            () => SingleChildScrollView(
              padding: EdgeInsets.only(left: 25, right: 20, top: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              'All leaves',
                              style: TextStyles.textStyles_16_normal.apply(
                                  color: (controller.yesandno.value == 0)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.secondryBlack),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: (controller.yesandno.value == 0)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.primaryWhite,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                        onTap: () {
                          controller.agree.value = !controller.agree.value;
                          controller.yesandno.value = 0;
                        },
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              'Causal',
                              style: TextStyles.textStyles_14_normal.apply(
                                color: (controller.yesandno.value == 1)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.secondryBlack,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: (controller.yesandno.value == 1)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.primaryWhite,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                        onTap: () {
                          controller.agree.value = !controller.agree.value;
                          controller.yesandno.value = 1;
                        },
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              'Sick',
                              style: TextStyles.textStyles_14_normal.apply(
                                color: (controller.yesandno.value == 2)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.secondryBlack,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: (controller.yesandno.value == 2)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.primaryWhite,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                        onTap: () {
                          controller.agree.value = !controller.agree.value;
                          controller.yesandno.value = 2;
                        },
                      ),
                      InkWell(
                        child: Column(
                          children: [
                            Text(
                              'Earned Leave',
                              style: TextStyles.textStyles_14_normal.apply(
                                color: (controller.yesandno.value == 3)
                                    ? ColorStyle.blueColor
                                    : ColorStyle.secondryBlack,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: (controller.yesandno.value == 3)
                                      ? ColorStyle.blueColor
                                      : ColorStyle.primaryWhite,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ],
                        ),
                        onTap: () {
                          controller.agree.value = !controller.agree.value;
                          controller.yesandno.value = 3;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      Text(
                        'April, 2022',
                        style: TextStyles.textStyles_16_bold
                            .apply(color: ColorStyle.secondryBlack),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Container(
                            height: 24,
                            width: 24,
                            child: Image.asset(
                              ImageStyle.dropDownbutton,
                              height: 32,
                              width: 32,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: ColorStyle.grayColor)),
                        onTap: () {
                          months();
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.only(bottom: 30),
                      shrinkWrap: true,
                      itemCount: controller.listApplyLeave.length,
                      // scrollDirection: Axis.horizontal,
                      // physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(
                              left: 12, right: 12, top: 16, bottom: 16),
                          margin: EdgeInsets.only(bottom: 16),
                          height: 120,
                          // width: 370,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Casual Leave ',
                                    style: TextStyles.textStyles_16_normal
                                        .apply(color: ColorStyle.secondryBlack),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Half Day',
                                    style: TextStyles.textStyles_14_normal
                                        .apply(color: ColorStyle.secondryBlack),
                                  ),
                                  Text(
                                    'Mon 20 april, 2022',
                                    style: TextStyles.textStyles_14_normal
                                        .apply(color: ColorStyle.secondryBlack),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  controller.listApplyLeave[index],
                                  style: TextStyles.textStyles_14_normal
                                      .apply(color: ColorStyle.secondryBlack),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: ColorStyle.yellowLight),
                                width: 100,
                                height: 40,
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  width: 1, color: ColorStyle.grayColor)),
                        );
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButtonCustomBorder(
                      text: " + Apply leave",
                      height: 60,
                      width: 250,
                      colorBorder: ColorStyle.secondryBlack,
                      radius: SizeStyle.textSize_18,
                      onTap: () {
                        Get.to(ApplyLeave());
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

months() {
  final controller = Get.put(ApplyLeaveController());

  return Get.dialog(Material(
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
                            child: Icon(
                              Icons.clear,
                              color: ColorStyle.secondryBlack,
                              size: 20.0,
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
                                    controller.agree.value
                                        ? Icons.check
                                        : Icons.check,
                                    color: (controller.yesandno.value == index)
                                        ? ColorStyle.primaryWhite
                                        : Colors.white,
                                    size: 20.0,
                                  ),
                                  alignment: Alignment.center,
                                  height: 32,
                                  width: 32,
                                  margin: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 10),
                                  decoration: BoxDecoration(
                                      color:
                                          (controller.yesandno.value == index)
                                              ? ColorStyle.blueColor
                                              : Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1,
                                          color: ColorStyle.grayColor)),
                                ),
                                onTap: () {
                                  controller.yesandno.value = index;
                                },
                              ),
                              Text(
                                // 'Logo',
                                controller.listMonths[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ],
          ))));
}
