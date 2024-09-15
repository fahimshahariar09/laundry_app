import 'dart:developer';

import 'package:get/get.dart';

class SignInService {
  static Future<bool> signinService({required String email,required String password,}) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      Get.snackbar("message", "Sign In Success");
      return true;
    } catch (e) {
      log("error :$e");
    }
    Get.snackbar("message", "Something went wrong");
    return false;
  }
}
