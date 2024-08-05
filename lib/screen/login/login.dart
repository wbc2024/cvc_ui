// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable, unrelated_type_equality_checks, avoid_print

import 'package:cbc/Internet%20cheaker/Internet_cheaker.dart';
import 'package:cbc/color.dart';
import 'package:cbc/media_query.dart';
import 'package:cbc/screen/level/level.dart';
import 'package:cbc/screen/login/api_controller/Login_apiController.dart';
import 'package:cbc/screen/login/component/loginappbar.dart';
import 'package:cbc/screen/nointernet/Nointernet.dart';
import 'package:cbc/screen/registation/registation.dart';
import 'package:cbc/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);
  static const name = 'Login';

  // variable
  final formkey = GlobalKey<FormState>();
  Login_apicontroller login_apicontroller = Get.put(Login_apicontroller());
  // internet cheaker
  Internet_cheaker internet_cheaker = Get.put(Internet_cheaker());
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuerypage.init(context);
    return SafeArea(
      child: Scaffold(
          appBar: LoginAppbar(),
          body: ProgressHUD(
            indicatorColor: AppColor().app_color,
            child: Builder(builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  key: formkey,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: MediaQuerypage.screenHeight! * 0.08,
                      ),
                      Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuerypage.screenHeight! * 0.01,
                                  left: MediaQuerypage.screenWidth! * 0.03),
                              child: Text(
                                'Email or Mobile Number',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuerypage.screenHeight! * 0.01,
                                bottom: MediaQuerypage.screenHeight! * 0.01,
                                right: MediaQuerypage.screenWidth! * 0.02,
                                left: MediaQuerypage.screenWidth! * 0.02,
                              ),
                              child: TextFormField(
                                controller: email,
                                validator: (value) {
                                  if (email.text.toString().isEmpty) {
                                    return 'Enter valid email ';
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
                                  hintText: 'Email/Mobile Number',
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
                                  top: MediaQuerypage.screenHeight! * 0.01,
                                  bottom: MediaQuerypage.screenHeight! * 0.05,
                                  right: MediaQuerypage.screenWidth! * 0.02,
                                  left: MediaQuerypage.screenWidth! * 0.02,
                                ),
                                child: TextFormField(
                                  obscureText:
                                      login_apicontroller.passwordshow.value,
                                  controller: password,
                                  validator: (value) {
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
                                        login_apicontroller.passwordshow.value
                                            ? InkWell(
                                                onTap: () {
                                                  login_apicontroller
                                                      .passwordviewside();
                                                },
                                                child: Icon(
                                                  Icons.visibility_off,
                                                ),
                                              )
                                            : InkWell(
                                                onTap: () {
                                                  login_apicontroller
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
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                        child: InkWell(
                          onTap: () async {
                            Get.offAllNamed(Level.name);
                            if (formkey.currentState!.validate()) {
                              final progress = ProgressHUD.of(context);
                              progress?.show();
                              await login_apicontroller.login(
                                  email.text.toString(),
                                  password.text.toString());
                              print('In onpress method api after call');
                              print(login_apicontroller.code.value);
                              if (login_apicontroller.code.value == 200) {
                                progress?.dismiss();
                                Get.offAllNamed(Level.name);
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
                              'Log-in',
                              style: Textstyle().Botton_white18bold,
                            )),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add operation
                          Get.toNamed(Registation.name);
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
                            'Registation',
                            style: Textstyle().Botton_white18bold,
                          )),
                        ),
                      ),

                      //

                      //
                    ]),
                  ),
                ),
              );
            }),
          )),
    );
  }
}
