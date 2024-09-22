import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/bottom_navi-i_bar/bottom_navi_bar.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNaviBarController bottomNaviBarController =
        Get.put(BottomNaviBarController());
    return Scaffold(
      body: PageView(
        controller: bottomNaviBarController.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(bottomNaviBarController.bottomBarPage.length,
            (index) => bottomNaviBarController.bottomBarPage[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomNaviBarController.bottomBarPage.length <=
              bottomNaviBarController.maxCount.value)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: bottomNaviBarController.nController,
              color: Colors.blue,
              showLabel: true,
              textOverflow: TextOverflow.ellipsis,
              maxLine: 1,
              shadowElevation: 8,
              kBottomRadius: 20,
              notchColor: Colors.orange,
              removeMargins: false,
              bottomBarWidth: MediaQuery.sizeOf(context).width,
              showShadow: false,
              durationInMilliSeconds: 300,
              showBottomRadius: true,
              itemLabelStyle:
                  const TextStyle(fontSize: 15, color: Colors.black),
              elevation: 1,
              bottomBarItems: [
                buildBottomBarItem(icon: Icons.home, label: "Home"),
                buildBottomBarItem(icon: Icons.shopping_cart_outlined, label: "Cart"),
                buildBottomBarItem(icon: Icons.person, label: "profile"),
                buildBottomBarItem(icon: Icons.settings, label: "Setting"),
              ],
              onTap: (index) {
                bottomNaviBarController.pageController.jumpToPage(index);
              },
              kIconSize: 15,
            )
          : null,
    );
  }

  BottomBarItem buildBottomBarItem({
    required IconData icon,
    required String label,
  }) {
    return BottomBarItem(
      inActiveItem: Icon(
        icon,
        color: Colors.white,
      ),
      activeItem: Icon(
        icon,
        color: Colors.black,
      ),
      itemLabel: label,
    );
  }
}
