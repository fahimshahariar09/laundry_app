import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/auth/sign_in.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_loading_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/widget/email_text_field.dart';
import 'package:laundry/view/screen/auth/widget/password_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Form(
            key: signInController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 30),
                CommonText(titel: "Sign In", fSize: 20, fColor: Colors.white),
                SizedBox(height: 50),
                EmailTextField(
                  emailController: signInController.emailController,
                ),
                SizedBox(height: 20),
                PasswordTextField(
                    passController: signInController.passwordController),
                SizedBox(height: 20),
                Obx(() => signInController.isLoading.isFalse
                    ? CommonButton(
                        buttonName: "Sign In",
                        onTap: () {
                          if (!signInController.formKey.currentState!
                              .validate()) {
                            return;
                          }
                          signInController.signinFun();
                          log("............message..............");
                        })
                    : CommonLoadingButton()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
