import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/SizeStyle.dart';
import 'package:employeemanagement/Views/AllLeaves.dart';
import 'package:employeemanagement/Views/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/AppBarHomeScreen.dart';
import '../Components/ButtonCustom.dart';
import '../Controllers/ApplyLeaveController.dart';
import '../Styles/EffectStyle.dart';
import '../Styles/TextStyles.dart';
import '../Views/Leave_3.dart';

class ApplyLeave extends StatelessWidget {
  ApplyLeave({Key? key}) : super(key: key);

  final padding = EdgeInsets.only(
    left: 20,
    right: 20,
  );

  final controller = Get.put(ApplyLeaveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyleAuth(
        title: 'Leave',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body: GetBuilder(
        init: ApplyLeaveController(),
        initState: (state) {
          controller.reset();
        },
        builder: (authController) {
          return Obx(
            () => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    // color: Colors.lightBlue,
                    height: 38,
                    // width:500,
                    child: ListView.separated(
                        padding: padding,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemCount: controller.listApply.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                child: Column(
                                  children: [
                                    Text(
                                      // 'All leaves',
                                      controller.listApply[index],
                                      style: TextStyles.textStyles_16_normal
                                          .apply(
                                              color: (controller.selectUnselect
                                                          .value ==
                                                      index)
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
                                          color: (controller
                                                      .selectUnselect.value ==
                                                  index)
                                              ? ColorStyle.blueColor
                                              : ColorStyle.primaryWhite,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    )
                                  ],
                                ),
                                onTap: () {
                                  controller.selectUnselect.value == index;
                                  print(index);
                                },
                              ),
                            ],
                          );
                        }),
                  ),

                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    padding: padding,
                    child: Row(
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
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  if (controller.selectUnselect.value != 3)
                    AllLeaves(
                      list: controller.listApplyLeave,
                      padding: padding,
                    ),
                  // if (controller.selectUnselect.value == 3)
                  // Expanded(child: Leave_3()),
                  // Expanded(child: Container(
                  //   color: Colors.green,
                  //   width: 111,
                  //   // height: 111,
                  // )),
                  // if (controller.selectUnselect.value != 3)

                  // Expanded(child: Container(
                  //   color: Colors.red,
                  //   width: 111,
                  //   // height: 111,
                  // )),
                  // Expanded(child: AllLeaves()),

                  SizedBox(
                    height: 30,
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
                                    controller.selectUnselec.value == index
                                        ? Icons.check
                                        : Icons.check,
                                    color: (controller.selectUnselec.value ==
                                            index)
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
                                      color: (controller.selectUnselec.value ==
                                              index)
                                          ? ColorStyle.blueColor
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1,
                                          color: ColorStyle.grayColor)),
                                ),
                                onTap: () {
                                  controller.selectUnselect.value = index;
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
