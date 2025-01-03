import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry/view/screen/cart/cart_screen.dart';
import 'package:laundry/view/screen/home_screen/home_screen.dart';
import 'package:laundry/view/screen/profile/profile_screen.dart';

class BottomNaviBarController extends GetxController {
  final pageController = PageController(initialPage: 0);
  final NotchBottomBarController nController =
      NotchBottomBarController(index: 0);
  RxInt index = 0.obs;
  RxInt maxCount = 3.obs;
  RxInt page = 0.obs;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  RxList<Widget> bottomBarPage = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ].obs;
}
