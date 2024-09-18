import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/auth/verification.dart';
import 'package:laundry/view/screen/auth/widget/verifiy_text_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationController verificationController =Get.put(VerificationController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
           Image.asset(AppImages.otp),
           Row(
             children: [
               VerifiyTextField(verifiyController: verificationController.numController,),
               VerifiyTextField(verifiyController: verificationController.num1Controller,),
               VerifiyTextField(verifiyController: verificationController.num2Controller,),
               VerifiyTextField(verifiyController: verificationController.num3Controller,),
             ],
           )
          ],
        ),
      ),
    );
  }
}
