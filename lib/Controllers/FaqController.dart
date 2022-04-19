import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FaqController extends GetxController {
  RxList<bool> listSelected = [false].obs;

  reset() {
    listSelected.clear();

    for (int i = 0; i<10; i ++) {
      listSelected.add(false);
    }
  }
}
