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
                  SizedBox(height: 10),
                  Image.asset(AppImages.otp),
                  SizedBox(height: 20),
                  CommonText(titel: "OTP VERIFICATION "),
                  SizedBox(height: 10),
                  CommonText(
                    titel: "Please enter the verification code sent to :",
                    fColor: Colors.grey,
                  ),
                  CommonText(titel: "fahim@gmail.com"),
                  SizedBox(
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
                  SizedBox(height: 20),
                  CustomTimer(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
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
                  SizedBox(height: 25),
                  Obx(() => verificationController.isLoading.value
                      ? CommonButton(
                          buttonName: "Verification",
                          onTap: () {
                            verificationController.verficationFun();
                            Get.to(NewPassword());
                          })
                      : CircularProgressIndicator()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
