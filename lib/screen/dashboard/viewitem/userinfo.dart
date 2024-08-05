// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/dashboard/compnonet/dialogbox.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  UserInfo({Key? key}) : super(key: key);
  static const name = 'userinfo';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: AppColor().app_color,
          automaticallyImplyLeading: false,
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: (){
                  showAlertDialog(context);
                },
                icon:  Icon(
                  Icons.done_outline,
                ),
              ),
            ),
          ],
        ),
        body: Stack(alignment: Alignment.topCenter, children: [
          Positioned(
            top: MediaQuerypage.screenHeight! * 0.15,
            //left: MediaQuerypage.screenWidth! * 0.2,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical! * 2,
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuerypage.screenHeight! * 0.05,
                      width: MediaQuerypage.screenWidth! * 0.7,
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuerypage.screenWidth! * 0.03,
                          bottom: MediaQuerypage.screenWidth! * 0.02,
                        ),
                        child: Center(child: Text('Name')),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuerypage.screenWidth! * 0.03,
                        ),
                        child: Center(child: Text('Mhmridul2400#gmail.com')),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          height: MediaQuerypage.screenHeight! * 0.03,
                          width: MediaQuerypage.screenWidth! * 0.7,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuerypage.screenWidth! * 0.03,
                            bottom: MediaQuerypage.screenWidth! * 0.03,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mode_edit,
                                color: AppColor().app_color,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: MediaQuerypage.smallSizeWidth! * 2),
                                child: Text('Edit Profile',
                                    style: Textstyle().userinfo_16boldblack),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuerypage.screenWidth! * 0.02,
                            bottom: MediaQuerypage.screenWidth! * 0.02,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.visibility,
                                color: AppColor().app_color,
                              ),
                              SizedBox(
                                width: MediaQuerypage.smallSizeWidth! * 2,
                              ),
                              Text('Saved Question',
                                  style: Textstyle().userinfo_16boldblack),
                            ],
                          ),
                        ),
                        Divider(thickness: 10, color: Colors.red),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuerypage.screenWidth! * 0.02,
                            bottom: MediaQuerypage.screenWidth! * 0.02,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.message,
                                color: AppColor().app_color,
                              ),
                              SizedBox(
                                width: MediaQuerypage.smallSizeWidth! * 2,
                              ),
                              Text(
                                'Contact Us',
                                style: Textstyle().userinfo_16boldblack,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuerypage.screenWidth! * 0.02,
                            bottom: MediaQuerypage.screenWidth! * 0.02,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColor().app_color,
                              ),
                              SizedBox(
                                width: MediaQuerypage.smallSizeWidth! * 2,
                              ),
                              Text(
                                'Rate Us',
                                style: Textstyle().userinfo_16boldblack,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuerypage.screenWidth! * 0.02,
                            bottom: MediaQuerypage.screenWidth! * 0.02,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.share,
                                color: AppColor().app_color,
                              ),
                              SizedBox(
                                width: MediaQuerypage.smallSizeWidth! * 2,
                              ),
                              Text(
                                'Share App',
                                style: Textstyle().userinfo_16boldblack,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuerypage.screenHeight! * .03,
            left: MediaQuerypage.screenWidth! * 0.3,
            child: CircleAvatar(
              radius: MediaQuerypage.smallSizeWidth! * 20,
            ),
          ),
        ]),
      ),
    );
  }
}
