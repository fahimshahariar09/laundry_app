import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/auth/verification.dart';

class VerificationController extends GetxController {
  TextEditingController numController = TextEditingController();
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();

  RxBool isLoading = true.obs;

  verficationFun() async {
  bool status = await  VerificationService.verificationService(
      num: numController.text,
      num1: num1Controller.text,
      num2: num2Controller.text,
      num3: num3Controller.text,
    );
  return status;
  }

  @override
  void onInit() {
    numController.text ="2";
    num1Controller.text ="8";
    num2Controller.text ="6";
    num3Controller.text ="9";
    super.onInit();
  }

  @override
  void dispose() {
    numController.dispose();
    num1Controller.dispose();
    num2Controller.dispose();
    num3Controller.dispose();
    super.dispose();
  }

}
