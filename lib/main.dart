

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/view/screen/auth/sign_in.dart';
import 'package:laundry/view/screen/auth/sign_up.dart';
import 'package:laundry/view/screen/splash/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
