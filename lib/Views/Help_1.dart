import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';

class Help_1 extends StatelessWidget {
  const Help_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleAuth(
          title:      'Help',
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body:SingleChildScrollView(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(
                      'Your query',
                      style: TextStyles.textStyles_16_normal.apply(
                          color: ColorStyle.secondryBlack
                      ),
                    ),
                    SizedBox(height: 14,),
                    Container(
                      padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                      height: 231,
                      width: MediaQuery.of(context).size.width,
                      child:  Text(
                      'Lorem ipsum dolor sit amet, consetetur '
                       'sadipscing elitr, sed diam nonumy eirmod'
                      'tempor invidunt ut labore et dolore magna'
                      'aliquyam erat, sed diam voluptua. ',
                        style: TextStyles.textStyles_14_normal.apply(
                            color: ColorStyle.secondryBlack
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: ColorStyle.grayColor),
                        borderRadius:BorderRadius.circular(18),
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
                    SizedBox(height: 20,),
                    Container(
                      width: 160,
                      height: 60,
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 5,),
                          Icon(
                            Icons.picture_as_pdf,
                            color: ColorStyle.secondryBlack,
                          ),
                          Text(
                            'abc.pdf',
                            style: TextStyles.textStyles_14_normal.apply(
                                color: ColorStyle.secondryBlack
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 1,
                            height: MediaQuery.of(context).size.height,
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
                          Icon(
                            Icons.cancel,
                            color: ColorStyle.secondryBlack,
                            size: 25,
                          ),
                          SizedBox(width: 5,),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: ColorStyle.blueLight,
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
                  'Send',
                  style: TextStyles.textStyles_14_normal.apply(
                      color: ColorStyle.primaryWhite
                  ),
                ),
                decoration: BoxDecoration(
                  color: ColorStyle.blueColor,
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Email us if you have any questions',
                style: TextStyles.textStyles_12_normal.apply(
                    color: ColorStyle.secondryBlack
                ),
              ),
              SizedBox(height: 11,),
              Text(
                'help@abccompany.com',
                style: TextStyles.textStyles_12_normal.apply(
                    color: ColorStyle.secondryBlack
                ),
              ),






            ],
          ),
        )

    );
  }
}
