
// ignore_for_file: camel_case_types, file_names

import 'package:get/state_manager.dart';

class Dashboard_Controller extends GetxController {
  RxInt view = 0.obs;
  onchange(int value) {
    view.value = value;
  }
}
