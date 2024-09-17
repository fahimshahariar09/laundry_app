import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/home/home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          Obx(()=>homeScreenController.isLoading.isFalse ? Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                children: [
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: homeScreenController.homeList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Image.asset(
                                  "${homeScreenController.homeList[index].imageurl}",
                                  height: 80,
                                  width: 80,
                                ),
                                Text("0"),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ) :CircularProgressIndicator()),
          // SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Obx(() => homeScreenController.isLoading.isFalse
          //         ? StreamBuilder<Object>(
          //           stream: null,
          //           builder: (context, snapshot) {
          //             return Row(
          //               children: [
          //                 ListView.builder(
          //                     itemCount: homeScreenController.homeList.length,
          //                     shrinkWrap: true,
          //                     itemBuilder: (context, index) {
          //                       return Card(
          //                         child: SizedBox(
          //                           height: 150,
          //                           width: 150,
          //                           child: Column(
          //                             children: [
          //                               Image.asset(
          //                                   "${homeScreenController.homeList[index].imageurl}"),
          //                               Text("0"),
          //                             ],
          //                           ),
          //                         ),
          //                       );
          //                     }),
          //               ],
          //             );
          //           }
          //         )
          //         : CircularProgressIndicator()))
        ],
      ),
    );
  }
}
