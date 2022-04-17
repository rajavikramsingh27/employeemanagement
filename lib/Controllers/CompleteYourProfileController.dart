import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Rx<TextEditingController> txtControllerPassword = TextEditingController().obs;

  RxList<bool> listPasswordHintsSelect = [
    false,
    false,
    false,
    false,
  ].obs;

  RxList<String> listPasswordHints = [
    '8 digits ',
    '1 uppercase',
    '1 numerical',
    '1 special sign',
  ].obs;

}
