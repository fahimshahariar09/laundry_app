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
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          Obx(()=>  SizedBox(
            height: 150,
            width: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeScreenController.homeList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(
                          "${homeScreenController.homeList[index].imageurl}",
                          height: 80,
                          width: 80,
                        ),
                        const Text("0"),
                      ],
                    ),
                  );
                }),
          )),
        ],
      ),
    );
  }



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
}
