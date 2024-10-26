import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/dry_clean/dry_clean.dart';
import 'package:laundry/view/screen/category/category_detalis.dart';
import 'package:laundry/view/screen/dry_clean/widget/dry_clean_view_card.dart';

class DryCleanPage extends StatelessWidget {
  const DryCleanPage({super.key});

  @override
  Widget build(BuildContext context) {
    DryCleanController dryCleanController = Get.put(DryCleanController());
    return Scaffold(
      backgroundColor: const Color(0xff6DA0C2),
      appBar: AppBar(
        title: const Text("Dry Clean"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    itemCount: dryCleanController.drycleancategories.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: DryCleanViewCard(
                            onTap: () {
                              Get.to(const CategoryDetalis());
                            },
                            image:
                                "${dryCleanController.drycleancategories[index].imageurl}",
                            titel:
                                "${dryCleanController.drycleancategories[index].titel}",
                            subtitel:
                                "${dryCleanController.drycleancategories[index].subtitel}"),
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
