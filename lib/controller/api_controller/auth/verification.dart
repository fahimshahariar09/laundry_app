import 'dart:developer';

class VerificationService {
  static Future<bool> verificationService({
    required String num,
    required String num1,
    required String num2,
    required String num3,
  }) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return true;
    } catch (e) {
      log("error :$e");
    }
    return false;
  }
}
