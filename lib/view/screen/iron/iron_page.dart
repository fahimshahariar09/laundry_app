import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/iron/iron.dart';
import 'package:laundry/view/screen/category/category_detalis.dart';
import 'package:laundry/view/screen/iron/widget/iron_view_card.dart';

class IronPage extends StatelessWidget {
  const IronPage({super.key});

  @override
  Widget build(BuildContext context) {
    IronController ironController = Get.put(IronController());
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      body: SafeArea(
        child: Column(
          children: [
            Obx(()=>Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(scrollDirection: Axis.vertical,
                    itemCount: ironController.ironcategories.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var data = ironController.ironcategories[index];
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: IronViewCard(
                            onTap: () {
                              Get.to(CategoryDetalis());
                            },
                            image: "${data.imageurl}",
                            titel: "${data.titel}",
                            subtitel: "${data.subtitel}"),
                      );
                    }),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
