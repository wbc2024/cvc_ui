// ignore_for_file: prefer_const_constructors

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:flutter/material.dart';

AppBar homeaappbar(double radius, GlobalKey<ScaffoldState> _scaffoldKey) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 1.0,
    backgroundColor: AppColor().app_color,
    shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(radius * 20),
            bottomRight: Radius.circular(radius * 20))),
    bottom: PreferredSize(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/userimage.png'),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.white),
                    )),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                    iconSize: 30,
                    icon: Icon(Icons.segment),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: radius * 3, left: radius * 10, bottom: radius * 5),
              child: Text(
                'Hey,What would you \nlike to learn Today?',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        preferredSize: Size(
            MediaQuerypage.screenWidth!, MediaQuerypage.screenHeight! * 0.08)),
  );
}
