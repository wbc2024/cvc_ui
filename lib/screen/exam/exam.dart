// ignore_for_file: prefer_const_constructors

import 'package:cbc/color.dart';
import 'package:flutter/material.dart';

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor().app_color,
          title: Text('Question'),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/exam1.png"),
              ),
            ),
            Icon(
              Icons.more_vert,
            ),
          ],
        ),
        body: Center(
            child: Text('Currently ,Question is not aviable in this chapter')),
      ),
    );
  }
}
