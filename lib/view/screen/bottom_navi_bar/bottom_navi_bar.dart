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
              color: Colors.white,
              showLabel: true,
              textOverflow: TextOverflow.ellipsis,
              maxLine: 1,
              shadowElevation: 10,
              kBottomRadius: 25,
              notchColor: Colors.red,
              removeMargins: false,
              bottomBarWidth: MediaQuery.sizeOf(context).width,
              showShadow: false,
              durationInMilliSeconds: 300,
              showBottomRadius: true,
              itemLabelStyle: const TextStyle(fontSize: 10, color: Colors.orange),
              elevation: 1,

        bottomBarItems: [
          buildBottomBarItem(icon: Icons.category, label: "Category"),
          buildBottomBarItem(icon: Icons.home, label: "Home"),
          buildBottomBarItem(icon: Icons.person, label: "profile"),
        ], onTap: (index) {
                bottomNaviBarController.pageController.jumpToPage(index);
      },
        kIconSize: 20,
            )
          : null,
    );
  }

  BottomBarItem buildBottomBarItem(
      {required IconData icon, required String label}) {
    return BottomBarItem(
      inActiveItem: Icon(
        icon,
        color: Colors.black,
      ),
      activeItem: Icon(
        icon,
        color: Colors.white,
      ),
      itemLabel: label,
    );
  }
}
