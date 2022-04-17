import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeMyTaskController extends GetxController {
  RxInt intAppBar = 0.obs;
  RxInt yes = 0.obs;
  RxBool agree = false.obs;
  RxList<String> listApplyLeave = [
    'All task  ',
    'Projects',
    'Meetings',
    'Interviews',
  ].obs;
  reset() {
    RxBool agree = false.obs;
    intAppBar.value = 0;
    RxInt yes = 0.obs;
  }

}
