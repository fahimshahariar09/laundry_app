import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/splash/splash_screen.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: const Color(0xff6DA0C2),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.splash,height: 150,width: 150,fit: BoxFit.cover,),
                  const SizedBox(height: 15),
                  const CommonText(titel: "Laundry App",fSize: 20,fWeight: FontWeight.w600,fColor: Color(0xffF5F5F5),),

                ],
              ),
            ),
          );
        },
    );
  }
}
