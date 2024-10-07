import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/wash/wash.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/wash/widget/wash_view_card.dart';

class WashPage extends StatelessWidget {
  const WashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WashController washController = Get.put(WashController());
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: washController.washcategories.length,
                    itemBuilder: (context, index) {
                      var data =washController.washcategories[index];
                      return WashViewCard(
                          onTap: () {},
                          image:
                              "${data.imageurl}",
                          titel: "${data.titel}",
                          subtitel: "${data.subtitel}");
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
