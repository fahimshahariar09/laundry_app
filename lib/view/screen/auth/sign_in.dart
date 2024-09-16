import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/icon.dart';
import 'package:laundry/constants/images.dart';
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: signInController.formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  CommonText(titel: "Sign In", fSize: 20, fColor: Colors.white),
                  SizedBox(height: 50),
                  EmailTextField(
                    emailController: signInController.emailController,
                  ),
                  SizedBox(height: 20),
                  PasswordTextField(
                      passController: signInController.passwordController),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?"),
                    ],
                  ),
                  SizedBox(height: 15),
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
                  SizedBox(height: 20),
                  Text("OR"),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 90,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(AppIcon.instagram),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Instagram",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 90,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(AppIcon.facebook),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Facebook",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 80,
                            width: 70,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(AppIcon.twitter),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Twitter",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Image.asset(AppImages.splash,height: 150,width: 150,fit: BoxFit.cover,),
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
        ),
      ),
    );
  }
}
