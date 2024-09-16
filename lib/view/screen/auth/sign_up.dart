import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/auth/sign_up.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_loading_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/widget/email_text_field.dart';
import 'package:laundry/view/screen/auth/widget/password_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController =Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CommonText(titel: "Sign Up", fSize: 20, fColor: Colors.white),
              SizedBox(height: 50),
              EmailTextField(
                emailController: signUpController.emailController,
              ),
              SizedBox(height: 20),
              PasswordTextField(
                passController: signUpController.passwordController,
                icon: Icon(
                  Icons.visibility,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?"),
                ],
              ),
              SizedBox(height: 15),
              Obx(() => signUpController.isLoading.isFalse
                  ? CommonButton(
                      buttonName: "Sign In",
                      onTap: () {
                        if (!signUpController.formKey.currentState!
                            .validate()) {
                          return;
                        }
                        signUpController.signupFun();
                        log("..........................");
                      })
                  : CommonLoadingButton()),
              SizedBox(height: 20),
              Text("OR"),
              SizedBox(height: 20),
              Image.asset(
                AppImages.splash,
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    titel: "Don't have an Account? ",
                    fColor: Colors.white,
                    fWeight: FontWeight.w400,
                  ),
                  CommonText(
                    titel: "Sign Up",
                    fColor: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
