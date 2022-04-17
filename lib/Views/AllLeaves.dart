
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/ApplyLeaveController.dart';
import '../Styles/ColorStyle.dart';
import '../Styles/SizeStyle.dart';
import '../Styles/TextStyles.dart';
import '../Components/ButtonCustom.dart';


class AllLeaves extends StatelessWidget {
  final List<String>? list;
  final EdgeInsets? padding;
  const AllLeaves({Key? key, this.list, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: padding,
        shrinkWrap: true,

        itemCount: list!.length,
        // scrollDirection: Axis.horizontal,
        // physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(
                left: 12, right: 12, top: 16, bottom: 16),
            margin: EdgeInsets.only(bottom: 16),
            // height: 120,
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
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      list![index],
                      style: TextStyles.textStyles_14_normal
                          .apply(color: ColorStyle.secondryBlack),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: ColorStyle.yellowLight),
                    width: 100,
                    height: 40,
                  ),
                  onTap: (){

                  },
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    width: 1, color: ColorStyle.grayColor)),
          );
        });
  }

}




// class AllLeaves extends StatelessWidget {
//    AllLeaves({Key? key}) : super(key: key);
//   final controller = Get.put(ApplyLeaveController());
//   final padding = EdgeInsets.only(
//     left: 20,
//     right: 20,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorStyle.primaryWhite,
//       body: GetBuilder(
//         init: ApplyLeaveController(),
//         initState: (state) {
//           controller.reset();
//
//         },
//         builder: (authController) {
//           return Obx(
//                 () =>  ListView.builder(
//                     padding: this.padding,
//                     // padding: EdgeInsets.only(bottom: 30),
//                     shrinkWrap: true,
//
//                     itemCount: controller.listApplyLeave.length,
//                     // scrollDirection: Axis.horizontal,
//                     // physics: BouncingScrollPhysics(),
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         padding: EdgeInsets.only(
//                             left: 12, right: 12, top: 16, bottom: 16),
//                         margin: EdgeInsets.only(bottom: 16),
//                         height: 120,
//                         // width: 370,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Casual Leave ',
//                                   style: TextStyles.textStyles_16_normal
//                                       .apply(color: ColorStyle.secondryBlack),
//                                 ),
//                                 SizedBox(
//                                   height: 10,
//                                 ),
//                                 Text(
//                                   'Half Day',
//                                   style: TextStyles.textStyles_14_normal
//                                       .apply(color: ColorStyle.secondryBlack),
//                                 ),
//                                 Text(
//                                   'Mon 20 april, 2022',
//                                   style: TextStyles.textStyles_14_normal
//                                       .apply(color: ColorStyle.secondryBlack),
//                                 ),
//                               ],
//                             ),
//                             InkWell(
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 child: Text(
//                                   controller.listApplyLeave[index],
//                                   style: TextStyles.textStyles_14_normal
//                                       .apply(color: ColorStyle.secondryBlack),
//                                 ),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(16),
//                                     color: ColorStyle.yellowLight),
//                                 width: 100,
//                                 height: 40,
//                               ),
//                               onTap: (){
//
//                               },
//                             )
//                           ],
//                         ),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             border: Border.all(
//                                 width: 1, color: ColorStyle.grayColor)),
//                       );
//                     }),
//
//
//             //         SingleChildScrollView(
//             //
//             //   child:  Column(
//             //     children: [
//             //       SizedBox(
//             //         height: 80,
//             //       ),
//             //       ListView.builder(
//             //           padding: this.padding,
//             //           // padding: EdgeInsets.only(bottom: 30),
//             //           shrinkWrap: true,
//             //
//             //           itemCount: controller.listApplyLeave.length,
//             //           // scrollDirection: Axis.horizontal,
//             //           // physics: BouncingScrollPhysics(),
//             //           itemBuilder: (BuildContext context, int index) {
//             //             return Container(
//             //               padding: EdgeInsets.only(
//             //                   left: 12, right: 12, top: 16, bottom: 16),
//             //               margin: EdgeInsets.only(bottom: 16),
//             //               height: 120,
//             //               // width: 370,
//             //               child: Row(
//             //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //                 children: [
//             //                   Column(
//             //                     crossAxisAlignment: CrossAxisAlignment.start,
//             //                     children: [
//             //                       Text(
//             //                         'Casual Leave ',
//             //                         style: TextStyles.textStyles_16_normal
//             //                             .apply(color: ColorStyle.secondryBlack),
//             //                       ),
//             //                       SizedBox(
//             //                         height: 10,
//             //                       ),
//             //                       Text(
//             //                         'Half Day',
//             //                         style: TextStyles.textStyles_14_normal
//             //                             .apply(color: ColorStyle.secondryBlack),
//             //                       ),
//             //                       Text(
//             //                         'Mon 20 april, 2022',
//             //                         style: TextStyles.textStyles_14_normal
//             //                             .apply(color: ColorStyle.secondryBlack),
//             //                       ),
//             //                     ],
//             //                   ),
//             //                   InkWell(
//             //                     child: Container(
//             //                       alignment: Alignment.center,
//             //                       child: Text(
//             //                         controller.listApplyLeave[index],
//             //                         style: TextStyles.textStyles_14_normal
//             //                             .apply(color: ColorStyle.secondryBlack),
//             //                       ),
//             //                       decoration: BoxDecoration(
//             //                           borderRadius: BorderRadius.circular(16),
//             //                           color: ColorStyle.yellowLight),
//             //                       width: 100,
//             //                       height: 40,
//             //                     ),
//             //                     onTap: (){
//             //
//             //                     },
//             //                   )
//             //                 ],
//             //               ),
//             //               decoration: BoxDecoration(
//             //                   borderRadius: BorderRadius.circular(20),
//             //                   border: Border.all(
//             //                       width: 1, color: ColorStyle.grayColor)),
//             //             );
//             //           }),
//             //       SizedBox(
//             //         height: 40,
//             //       ),
//             //       Container(
//             //         alignment: Alignment.center,
//             //         child: ElevatedButtonCustomBorder(
//             //           text: " + Apply leave",
//             //           height: 60,
//             //           width: 250,
//             //           colorBorder: ColorStyle.secondryBlack,
//             //           radius: SizeStyle.textSize_18,
//             //           onTap: () {
//             //             // Get.to(ApplyLeave());
//             //           },
//             //         ),
//             //       )
//             //     ],
//             //   ),
//             // ),
//           );
//         },
//       ),
//
//
//     );
//   }
// }
