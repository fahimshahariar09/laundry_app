import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/constants/images.dart';
import 'package:laundry/controller/ui_controller/home/home_screen.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/category/category_detalis.dart';
import 'package:laundry/view/screen/home_screen/widget/home_card_view.dart';
import 'package:laundry/view/screen/home_screen/widget/home_category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      appBar: AppBar(
        backgroundColor: const Color(0xff6DA0C2),
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          height: 100,
                          width: 110,
                          color: Colors.white,
                          child: Image.asset(
                            AppImages.iron,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CommonText(titel: "Iron"),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          height: 100,
                          width: 110,
                          color: Colors.white,
                          child: Image.asset(
                            AppImages.wash,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CommonText(titel: "wash"),
                    ],
                  ),
                  Column(
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          height: 100,
                          width: 110,
                          color: Colors.white,
                          child: Image.asset(
                            AppImages.iron,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CommonText(titel: "Iron"),
                    ],
                  )
                ],
              ),
            ),
            // Obx(() => SizedBox(
            //       height: 165,
            //       child: ListView.builder(
            //           scrollDirection: Axis.horizontal,
            //           itemCount: homeScreenController.homedemoData.length,
            //           shrinkWrap: true,
            //           itemBuilder: (context, index) {
            //             return Padding(
            //               padding: const EdgeInsets.all(5),
            //               child: HomeCardView(
            //                   imageurl:
            //                       "${homeScreenController.homedemoData[index].image}",
            //                   titel:
            //                       "${homeScreenController.homedemoData[index].name}"),
            //             );
            //           }),
            //     )),
            const SizedBox(height: 25),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: CommonText(
                    titel: "Category",
                    fWeight: FontWeight.bold,
                    fSize: 22,
                    fColor: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Obx(
              () => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: homeScreenController.homecategories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HomeCategoryCard(
                            image:
                                "${homeScreenController.homecategories[index].imageurl}",
                            titel:
                                "${homeScreenController.homecategories[index].titel}",
                            subtitel:
                                "${homeScreenController.homecategories[index].subtitel}",
                            onTap: () {
                              Get.to(const CategoryDetalis());
                              log("message");
                            },
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
