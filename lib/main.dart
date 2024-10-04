
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/view/screen/dry_clean/dry_clean_page.dart';
import 'package:laundry/view/screen/home_screen/home_screen.dart';
import 'package:laundry/view/screen/iron/iron_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  DryCleanPage(),
    );
  }
}
