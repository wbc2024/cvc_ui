// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, must_be_immutable

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/dashboard/darhboard.dart';
import 'package:cbc/screen/grope/Grope.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class Choice extends StatelessWidget {
  Choice({Key? key}) : super(key: key);
  static const name = 'Choice';
  List class_name = [
    'Hsc',
    'Ssc',
    'Jsc',
    'Class 7',
    'Class 6',
    'Class 5',
    'Class 4',
    'Class 3',
    'Class 2',
    'Class 1',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Choice'),
        elevation: 1.0,
        backgroundColor: AppColor().app_color,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuerypage.screenHeight! * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Select your class',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3,
                            crossAxisSpacing: 40,
                            mainAxisSpacing: 40),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: () {
                          if (class_name[0] == class_name[index] ||
                              class_name[1] == class_name[index]) {
                            Get.to(Gorpe());
                          } else {
                            Get.toNamed(Dashboard.name);
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(class_name[index]),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
