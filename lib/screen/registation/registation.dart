// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, must_be_immutable, unused_local_variable, non_constant_identifier_names, avoid_print

import 'package:cbc/screen/login/login.dart';
import 'package:cbc/screen/registation/api%20Controller/register_apiController.dart';
import 'package:cbc/screen/registation/model/Registation_model.dart';
import 'package:cbc/toast/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import '../../color.dart';
import '../../media_query.dart';
import '../../textstyle.dart';

class Registation extends StatelessWidget {
  Registation({Key? key}) : super(key: key);
  static const name = 'registation';

  //variable
  final formkey = GlobalKey<FormState>();
  Registation_Api_controller registation_api_controller =
      Get.put(Registation_Api_controller());
  //
  TextEditingController username = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController mobile = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confiramPassword = TextEditingController();

  //
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColor().app_color,
        centerTitle: true,
        title: Text('Sign-up'),
      ),
      body: ProgressHUD(
        indicatorColor: AppColor().app_color,
        child: Builder(builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuerypage.screenHeight! * 0.02,
                        left: MediaQuerypage.screenWidth! * 0.03,
                      ),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          // top: MediaQuerypage.screenHeight! * 0.01,
                          left: MediaQuerypage.screenWidth! * 0.01,
                          right: MediaQuerypage.screenWidth! * 0.01,
                          bottom: MediaQuerypage.screenHeight! * 0.01),
                      child: TextFormField(
                        controller: username,
                        validator: (value) {
                          if (username.text.toString().length < 2) {
                            return 'Enter Your Name ';
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Color(0xFFE9E9E9),
                          filled: true,
                          hintText: 'Name',
                          // errorText: 'Enter your mobile number'
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuerypage.screenHeight! * 0.01,
                        left: MediaQuerypage.screenWidth! * 0.03,
                      ),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuerypage.screenWidth! * 0.01,
                          right: MediaQuerypage.screenWidth! * 0.01,
                          bottom: MediaQuerypage.screenHeight! * 0.01),
                      child: TextFormField(
                        controller: email,
                        validator: (value) {
                          if (email.text.toString().isEmpty) {
                            return 'Enter valid email';
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Color(0xFFE9E9E9),
                          filled: true,
                          hintText: 'email',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.01,
                          left: MediaQuerypage.screenWidth! * 0.03),
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuerypage.screenWidth! * 0.01,
                          right: MediaQuerypage.screenWidth! * 0.01,
                          bottom: MediaQuerypage.screenHeight! * 0.01),
                      child: TextFormField(
                        controller: mobile,
                        validator: (value) {
                          if (mobile.toString().length < 11) {
                            return 'Enter valid mobile number ';
                          }
                        },
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Color(0xFFE9E9E9),
                          filled: true,
                          hintText: 'mobile number',
                          // errorText: 'Enter your mobile number'
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.01,
                          left: MediaQuerypage.screenWidth! * 0.03),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuerypage.screenWidth! * 0.01,
                            right: MediaQuerypage.screenWidth! * 0.01,
                            bottom: MediaQuerypage.screenHeight! * 0.01),
                        child: TextFormField(
                          obscureText:
                              registation_api_controller.passwordshow.value,
                          controller: password,
                          validator: (value) {
                            print('password ' + value.toString());
                            if (password.text.toString().length < 5) {
                              return 'Passsword length must be 6';
                            }
                          },
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Color(0xFFE9E9E9),
                            filled: true,
                            hintText: 'password',
                            suffixIcon:
                                registation_api_controller.passwordshow.value
                                    ? InkWell(
                                        onTap: () {
                                          registation_api_controller
                                              .passwordviewside();
                                        },
                                        child: Icon(
                                          Icons.visibility_off,
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          registation_api_controller
                                              .passwordviewside();
                                        },
                                        child: Icon(
                                          Icons.visibility,
                                        ),
                                      ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.01,
                          left: MediaQuerypage.screenWidth! * 0.03),
                      child: Text(
                        'Confirm Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuerypage.screenWidth! * 0.01,
                            right: MediaQuerypage.screenWidth! * 0.01,
                            bottom: MediaQuerypage.screenHeight! * 0.01),
                        child: TextFormField(
                          obscureText:
                              registation_api_controller.passwordshow.value,
                          controller: confiramPassword,
                          validator: (value) {
                            if (confiramPassword.text.toString() !=
                                password.text.toString()) {
                              return 'Passsword Not Match';
                            }
                          },
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fillColor: Color(0xFFE9E9E9),
                            filled: true,
                            hintText: 'password',
                            suffixIcon:
                                registation_api_controller.passwordshow.value
                                    ? InkWell(
                                        onTap: () {
                                          registation_api_controller
                                              .passwordviewside();
                                        },
                                        child: Icon(
                                          Icons.visibility_off,
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          registation_api_controller
                                              .passwordviewside();
                                        },
                                        child: Icon(
                                          Icons.visibility,
                                        ),
                                      ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuerypage.screenHeight! * 0.01,
                        ),
                        child: InkWell(
                          onTap: () async {
                            if (formkey.currentState!.validate()) {
                              final progress = ProgressHUD.of(context);
                              progress?.show();
                              UserRegistationInfo userRegistationInfo =
                                  UserRegistationInfo(
                                      name: username.text.toString(),
                                      email: email.text.toString(),
                                      mobile: mobile.text.toString(),
                                      password: password.text.toString());
                              await registation_api_controller
                                  .postdata_register(
                                      userRegistationInfo.toMap());
                              if (registation_api_controller.code.value ==
                                      201 ||
                                  registation_api_controller.code.value ==
                                      200) {
                                progress?.dismiss();
                                await App_Toast()
                                    .toastshow("Successfully Regiter..");
                                Get.offAllNamed(LogIn.name);
                              }
                            }
                          },
                          child: Container(
                            width: MediaQuerypage.screenWidth! * 0.9,
                            height: MediaQuerypage.screenHeight! / 16,
                            decoration: BoxDecoration(
                              color: AppColor().app_color,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Center(
                                child: Text(
                              'Sign-up',
                              style: Textstyle().Botton_white18bold,
                            )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    ));
  }
}
