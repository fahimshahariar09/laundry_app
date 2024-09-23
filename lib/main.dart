
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/utils/theme.dart';
import 'package:laundry/view/screen/profile/profile_screen.dart';
import 'package:laundry/view/screen/setting/setting_screen.dart';
import 'package:laundry/view/screen/splash/splash_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().ligthTheme,
      home: SplashScreen(),
    );
  }
}
