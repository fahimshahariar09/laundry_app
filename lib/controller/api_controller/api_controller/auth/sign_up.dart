import 'dart:developer';

import 'package:get/get.dart';

class SignUpService {
  static Future<bool> signupService({required String name,required String email,required String password,required String conframpassword,}) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
     // Get.snackbar("message", "Sign In Success");
      return false;
    } catch (e) {
      log("error :$e");
    }
   // Get.snackbar("message", "Something went wrong");
    return false;
  }
}
