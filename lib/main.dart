// ignore_for_file: prefer_const_constructors, duplicate_import, must_be_immutable

import 'package:cbc/color.dart';
import 'package:cbc/screen/choice/choice.dart';
import 'package:cbc/screen/dashboard/darhboard.dart';
import 'package:cbc/screen/level/level.dart';
import 'package:cbc/screen/login/login.dart';
import 'package:cbc/screen/registation/registation.dart';
import 'package:cbc/screen/subject%20details/SubjectDetails.dart';
import 'package:cbc/screen/teacher_choice/teacher_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  /*
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black,
    statusBarColor: AppColor().app_color,
  ));
  */
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Map<int, Color> color = {0: Colors.white, 1: Colors.black};
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      /*
      theme: ThemeData(
        primarySwatch: AppColor().theam,
      ),
      */
      initialRoute: LogIn.name,
      routes: {
        LogIn.name: (context) => LogIn(),
        Registation.name: (context) => Registation(),
        Choice.name: (context) => Choice(),
        Level.name: (context) => Level(),
        Dashboard.name: (context) => Dashboard(),
        Teacher_choice.name: (context) => Teacher_choice(),
        Subject_Details.name: (context) => Subject_Details(),
      },
    );
  }
}
