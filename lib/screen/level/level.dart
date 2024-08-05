// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/choice/choice.dart';
import 'package:cbc/screen/dashboard/darhboard.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Level extends StatelessWidget {
  Level({Key? key}) : super(key: key);
  static const name = 'level';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 1,
              backgroundColor: AppColor().app_color,
              title: Text(
                'Eduaction Systems.',
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.1,
                  ),
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.1,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Choice.name);
                    },
                    child: Center(
                        child: Card(
                            color: AppColor().app_color,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuerypage.screenWidth! * 0.8,
                              height: MediaQuerypage.screenHeight! * 0.07,
                              child: Text(
                                'School',
                                style: Textstyle().choice_20balck,
                              ),
                            ))),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Dashboard.name);
                    },
                    child: Center(
                        child: Card(
                            color: AppColor().app_color,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuerypage.screenWidth! * 0.8,
                              height: MediaQuerypage.screenHeight! * 0.07,
                              child: Text(
                                'Univercity',
                                style: Textstyle().choice_20balck,
                              ),
                            ))),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Dashboard.name);
                    },
                    child: Center(
                        child: Card(
                            color: AppColor().app_color,
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuerypage.screenWidth! * 0.8,
                              height: MediaQuerypage.screenHeight! * 0.07,
                              child: Text(
                                'LMS',
                                style: Textstyle().choice_20balck,
                              ),
                            ))),
                  ),
                ],
              ),
            )));
  }
}
