import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/splash/splash_screen.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: Color(0xff6DA0C2),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.splash,height: 150,width: 150,fit: BoxFit.cover,),
                  SizedBox(height: 10),
                  Text("Laundry App"),
                  CommonText(titel: "titel"),
                  CommonButton(buttonName: "buttonName", onTap: (){})

                ],
              ),
            ),
          );
        },
    );
  }
}
