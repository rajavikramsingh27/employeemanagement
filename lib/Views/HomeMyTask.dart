import 'package:employeemanagement/Components/AppBarHomeScreen.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/HomeMyTask2.dart';
import 'package:employeemanagement/Controllers/HomeMyTaskController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class HomeMyTask extends StatelessWidget {
  HomeMyTask({Key? key}) : super(key: key);

  final controller = Get.put(HomeMyTaskController());
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
        init: HomeMyTaskController(),
        initState: (state) {
          controller.reset();
        },
        builder: (authController) {
          return Obx(
            () => SingleChildScrollView(
              padding: EdgeInsets.only(
                // left: 20,
                // right: 20,
                top: 20,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: padding,
                    child: Row(
                      children: [
                        InkWell(
                          child: Column(
                            children: [
                              Text(
                                'My attendance',
                                style: TextStyles.textStyles_20_bold.apply(
                                  color: (controller.yes.value == 0)
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
                                    color: (controller.yes.value == 0)
                                        ? ColorStyle.blueColor
                                        : ColorStyle.primaryWhite,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            ],
                          ),
                          onTap: () {
                            controller.agree.value = !controller.agree.value;
                            controller.yes.value = 0;
                          },
                        ),
                        SizedBox(
                          width: 54,
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Text(
                                'Today my task',
                                style: TextStyles.textStyles_14_normal.apply(
                                  color: (controller.yes.value == 1)
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
                                    color: (controller.yes.value == 1)
                                        ? ColorStyle.blueColor
                                        : ColorStyle.primaryWhite,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            ],
                          ),
                          onTap: () {
                            controller.agree.value = !controller.agree.value;
                            controller.yes.value = 1;
                            // Get.to(HomeMyTask());
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 50,
                    child: ListView.separated(
                        padding: padding,
                        // shrinkWrap: true,
                        itemCount: controller.listApplyLeave.length,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 16, right: 16),
                              child: Text(
                                controller.listApplyLeave[index],
                                style: TextStyles.textStyles_14_normal.apply(
                                  color: (controller.intAppBar.value == index)
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: (controller.intAppBar.value == index)
                                      ? Colors.black
                                      : Colors.white,
                                  border: Border.all(
                                      width: 1, color: ColorStyle.grayColor)),
                            ),
                            onTap: () {
                              // Get.to(TabbarScreen2());
                              controller.intAppBar.value = index;
                            },
                          );
                        }),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemCount: 12,
                      physics: NeverScrollableScrollPhysics(),
                      padding: this.padding,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 16, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Teem meeting',
                                      style: TextStyles.textStyles_14_normal
                                          .apply(
                                              color: ColorStyle.primaryWhite),
                                    ),
                                    Text(
                                      '09:00 am',
                                      style: TextStyles.textStyles_14_normal
                                          .apply(
                                              color: ColorStyle.primaryWhite),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  'Discusses with new project abc company with ',
                                  style: TextStyles.textStyles_12_normal
                                      .apply(color: ColorStyle.primaryWhite),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(left: 14, right: 14),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'View',
                                          style: TextStyles.textStyles_16_normal
                                              .apply(color: Colors.blueAccent),
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
                                        color: ColorStyle.primaryWhite),
                                  ),
                                  onTap: () {
                                    Get.to(HomeMyTask2());
                                  },
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          );
                        } else {
                          return Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'ABC projects',
                                      style: TextStyles.textStyles_14_normal
                                          .apply(
                                              color: ColorStyle.secondryBlack),
                                    ),
                                    Text(
                                      '09:20 am',
                                      style: TextStyles.textStyles_14_normal
                                          .apply(
                                              color: ColorStyle.secondryBlack),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consetetur ',
                                  style: TextStyles.textStyles_12_normal
                                      .apply(color: ColorStyle.secondryBlack),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black26.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20)),
                          );
                        }
                      }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
