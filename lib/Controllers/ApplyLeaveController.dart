import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplyLeaveController extends GetxController {
  RxInt selectUnselect = 0.obs;
  RxInt selectUnselec = 0.obs;

  reset() {
    // selectUnselect.value = 0;
    // selectUnselec.value = 0;
  }

  RxList<String> listApplyLeave = [
    'Awaiting  ',
    'Approved',
    'Declined',
  ].obs;
  RxList<String> listApply = [
    'All leaves  ',
    'Causal',
    'Sick',
    'Earned Leave',
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
