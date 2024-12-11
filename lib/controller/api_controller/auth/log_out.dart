import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LogOutService {
  static Future<bool> logoutService() async {
    try {
      await EasyLoading.showSuccess("Log Out Successful");
      return true;
    } catch (e) {
      debugPrint("error $e");
    }
    await EasyLoading.showError("something went wrong..");
    return false;
  }
}
