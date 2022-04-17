import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileController extends GetxController {
  Rx<TextEditingController> txtControllerPassword = TextEditingController().obs;


  RxList<String> listProfileSelect = [
    'My all task ',
    'Attendance reports',
    'Apply leaves',
    'Help',
    'FAQ',
    'Change password',
    'About us',
    'Privacy policy',
    'Terms of conditions',
    'Log out',
    'App version',
  ].obs;



  RxList<String> listProfile = [
    'Your complete task history ',
    'View all your attendance reports',
    'View your leaves status and apply for leaves',
    'View the help section if you are stuck',
    'Check out the Frequently Asked Questions',
    'Update your password',
    'Learn more about the company',
    'Privacy statement of the company',
    'Terms and conditions of the company',
    'You have logged out of the app',
    '1.0.0',
  ].obs;

}