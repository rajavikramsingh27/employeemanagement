import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeController extends GetxController {
  Rx<TextEditingController> txtOTP_First = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Second = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Third = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Fourth = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Five = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Six = TextEditingController().obs;

  FocusNode focusFirst = FocusNode();
  FocusNode focusSecond = FocusNode();
  FocusNode focusThird = FocusNode();
  FocusNode focusFourth = FocusNode();
  FocusNode focusFive = FocusNode();
  FocusNode focusSix = FocusNode();

  RxDouble height = 0.0.obs;

  reset() {
    Future.delayed(Duration(milliseconds: 50), () {
      BuildContext contextScreen = Get.context!;
      contextScreen;
      height.value = MediaQuery.of(contextScreen).size.height -
          (MediaQuery.of(contextScreen).padding.top + kToolbarHeight);
    });
  }

  authenticate() {
    print(txtOTP_First.value.text);
    print(txtOTP_Second.value.text);
    print(txtOTP_Third.value.text);
    print(txtOTP_Fourth.value.text);

    // Get.offAll(TabbarScreen());
  }
}
