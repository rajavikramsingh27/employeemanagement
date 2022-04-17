import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';


class Leave_3 extends StatelessWidget {
  const Leave_3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleAuth(
          title:      'Leave',
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
                      'Leave',
                      style: TextStyles.textStyles_16_normal.apply(
                          color: ColorStyle.secondryBlack
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      height: 60,
                      // color: Colors.yellow,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              width: 90,
                              height: 40,
                              child:Text(
                                'All leaves',
                                style: TextStyles.textStyles_14_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Text(
                          '2022',
                          style: TextStyles.textStyles_16_normal.apply(
                              color: ColorStyle.secondryBlack
                          ),
                        ),
                        SizedBox(width: 13),
                        Container(
                          alignment: Alignment.center,
                          width: 24,
                          height: 24,
                          child:Icon(
                            Icons.keyboard_arrow_down,
                          ),
                          decoration: BoxDecoration(
                            color: ColorStyle.grayColor,
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 29,),
                    Row(
                      children: [
                        Container(
                          width: 160,
                          height: 200,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 100,
                                child:Text(
                                  '5/10',
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.secondryBlack
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 10,
                                      color: ColorStyle.blueColor),
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'Sick Leave',
                                style: TextStyles.textStyles_16_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: ColorStyle.grayColor),
                            borderRadius: BorderRadius.all(Radius.circular(26)),
                          ),
                        ),
                        Spacer(),
                        // SizedBox(width: 10,),
                        Container(
                          width: 160,
                          height: 200,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 100,
                                child:Text(
                                  '5/10',
                                  style: TextStyles.textStyles_14_normal.apply(
                                      color: ColorStyle.secondryBlack
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 10,
                                      color: ColorStyle.secondryBlack),
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'Causal Leave',
                                style: TextStyles.textStyles_16_normal.apply(
                                    color: ColorStyle.secondryBlack
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: ColorStyle.grayColor),
                            borderRadius: BorderRadius.all(Radius.circular(26)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.center,
                width: 250,
                height: 60,
                child:Text(
                  '+  Apply leaves',
                  style: TextStyles.textStyles_14_normal.apply(
                      color: ColorStyle.primaryWhite
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorStyle.secondryBlack,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),






            ],
          ),
        )

    );
  }
}
