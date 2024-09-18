import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/auth/new_password.dart';
import 'package:laundry/view/common_widget/common_button.dart';
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
        title: Text("new"),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          PasswordTextField(
              passController: newPasswordController.newpassController),
          SizedBox(height: 15),
          ConframPassTextField(
              conframpasswordController:
                  newPasswordController.conframpassController),
          SizedBox(height: 30),
          Obx(() => newPasswordController.isLoading.value
              ? CommonButton(
                  buttonName: "Next",
                  onTap: () {
                    Get.offAll(SignIn());
                  })
              : CircularProgressIndicator()),
        ],
      ),
    );
  }
}
