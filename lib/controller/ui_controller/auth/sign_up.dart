import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/api_controller/auth/sign_in.dart';
import 'package:laundry/controller/api_controller/api_controller/auth/sign_up.dart';

class SignInController extends GetxController {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conframpasswordController = TextEditingController();
  RxBool isLoading = false.obs;

  signinFun() async {
    isLoading.value = true;
    bool status = await SignUpService.signupService(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      conframpassword: conframpasswordController.text,
    );
    isLoading.value = false;
    return status;
  }

  @override
  void onInit() {
    nameController.text = "fahim";
    emailController.text = "fahim@gmail.com";
    passwordController.text = "12345678";
    conframpasswordController.text = "12345678";
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    conframpasswordController.dispose();
    super.dispose();
  }
}
