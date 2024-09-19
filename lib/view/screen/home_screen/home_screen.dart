import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/home/home_screen.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/home_screen/widget/home_card_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 15),
            Obx(() => SizedBox(
                  height: 165,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeScreenController.homedemoData.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: HomeCardView(
                              image:
                                  "${homeScreenController.homedemoData[index].image}",
                              titel:
                                  "${homeScreenController.homedemoData[index].name}"),
                        );
                      }),
                )),
            SizedBox(height: 25),
            Row(
              children: [
                CommonText(titel: "Category",fWeight: FontWeight.w700,fSize: 18,fColor: Colors.white,)
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
