import 'package:flutter/material.dart';
import 'package:employeemanagement/Controllers/FaqController.dart';

import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:get/get.dart';

import '../Styles/TextStyles.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FaqController());

    return Scaffold(
        appBar: AppBarStyleAuth(
          title: 'FAQ\'s',
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body: GetBuilder(
          init: FaqController(),
          initState: (state) {
            controller.reset();
          },
          builder: (authController) {
            return Obx(
              () => ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.listSelected.length,

                  separatorBuilder: (context, index) {
                    return Container(height: 0,);
                  },

                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10, left: 16, right: 16),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: ColorStyle.secondryBlack,
                                    width: 1))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consetetur',
                                    style: TextStyles.textStyles_14_normal
                                        .apply(color: ColorStyle.secondryBlack),
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    controller.listSelected.value[index] ?
                                    Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                            if (controller.listSelected.value[index])
                              SizedBox(
                                height: 16,
                              ),
                            if (controller.listSelected.value[index])
                              Text(
                                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. ',
                                style: TextStyles.textStyles_14_normal.apply(
                                  color: Colors.grey,
                                  fontWeightDelta: 0
                                ),
                              ),
                          ],
                        ),
                      ),
                      onTap: () {
                        for (int i = 0;
                            i < controller.listSelected.length;
                            i++) {
                          if (i == index) {
                            controller.listSelected[i] =
                                !controller.listSelected[i];
                          } else {
                            controller.listSelected[i] = false;
                          }
                        }
                        // Get.to(HomeMyTask());
                      },
                    );
                  }),
            );
          },
        ));
  }
}
