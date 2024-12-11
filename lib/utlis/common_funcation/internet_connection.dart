import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConnectionChecker {
  static Future<bool> connnectionCheck() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult[0] == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException  catch (e) {
      debugPrint("error $e");
    }
    return false;
  }
}
