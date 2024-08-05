// ignore_for_file: camel_case_types, non_constant_identifier_names, unrelated_type_equality_checks

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class Internet_cheaker extends GetxController {
  // late StreamSubscription _listener;
  // RxBool internet_cheak = false.obs;
  @override
  void onInit() {
    cheak_connection();
    super.onInit();
  }

  Stream<bool> cheak_connection() {
    var connectivityResult = (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return Stream.value(true);
    } else {
      return Stream.value(true);
    }
  }
}
