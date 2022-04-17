import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleAuth(
          title:      'Notifications',
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body:SingleChildScrollView(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:double.infinity,
                      height:MediaQuery.of(context).size.height,
                      // color: Colors.yellow,
                      child: ListView.builder(
                          padding: EdgeInsets.only(bottom: 75),
                          // scrollDirection: Axis.horizontal,
                          itemCount:20,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.only(top: 13),
                              // height: 200,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'New task assigned abc project ',
                                        style: TextStyles.textStyles_12_normal.apply(
                                            color: ColorStyle.secondryBlack
                                        ),
                                      ),
                                      Text(
                                        '12:34 pm',
                                        style: TextStyles.textStyles_12_normal.apply(
                                            color: ColorStyle.secondryBlack
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    'Discusses with new project abc company with '
                                        'CRM management system Lorem ',
                                    style: TextStyles.textStyles_12_normal.apply(
                                        color: ColorStyle.grayColor
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: ColorStyle.grayColor,
                                  ),

                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(18),
                              ),
                            );
                          }),
                    ),

                  ],
                ),
              ),






            ],
          ),
        )

    );
  }
}
