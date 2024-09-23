


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{

  //language

  RxString selectedLanguage = "BD".obs;
  RxList<String> languageList =<String>[
    "BD",
    "US",
    "India",
  ].obs;

  changeLanguageFun(){
    String local = "en";
    switch(selectedLanguage.value) {
      case "BD":
        local = "bn";
        break;
      case "India":
        local = "hi";
        break;
      default:
        local ="en";
    }
  }

  //dark and light
  RxBool isLigthTheme =true.obs;
  changeThemeFun()async{
    isLigthTheme.value =!isLigthTheme.value;
    Get.changeTheme(!isLigthTheme.value ? ThemeData.light() : ThemeData.dark());
  }

}