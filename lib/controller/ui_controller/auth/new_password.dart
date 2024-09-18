

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController{
  TextEditingController newpassController =TextEditingController();
  TextEditingController conframpassController =TextEditingController();
  RxBool isLoading =true.obs;

  @override
  void onInit() {
    newpassController.text = "12345678";
    conframpassController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    newpassController.dispose();
    conframpassController.dispose();
    super.dispose();
  }

}