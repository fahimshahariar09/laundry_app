import 'package:flutter/material.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/view/common_widget/common_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const SizedBox(height: 20),
                CommonButton(buttonName: "Create account", onTap: () {}),
                const SizedBox(height: 20),
                CommonButton(
                    buttonName: "Sign In",
                    buttonColor: Colors.white,
                    textColor: Colors.blue,
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
