import 'package:date_time_picker/date_time_picker.dart';
import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Controllers/ApplyLeaveController.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ApplyLeave extends StatelessWidget {
  const ApplyLeave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ApplyLeaveController());


    return Scaffold(
      appBar: AppBarStyleAuth(
        title:      'Apply leave',
      ),
      backgroundColor: ColorStyle.primaryWhite,
      body:SingleChildScrollView(
        padding: EdgeInsets.only(left: 16,right: 16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text(
              'Select Leave Type',
              style: TextStyles.textStyles_16_normal.apply(
                  color: ColorStyle.secondryBlack
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 110,
                  height: 60,
                  child:Text(
                    'Causal',
                    style: TextStyles.textStyles_14_normal.apply(
                        color: ColorStyle.secondryBlack
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: ColorStyle.grayColor),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  alignment: Alignment.center,
                  width: 110,
                  height: 60,
                  child:Text(
                    'Size',
                    style: TextStyles.textStyles_14_normal.apply(
                        color: ColorStyle.secondryBlack
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: ColorStyle.grayColor),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(
              'Select Duration',
              style: TextStyles.textStyles_16_normal.apply(
                  color: ColorStyle.secondryBlack
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width:double.infinity,
              height: 60,
              // color: Colors.yellow,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 10),
                      alignment: Alignment.center,
                      width: 110,
                      height: 60,
                      child:Text(
                        'Multiple days',
                        style: TextStyles.textStyles_14_normal.apply(
                            color: ColorStyle.secondryBlack
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: ColorStyle.grayColor),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    );
                  }),
            ),


            SizedBox(height: 15,),
            Text(
              'Date',
              style: TextStyles.textStyles_16_normal.apply(
                  color: ColorStyle.secondryBlack
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 45,
              width: MediaQuery.of(context).size.width,
              child: DateTimePicker(
                  initialValue: '',
                  dateMask: 'd MMM yyyy',
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  decoration: InputDecoration(
                    border: InputBorder.none,

                  ),
                  dateLabelText: 'dd/mm/yyyy',
                  onChanged: (date) {
                    controller.dateOfBirth.value = date;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the Date Of Birth';
                    }
                    return null;
                  },
                  onSaved: (val) => print("On Saved")),
              decoration: BoxDecoration(
                // color: Colors.red,
                  borderRadius:BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.black26,
                    width: 1,
                  )
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Cause',
              style: TextStyles.textStyles_16_normal.apply(
                  color: ColorStyle.secondryBlack
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 10,top: 10),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: 'Write here.....'
                ),
              ),
              decoration: BoxDecoration(
                // color: Colors.red,
                  borderRadius:BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.black26,
                    width: 1,
                  )
              ),
            ),
            SizedBox(height: 45,),
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 60,
              child:Text(
                'Apply leaves',
                style: TextStyles.textStyles_14_normal.apply(
                    color: ColorStyle.primaryWhite
                ),
              ),
              decoration: BoxDecoration(
                  color: ColorStyle.grayColor,
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
            ),

            // Expanded(
            //   child: ListView.builder(
            //     shrinkWrap: true,
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 3,
            //     itemBuilder: (context, index) {
            //       return Container(
            //         padding: EdgeInsets.all(16.0),
            //         child:  Row(
            //           children: [
            //             Container(
            //               alignment: Alignment.center,
            //               width: 110,
            //               height: 60,
            //               child:Text(
            //                 'Half day',
            //                 style: TextStyles.textStyles_14_normal.apply(
            //                     color: ColorStyle.secondryBlack
            //                 ),
            //               ),
            //               decoration: BoxDecoration(
            //                 border: Border.all(
            //                     width: 1,
            //                     color: ColorStyle.grayColor),
            //                 borderRadius: BorderRadius.all(Radius.circular(20)),
            //               ),
            //             ),
            //             // SizedBox(width: 10,),
            //             // Container(
            //             //   alignment: Alignment.center,
            //             //   width: 110,
            //             //   height: 60,
            //             //   child:Text(
            //             //     'Full day',
            //             //     style: TextStyles.textStyles_14_normal.apply(
            //             //         color: ColorStyle.secondryBlack
            //             //     ),
            //             //   ),
            //             //   decoration: BoxDecoration(
            //             //     border: Border.all(
            //             //         width: 1,
            //             //         color: ColorStyle.grayColor),
            //             //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //             //   ),
            //             // ),
            //             // SizedBox(width: 20,),
            //             // Container(
            //             //   alignment: Alignment.center,
            //             //   width: 110,
            //             //   height: 60,
            //             //   child:Text(
            //             //     'Multiple days',
            //             //     style: TextStyles.textStyles_14_normal.apply(
            //             //         color: ColorStyle.secondryBlack
            //             //     ),
            //             //   ),
            //             //   decoration: BoxDecoration(
            //             //     border: Border.all(
            //             //         width: 1,
            //             //         color: ColorStyle.grayColor),
            //             //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //             //   ),
            //             // ),
            //           ],
            //         ),
            //       );
            //     }),),





          ],
        ),
      )

    );
  }
}
