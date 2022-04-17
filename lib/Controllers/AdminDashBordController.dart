import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashBordController extends GetxController {
  RxInt intAppBar = 0.obs;

  RxList<String> listAdminDashboard = [
    'Assigned task  ',
    'Create task',
    'Completed task',
  ].obs;
  reset() {

    intAppBar.value = 0;

  }

}
