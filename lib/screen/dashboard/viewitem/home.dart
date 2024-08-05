// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:cbc/media_query.dart';
import 'package:cbc/screen/dashboard/compnonet/drower.dart';
import 'package:cbc/screen/dashboard/compnonet/homebody.dart';
import 'package:flutter/material.dart';

import '../compnonet/appbar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  static const name = 'home';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var radius = MediaQuerypage.smallSizeWidth!;
    return SafeArea(
        child: Scaffold(
      key: _scaffoldKey,
      endDrawer: homedrower(),
      appBar: homeaappbar(radius, _scaffoldKey),
      body: homebody(radius),
    ));
  }
}
