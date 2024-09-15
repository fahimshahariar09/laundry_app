

import 'package:get/get.dart';

class SplashScreenController extends GetxController{

  Future nextPage()async{
    await Future.delayed(Duration(seconds: 3));

  }
  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}