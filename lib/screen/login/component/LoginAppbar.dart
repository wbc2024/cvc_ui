// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, file_names

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';

LoginAppbar() {
  var radius = MediaQuerypage.smallSizeWidth!;
  return AppBar(
    elevation: 1.0,
    backgroundColor: AppColor().app_color,
    shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius * 20),
            bottomRight: Radius.circular(radius * 20))),
    bottom: PreferredSize(
      preferredSize: Size(
        MediaQuerypage.screenWidth!,
        MediaQuerypage.screenHeight! * 0.05,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 18.0),
        child: Text(
          'Welcome to app Login',
          style: Textstyle().login_appbar_22Bold,
        ),
      ),
    ),
  );
}
