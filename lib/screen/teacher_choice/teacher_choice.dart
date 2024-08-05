// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/subject%20details/SubjectDetails.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Teacher_choice extends StatelessWidget {
  const Teacher_choice({Key? key}) : super(key: key);
  static const name = 'Teacherchoice';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text('Select a teacher'),
          backgroundColor: AppColor().app_color,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuerypage.screenHeight! * 0.03,
                  bottom: MediaQuerypage.screenHeight! * 0.02,
                  left: MediaQuerypage.screenWidth! * 0.01,
                  right: MediaQuerypage.screenWidth! * 0.01,
                ),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: const Color(0xFFE9E9E9),
                      filled: true,
                      suffixIcon:
                          Icon(Icons.search, color: AppColor().app_color),
                      // errorText: 'Enter your mobile number'
                      hintText: 'Search'),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Subject_Details.name);
                },
                child: Card(
                  child: ListTile(
                      title: Text(
                    '1\tt    DR.jahed khan/ctg commerce College',
                    style: Textstyle().userinfo_16boldblack,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
