

import 'package:get/get.dart';
import 'package:laundry/view/screen/welcome/welcome_page.dart';

class SplashScreenController extends GetxController{

  Future nextPage()async{
    await Future.delayed(const Duration(seconds: 5));
    Get.to(const WelcomePage());

  }
  @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}