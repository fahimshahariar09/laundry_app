
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/utlis/theme.dart';
import 'package:laundry/view/screen/splash/splash_screen.dart';
import 'package:laundry/view/screen/text_app.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().darkTheme,
      home:  TextApp(),
    );
  }
}
