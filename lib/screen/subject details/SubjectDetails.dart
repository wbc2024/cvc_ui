// ignore_for_file: prefer_const_constructors, file_names, camel_case_types

import 'package:cbc/color.dart';
import 'package:cbc/screen/exam/exam.dart';
import 'package:cbc/screen/suggestion/suggestion.dart';
import 'package:cbc/screen/videoview/Videoview.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Subject_Details extends StatelessWidget {
  const Subject_Details({Key? key}) : super(key: key);
  static const name = 'Subject_Details';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor().app_color,
            title: Text('Subject Details'),
            bottom: TabBar(
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(
                  text: "CHAPTER",
                  icon: Icon(
                    Icons.view_comfy,
                  ),
                ),
                Tab(
                  text: "SUGGESTION",
                  icon: Icon(
                    Icons.local_library,
                  ),
                ),
                Tab(
                  text: "EXAM",
                  icon: Icon(
                    Icons.hourglass_empty,
                  ),
                ),
              ],
            ),
          ),
          body: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(VideoPlay());
                            },
                            child: Card(
                                child: Center(
                                    child: ListTile(
                              leading: Text(
                                '1',
                                style: Textstyle().subjectdetails_orange20,
                              ),
                              title: Text(
                                'ALL MODEL QUESTION ACCOUNTING-01',
                                style: Textstyle().subjectdetails_orange16,
                              ),
                            ))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(Suggestion());
                            },
                            child: Card(
                                child: Center(
                                    child: ListTile(
                              leading: Text(
                                '1',
                                style: Textstyle().subjectdetails_orange20,
                              ),
                              title: Text(
                                'ALL MODEL QUESTION ACCOUNTING-01',
                                style: Textstyle().subjectdetails_orange16,
                              ),
                            ))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(Exam());
                            },
                            child: Card(
                                child: Center(
                                    child: ListTile(
                              leading: Text(
                                '1',
                                style: Textstyle().subjectdetails_orange20,
                              ),
                              title: Text(
                                'ALL MODEL QUESTION ACCOUNTING-01',
                                style: Textstyle().subjectdetails_orange16,
                              ),
                            ))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
