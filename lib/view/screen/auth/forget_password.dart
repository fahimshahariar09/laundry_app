import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/auth/forget_password.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/verification.dart';
import 'package:laundry/view/screen/auth/widget/email_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPasswordController =
        Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("forget password"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Image.asset(
                AppImages.forget,
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  CommonText(
                    titel: "Forget Password?",
                    fWeight: FontWeight.w600,
                    fSize: 18,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                  "Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number."),
              const SizedBox(
                height: 20,
              ),
              EmailTextField(
                emailController: forgetPasswordController.emailController,
              ),
              const SizedBox(height: 15),
              Obx(() => forgetPasswordController.isLoading.value
                  ? CommonButton(
                      buttonName: "Send Otp",
                      onTap: () {
                        forgetPasswordController.forgetpassFun();
                        Get.to(const Verification());
                      })
                  : const CircularProgressIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}
