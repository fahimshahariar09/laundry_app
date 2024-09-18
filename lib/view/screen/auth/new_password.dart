import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/auth/new_password.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/sign_in.dart';
import 'package:laundry/view/screen/auth/widget/confram_pass_text_field.dart';
import 'package:laundry/view/screen/auth/widget/password_text_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    NewPasswordController newPasswordController =
        Get.put(NewPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Back"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 15),
                const Row(
                  children: [
                    CommonText(
                      titel: "Create New Password",
                      fWeight: FontWeight.w600,
                      fSize: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Your new password must be different from previous used passwords.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 25),
                PasswordTextField(
                    passController: newPasswordController.newpassController),
                const SizedBox(height: 20),
                ConframPassTextField(
                    conframpasswordController:
                        newPasswordController.conframpassController),
                const SizedBox(height: 30),
                Obx(() => newPasswordController.isLoading.value
                    ? CommonButton(
                        buttonName: "Reset Password",
                        onTap: () {
                          Get.offAll(const SignIn());
                        })
                    : const CircularProgressIndicator()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
