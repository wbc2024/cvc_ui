// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, must_be_immutable

import 'package:cbc/screen/dashboard/compnonet/Bottom_naviagtionbar.dart';
import 'package:cbc/screen/dashboard/viewitem/Download.dart';
import 'package:cbc/screen/dashboard/viewitem/home.dart';
import 'package:cbc/screen/dashboard/viewitem/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'controller/Dashboard_Controller.dart';
import 'viewitem/userinfo.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);
  static const name = 'dashboard';
  // variable
  List widget = [
    Home(),
    Search(),
    Download(),
    UserInfo(),
  ];
  //
  Dashboard_Controller dashboard_controller = Get.put(Dashboard_Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Obx(() => widget[dashboard_controller.view.value]),
      bottomNavigationBar: bottomNavigationbar(),
    ));
  }
}
