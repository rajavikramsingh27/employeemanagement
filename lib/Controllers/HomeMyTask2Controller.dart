import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeMyTask2Controller extends GetxController {

  RxBool agree = false.obs;
  RxInt yes = 0.obs;

  RxList<String> listMyTask = [
    'Completed',
    'Cancel',
    'Other',
  ].obs;
  reset() {
    RxBool agree = false.obs;
    RxInt yes = 0.obs;
  }


}
