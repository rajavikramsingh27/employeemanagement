import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';


class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyleAuth(
          title:      'Edit Profile',
        ),
        backgroundColor: ColorStyle.primaryWhite,
        body:SingleChildScrollView(
          padding: EdgeInsets.only(left: 16,right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Container(
                      width: 100,
                      height: 100,
                      child:Image.asset(
                        ImageStyle.person,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: ColorStyle.secondryBlack),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Change Profile Picture',
                      style: TextStyles.textStyles_16_normal.apply(
                          color: ColorStyle.secondryBlack
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        // margin: EdgeInsets.all(20),
                        child: TextField(
                          // controller: nameController,
                          decoration: InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: 'Full Name',
                          ),
                          // onChanged: (text) {
                          //   setState(() {
                          //     fullName = text;
                          //     //you can access nameController in its scope to get
                          //     // the value of text entered as shown below
                          //     //fullName = nameController.text;
                          //   });
                          // },
                        )),
                    SizedBox(height: 16,),
                    Container(
                        child: TextField(
                          // controller: nameController,
                          keyboardType:TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Employee ID',
                          ),
                        )),
                    SizedBox(height: 16,),
                    Container(
                        child: DateTimePicker(
                          dateMask: 'd MMM, yyyy',
                          initialValue: '',
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                          dateLabelText: 'Add your birthday',
                          onChanged: (val) => print(val),
                          validator: (val) {
                            print(val);
                            return null;
                          },
                          onSaved: (val) => print(val),
                        )),
                    SizedBox(height: 16,),
                    Container(
                        child: TextField(
                          // controller: nameController,
                          keyboardType:TextInputType.number,
                          decoration: InputDecoration(
                            labelText: 'Mobile number',
                          ),
                        )),
                    SizedBox(height: 16,),
                    Container(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Address',
                          ),
                        )),
                    SizedBox(height: 26,),
                    Text(
                      'Account details',
                      style: TextStyles.textStyles_16_normal.apply(
                          color: ColorStyle.secondryBlack
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'johndeo@abccompany.com ',
                      style: TextStyles.textStyles_16_normal.apply(
                          color: ColorStyle.secondryBlack
                      ),
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              ),






            ],
          ),
        )

    );
  }
}
