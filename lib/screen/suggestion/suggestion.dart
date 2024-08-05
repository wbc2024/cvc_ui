// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:cbc/color.dart';
import 'package:flutter/material.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor().app_color,
          title: Text('All MODEL QUESTION ACOUNTING-01'),
        ),
        body: Container(),
      ),
    );
  }
}
