// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'package:cbc/color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class App_Toast {
  toastshow(String value) {
    Fluttertoast.showToast(
        msg: value,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: AppColor().app_color,
        fontSize: 16.0);
  }
}
