import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreenController extends GetxController {
  Rx<TextEditingController> txtControllerApply = TextEditingController().obs;

  RxList<bool> listApply = [
    false,
    false,

  ].obs;

  RxList<String> applyListSelect = [
   " Apply leave",
    " View attendance",

  ].obs;

}
