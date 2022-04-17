import 'package:employeemanagement/Controllers/ApplyLeaveController.dart';
import 'package:employeemanagement/Views/ApplyLeave.dart';
import 'package:employeemanagement/Views/EditProfile.dart';
import 'package:employeemanagement/Views/Leave.dart';
import 'package:employeemanagement/Views/Leave_3.dart';
import 'package:employeemanagement/Views/Notifications.dart';
import 'package:employeemanagement/Views/Profile.dart';
import 'package:employeemanagement/Views/TaskDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:employeemanagement/Views/SplashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, home: Leave_3());
  }
}
