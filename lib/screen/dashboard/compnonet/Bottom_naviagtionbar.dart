// ignore_for_file: non_constant_identifier_names, file_names, prefer_const_constructors

import 'package:cbc/color.dart';
import 'package:cbc/screen/dashboard/controller/Dashboard_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

// cotroller for changeing view
Dashboard_Controller dashboard_controller = Get.find<Dashboard_Controller>();
BottomNavigationBar bottomNavigationbar() {
  return BottomNavigationBar(
    unselectedItemColor: AppColor().app_color,
    type: BottomNavigationBarType.fixed,
    unselectedLabelStyle:
        TextStyle(color: AppColor().app_color, fontWeight: FontWeight.bold),
    onTap: (value) {
      dashboard_controller.onchange(value);
    },
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: AppColor().app_color),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, color: AppColor().app_color),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.download_for_offline, color: AppColor().app_color),
        label: 'Download',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline, color: AppColor().app_color),
        label: 'Profile',
      ),
    ],
  );
}
