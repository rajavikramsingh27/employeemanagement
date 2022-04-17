import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyLeaveController extends GetxController {
  RxBool agree = false.obs;
  RxInt yesandno = 0.obs;

  reset() {
    yesandno.value = 0;
    agree.value;
  }

  RxList<String> listApplyLeave = [
    'Awaiting  ',
    'Approved',
    'Declined',
  ].obs;

  RxList<bool> listMonthSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ].obs;
  RxList<String> listMonths = [
    'January 2022 ',
    'February 2022',
    'March 2022',
    'April 2022',
    'May 2022',
    'Jun 2022',
    'July 2022',
    'August 2022',
    'September 2022',
    'November 2022',
    'Decemeber 2022'
  ].obs;
}
