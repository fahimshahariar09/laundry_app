
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/view/screen/bottom_navi_bar/bottom_navi_bar.dart';
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
      home: BottomNaviBar(),
    );
  }
}
