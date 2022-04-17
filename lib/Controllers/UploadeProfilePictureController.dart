import 'dart:io';

import 'package:employeemanagement/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UploadeProfilePictureController extends GetxController {

  File filePostPicture = File('');
  Rx<Image> postPicture = Image.asset(ImageStyle.camara, fit: BoxFit.cover,).obs;

  reset() {
    filePostPicture = File('');
    postPicture.value = Image.asset(ImageStyle.camara, fit: BoxFit.cover, height: 50,);
  }

}
