
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/view/screen/home_screen/home_screen.dart';
import 'package:laundry/view/screen/home_screen/iron_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  IronPage(),
    );
  }
}
