// ignore_for_file: file_names, prefer_const_constructors

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/dashboard/darhboard.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Gorpe extends StatelessWidget {
  const Gorpe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor().app_color,
          title: Text('Select Your Grope'),
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
                            'Science',
                            style: Textstyle().choice_20balck,
                          ),
                        ))),
              ),
              Center(
                  child: Card(
                      color: AppColor().app_color,
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuerypage.screenWidth! * 0.8,
                        height: MediaQuerypage.screenHeight! * 0.07,
                        child: Text(
                          'Commerce',
                          style: Textstyle().choice_20balck,
                        ),
                      ))),
              Center(
                  child: Card(
                      color: AppColor().app_color,
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuerypage.screenWidth! * 0.8,
                        height: MediaQuerypage.screenHeight! * 0.07,
                        child: Text(
                          'Arts',
                          style: Textstyle().choice_20balck,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
