// ignore_for_file: non_constant_identifier_names, camel_case_types, avoid_print, file_names

import 'package:cbc/Servcice%20all%20api/App_api.dart';
import 'package:dio/dio.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Registation_Api_controller extends GetxController {
  RxBool passwordshow = true.obs;
  passwordviewside() {
    passwordshow.value = !passwordshow.value;
  }

  RxInt code = 0.obs;
  postdata_register(Map<String, dynamic> value) async {
    try {
      Response response = await Dio().post(
        Service().registation,
        data: FormData.fromMap(value),
      );
      code.value = response.statusCode!;
      print('Response code' + code.value.toString());
    } catch (e) {
      print('Error creating user: $e');
    }
  }
}
