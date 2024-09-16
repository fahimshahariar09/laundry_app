import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/auth/sign_in.dart';
import 'package:laundry/view/screen/auth/sign_up.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.splash,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                const CommonText(titel: "Laundry App",fSize: 20,fWeight: FontWeight.w600,fColor: Color(0xffF5F5F5),),
                const SizedBox(height: 20),
                CommonButton(buttonName: "Create account", onTap: () {Get.to(const SignUp());}),
                const SizedBox(height: 20),
                CommonButton(
                    buttonName: "Sign In",
                    buttonColor: Colors.white,
                    textColor: Colors.blue,
                    onTap: () {
                      Get.to(const SignIn());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
