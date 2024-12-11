import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ChangePasswordService {
  static Future<bool> changepassword(
      {required String currentPass,
      required String newPass,
      required String confPass}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      await EasyLoading.showSuccess("Changed");
      return true;
    } catch (e) {
      debugPrint('error $e');
    }
    await EasyLoading.showError("something went wrong..!!");
    return false;
  }
}
