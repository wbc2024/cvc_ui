// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:cbc/lottie%20filename/lottie.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget NoInternet() {
  return Scaffold(
    body: ListView(
      children: [
        // Load a Lottie file from your assets
        Lottie.asset(Lottie_fileName().loading),
      ],
    ),
  );
}
