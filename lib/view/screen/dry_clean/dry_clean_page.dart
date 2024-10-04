import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/dry_clean/dry_clean.dart';
import 'package:laundry/view/screen/dry_clean/widget/dry_clean_view_card.dart';

class DryCleanPage extends StatelessWidget {
  const DryCleanPage({super.key});

  @override
  Widget build(BuildContext context) {
    DryCleanController dryCleanController = Get.put(DryCleanController());
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Expanded(
              child: ListView.builder(
                  itemCount: dryCleanController.drycleancategories.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return DryCleanViewCard(
                        onTap: () {},
                        image:
                            "${dryCleanController.drycleancategories[index].imageurl}",
                        titel: "${dryCleanController.drycleancategories[index].titel}",
                        subtitel: "${dryCleanController.drycleancategories[index].subtitel}");
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
