
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
          child: SingleChildScrollView(
            child: Form(
              key: signInController.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const CommonText(titel: "Sign In", fSize: 20, fColor: Colors.white),
                  const SizedBox(height: 50),
                  EmailTextField(
                    emailController: signInController.emailController,
                  ),
                  const SizedBox(height: 20),
                  PasswordTextField(
                    passController: signInController.passwordController,
                    icon: const Icon(
                      Icons.visibility,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forget Password?"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Obx(() => signInController.isLoading.isFalse
                      ? CommonButton(
                          buttonName: "Sign In",
                          onTap: () {
                            if (!signInController.formKey.currentState!
                                .validate()) {
                              return;
                            }
                            signInController.signinFun();
                          })
                      : const CommonLoadingButton()),
                  const SizedBox(height: 20),
                  const Text("OR"),
                  const SizedBox(height: 20),
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
                                const SizedBox(height: 3),
                                const Text(
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
                                const SizedBox(height: 3),
                                const Text(
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
                                const SizedBox(height: 3),
                                const Text(
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
                  const SizedBox(
                    height: 10
                  ),
                  Image.asset(
                    AppImages.splash,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  const Row(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
