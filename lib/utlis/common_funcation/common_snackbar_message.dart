import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonSnackbarMessage {
  static noInternetConnection() {
    Get.snackbar("You are offline !!", "Please check internet connection.",
        backgroundColor: Colors.red.shade50,
        colorText: Colors.redAccent,
        snackStyle: SnackStyle.FLOATING,
        duration: const Duration(seconds: 1),
        overlayBlur: 5,
        icon: const Icon(
          Icons.wifi_off_outlined,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }

  static errorMessage({String? titel, required String text}) {
    Get.snackbar(titel ?? "message", text,
        backgroundColor: Colors.red.shade50,
        colorText: Colors.red,
        duration: const Duration(seconds: 2),
        overlayBlur: 3,
        icon: const Icon(
          Icons.error,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }

  static successMessage({String? titel, required String text, IconData? icon}) {
    Get.snackbar(titel ?? "successful", text,
        backgroundColor: Colors.blue.shade700,
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
        overlayBlur: 3,
        icon: Icon(
          icon ?? Icons.verified_user_sharp,
          color: Colors.red,
        ),
        snackPosition: SnackPosition.TOP);
  }
}
