// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names


import 'package:cbc/color.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';

class Download extends StatelessWidget {
  const Download({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColor().app_color,
              automaticallyImplyLeading: false,
              title: Text('Download Lecture'),
            ),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                    Image(image: AssetImage('assets/emptydownload.png'),),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Empty Download File',
                      style: Textstyle().download_bold20black,
                    ),
                  )
                ])));
  }
}
