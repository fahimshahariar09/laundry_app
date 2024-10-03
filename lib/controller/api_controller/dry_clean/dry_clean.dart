
import 'dart:developer';

class DryCleanService {
  static Future drycleanService() async {
    try {} catch (e) {
      log("error $e");
    }
    return;
  }
}
