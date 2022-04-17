import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleAuth(
          title:      'Task details',
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
                    SizedBox(height: 25,),
                    Text(
                      'Task details',
                      style: TextStyles.textStyles_16_bold.apply(
                          color: ColorStyle.secondryBlack
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.only(left: 16,right: 16,top: 16),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Team meeting',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.primaryWhite
                                ),
                              ),
                              Text(
                                '09:00 am',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.primaryWhite
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18,),
                          Text(
                            'Discusses with new project abc company with CRM management '
                                'system Lorem ipsum dolor sit amet, consetetur sadipscing elitr, '
                                'sed diam nonumy eirmod tempor. invidunt ut labore et dolore '
                                'magna aliquyam erat, sed diam voluptu.',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.primaryWhite
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                             color: ColorStyle.blueColor,
                          borderRadius:BorderRadius.circular(18),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text(
                      'Task update',
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
                                'Completed',
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
                    SizedBox(height: 16,),
                    Text(
                      'Task update details ',
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
                    SizedBox(height: 20,),
                    Container(
                      width: 160,
                      height: 60,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.link_sharp,
                            color: ColorStyle.primaryWhite,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Attach File',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.primaryWhite
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: ColorStyle.secondryBlack,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 60,
                child:Text(
                  'Submit',
                  style: TextStyles.textStyles_14_normal.apply(
                      color: ColorStyle.primaryWhite
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorStyle.grayColor,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),






            ],
          ),
        )

    );
  }
}
