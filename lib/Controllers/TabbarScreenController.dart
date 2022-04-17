import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarScreenController extends GetxController {
  RxInt intAppBar = 0.obs;
  RxList<Icon> listIcons = [
    Icon(Icons.file_copy),
    Icon(Icons.email_outlined),
    Icon(Icons.medical_services),
    Icon(Icons.room_preferences),
    Icon(Icons.phone_enabled),
    Icon(Icons.create_new_folder),
    Icon(Icons.file_download),
  ].obs;


  reset() {
    intAppBar.value = 0;
  }

}
