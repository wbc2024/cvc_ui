// ignore_for_file: camel_case_types, avoid_print, file_names

import 'package:cbc/Servcice%20all%20api/App_api.dart';
import 'package:dio/dio.dart';
import 'package:get/state_manager.dart';

class Login_apicontroller extends GetxController {
  RxBool passwordshow = true.obs;
  passwordviewside() {
    passwordshow.value = !passwordshow.value;
  }

  RxInt code = 0.obs;
  login(String email, String password) async {
    try {
      Response response = await Dio().post(Service().login,
          queryParameters: {'email': email, 'password': password});
      code.value = response.statusCode!;
      print('login code : ' + code.toString());
    } catch (e) {
      print('Error creating login controller: $e');
    }
  }
}
