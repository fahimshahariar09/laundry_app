
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/icon.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/auth/sign_up.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_loading_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/sign_in.dart';
import 'package:laundry/view/screen/auth/widget/email_text_field.dart';
import 'package:laundry/view/screen/auth/widget/name_text_field.dart';
import 'package:laundry/view/screen/auth/widget/password_text_field.dart';
import 'package:laundry/view/screen/auth/widget/confram_pass_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      //backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: signUpController.formKey,
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const CommonText(
                      titel: "Sign Up", fSize: 20, fColor: Colors.white),
                  const SizedBox(height: 20),
                  NameTextField(
                      nameController: signUpController.nameController),
                  const SizedBox(height: 15),
                  EmailTextField(
                    emailController: signUpController.emailController,
                  ),
                  const SizedBox(height: 15),
                  PasswordTextField(
                    passController: signUpController.passwordController,
                    icon: const Icon(
                      Icons.visibility,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ConframPassTextField(
                    conframpasswordController:
                        signUpController.conframpasswordController,
                    icon: const Icon(Icons.visibility),
                  ),
                  const SizedBox(height: 15),
                  Obx(() => signUpController.isLoading.isFalse
                      ? CommonButton(
                          buttonName: "Sign Up",
                          onTap: () {
                            if (!signUpController.formKey.currentState!
                                .validate()) {
                              return;
                            }
                            signUpController.signupFun();
                          })
                      : const CommonLoadingButton()),
                  const SizedBox(height: 15),
                  const Text("OR"),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 70,
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
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 70,
                            width: 90,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(AppIcon.facebook),
                                ),
                                const SizedBox(height: 3),
                                const Text(
                                  "Facebook",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(AppIcon.twitter),
                                ),
                                const SizedBox(height: 3),
                                const Text(
                                  "Twitter",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //SizedBox(height: 10),
                  Image.asset(
                    AppImages.splash,
                    height: 130,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CommonText(
                        titel: "Don't have an Account? ",
                        fColor: Colors.white,
                        fWeight: FontWeight.w400,
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(const SignIn());
                        },
                        child: const CommonText(
                          titel: "Sign In",
                          fColor: Colors.black,
                        ),
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
