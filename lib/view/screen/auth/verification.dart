import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/auth/verification.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/common_widget/custom_timer.dart';
import 'package:laundry/view/screen/auth/new_password.dart';
import 'package:laundry/view/screen/auth/widget/verifiy_text_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationController verificationController =
        Get.put(VerificationController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Image.asset(AppImages.otp),
                  const SizedBox(height: 20),
                  const CommonText(titel: "OTP VERIFICATION "),
                  const SizedBox(height: 10),
                  const CommonText(
                    titel: "Please enter the verification code sent to :",
                    fColor: Colors.grey,
                  ),
                  const CommonText(titel: "fahim@gmail.com"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      VerifiyTextField(
                        verifiyController: verificationController.numController,
                      ),
                      VerifiyTextField(
                        verifiyController:
                            verificationController.num1Controller,
                      ),
                      VerifiyTextField(
                        verifiyController:
                            verificationController.num2Controller,
                      ),
                      VerifiyTextField(
                        verifiyController:
                            verificationController.num3Controller,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CustomTimer(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        titel: "Don't receive code? ",
                        fColor: Colors.grey,
                      ),
                      CommonText(
                        titel: "Re-send",
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Obx(() => verificationController.isLoading.value
                      ? CommonButton(
                          buttonName: "Verification",
                          onTap: () {
                            verificationController.verficationFun();
                            Get.to(const NewPassword());
                          })
                      : const CircularProgressIndicator()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
