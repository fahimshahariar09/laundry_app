

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/auth/forget_password.dart';

class ForgetPasswordController extends GetxController{
  final TextEditingController emailController =TextEditingController();
  RxBool isLoading =true.obs;


  forgetpassFun()async{
    isLoading.value =true;
    bool status = await ForgetPasswordService.forgetpasswordservice(email: emailController.text);
    if(status){
      return;
    }
  }
  @override
  void onInit() {
    emailController.text ="fahim@gmail.com";
    super.onInit();
  }
@override
  void dispose() {
  emailController.dispose();
    super.dispose();
  }

}