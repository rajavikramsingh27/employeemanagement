import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/ChangePassword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/MyAllTaskController.dart';


class MyAllTask extends StatelessWidget {
  const MyAllTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyAllTaskController());

    return Scaffold(
      appBar: AppBarStyleAuth(
        title:      'My all task ',
      ),
      backgroundColor: ColorStyle.primaryWhite,
             body:  GetBuilder(
               init: MyAllTaskController(),
               initState: (state) {
                 controller.reset();

               },
               builder: (authController) {
                 return Obx(
                       () =>  SingleChildScrollView(
                         padding: EdgeInsets.only(left: 20,right: 20),
                         child:  Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             SizedBox(height: 10,),
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
                             SizedBox(height: 10,),
                             Text(
                               'Mon, 11 april 2022',
                               style: TextStyles.textStyles_16_normal.apply(
                                   color: ColorStyle.secondryBlack
                               ),

                             ),
                             SizedBox(height: 20,),
                             Container(
                               // color: Colors.lightBlue,
                               height: MediaQuery.of(context).size.height-330,
                               // width:500,
                               child: ListView.builder(
                                   shrinkWrap: true,
                                   itemCount: controller.listMyTask.length,
                                   // scrollDirection: Axis.horizontal,
                                   physics: BouncingScrollPhysics(),
                                   itemBuilder: (BuildContext context, int index) {
                                     String bg_SecondColor;
                                     return  Container(

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
                                     ) ;

                                   }),
                             ),
                             SizedBox(height: 12,),
                             InkWell(
                               child: Container(

                                 padding: EdgeInsets.only(left: 20,right: 20),

                                 child:  Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(
                                       'End of the day',
                                       style: TextStyles.textStyles_14_normal.apply(
                                           color: ColorStyle.primaryWhite
                                       ),
                                     ),
                                     Text(
                                       '6:00 pm',
                                       style: TextStyles.textStyles_14_normal.apply(
                                           color: ColorStyle.primaryWhite
                                       ),
                                     ),
                                   ],
                                 ),
                                 margin: EdgeInsets.only(bottom: 8),
                                 height: 55,
                                 // width: 300,
                                 decoration: BoxDecoration(
                                     color: ColorStyle.secondryBlack,
                                     borderRadius: BorderRadius.circular(20)
                                 ),
                               ),
                               onTap: (){
                                 Get.to(ChangePassword());
                               },
                             )
                           ],
                         ),
                       )
                 );
               },
             ),

    );
  }
}


months() {
  final controller = Get.put(MyAllTaskController());

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
                                    color: (controller.yes.value == index)
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
                                      color: (controller.yes.value == index)
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
                                  controller.yes.value = index;
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