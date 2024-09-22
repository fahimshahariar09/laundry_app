


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{

  RxBool isLigthTheme =true.obs;

  changeThemeFun()async{
    isLigthTheme.value =!isLigthTheme.value;
    Get.changeTheme(!isLigthTheme.value ? ThemeData.light() : ThemeData.dark());
  }

}