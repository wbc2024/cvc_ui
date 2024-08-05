// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  // Create button

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Center(
        child: Column(
      children: [
        Icon(
          Icons.help_outline,
          color: AppColor().app_color,
          size: 50,
        ),
        Text(
          "Want to logout?",
          style: Textstyle().choice_20balck,
        ),
      ],
    )),
    content: const Text("Do you want to logout this app?"),
    actions: [
      Container(
          color: Colors.red[300],
          height: MediaQuerypage.screenHeight! * 0.04,
          width: MediaQuerypage.screenWidth! * 0.15,
          alignment: Alignment.center,
          child: Text('No', style: TextStyle(color: Colors.white))),
      SizedBox(
        width: MediaQuerypage.screenWidth! * 0.08,
      ),
      Container(
          color: Colors.green,
          height: MediaQuerypage.screenHeight! * 0.04,
          width: MediaQuerypage.screenWidth! * 0.15,
          alignment: Alignment.center,
          child: Text(
            'Yes',
            style: TextStyle(color: Colors.white),
          )),
      SizedBox(
        width: MediaQuerypage.screenWidth! * 0.1,
      )
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
