import 'dart:io';

import 'package:employeemanagement/Components/AppBarStyle.dart';
import 'package:employeemanagement/Components/ButtonCustom.dart';
import 'package:employeemanagement/Styles/ColorStyle.dart';
import 'package:employeemanagement/Styles/TextStyles.dart';
import 'package:employeemanagement/Views/PermissionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Controllers/UploadeProfilePictureController.dart';

class UploadeProfilePicture extends StatelessWidget {
  const UploadeProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UploadeProfilePictureController());

    void _showPopupMenu() async {
      await showMenu(
        context: context,
        // position: RelativeRect.fromLTRB(100, 100, 100, 100),
        position: RelativeRect.fromLTRB(
            MediaQuery.of(context).size.width / 2 - 50,
            170,
            MediaQuery.of(context).size.width - 30,
            0),
        items: [
          PopupMenuItem(
            value: 1,
            child: Text("Camera"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Gallery"),
          ),
        ],
        elevation: 8.0,
      ).then((value) async {
        XFile image;
        final ImagePicker picker = ImagePicker();

        if (value == 1) {
          image = (await picker.pickImage(
              source: ImageSource.camera,
              maxWidth: 500
          ))!;
        } else if (value == 2) {
          image = (await picker.pickImage(
              source: ImageSource.gallery,
              maxWidth: 500
          ))!;
        }

        // controller.postPicture.value = Image.file(File(image.path),);
        // controller.filePostPicture  = File(image.path);
      });
    }

    return Scaffold(
        appBar: AppBarStyleAuth(
          title: 'Upload profile picture',
        ),
      backgroundColor: ColorStyle.primaryWhite,
      body: GetBuilder(
          init: UploadeProfilePictureController(),
          initState: (state) {
            controller.reset();
          },
          builder: (authController) {
            return Obx(() => Container(
              padding: EdgeInsets.only(left: 26, right: 26),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        alignment: Alignment.center,
                        child: InkWell(
                          child: ClipRRect(
                            borderRadius:
                            BorderRadius.circular(16),
                            child: Container(
                              alignment: Alignment.center,
                              height: 345,
                              width: 345,
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryWhite,
                                  borderRadius:
                                  BorderRadius.circular(50),
                                border: Border.all(
                                  width: 1,
                                  color: ColorStyle.grayColor,

                                )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  controller.postPicture.value,
                                  Text(
                                    'Upload profile picture',
                                    style: TextStyles.textStyles_12_normal.apply(
                                      color: Colors.black12
                                    ),
                                  ),
                                ],
                              )
                            ),
                          ),
                          onTap: () {
                            _showPopupMenu();
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButtonCustom(
                        text: "Verify",
                        colorBG: ColorStyle.grayColor,
                        colorText: ColorStyle.primaryWhite,
                        onTap: () {
                          Get.to(PermissionScreen());
                        },
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),
                ],
              ),
            ),);
          })


    );
  }
}
