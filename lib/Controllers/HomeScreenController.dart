import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreenController extends GetxController {
  RxBool agree = false.obs;
  RxInt yesandno = 0.obs;

  reset() {
    yesandno.value = 0;
    agree.value;

  }

}
