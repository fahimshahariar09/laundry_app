import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/dry_clean/dry_clean.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/dry_clean/widget/dry_clean_view_card.dart';

class DryCleanPage extends StatelessWidget {
  const DryCleanPage({super.key});

  @override
  Widget build(BuildContext context) {
    DryCleanController dryCleanController =Get.put(DryCleanController());
    return Scaffold(
      body: Column(
        children: [
          Obx(()=>Expanded(
            child: ListView.builder(
                itemCount: dryCleanController.drycleancategories.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  log("message");
                  return DryCleanViewCard(
                      onTap: () {},
                      image: "${dryCleanController.drycleancategories[index].imageurl}",
                      titel: "titel",
                      subtitel: "subtitel");
                }),
          ),),
          // Container(
          //   height: 120,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color: Colors.white
          //   ),
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(5),
          //         child: SizedBox(
          //           height: 80,
          //           width: 80,
          //           child: Image.asset("assets/icon/dry.png",fit: BoxFit.cover,),
          //         ),
          //       ),
          //       const SizedBox(width: 30),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           CommonText(titel: "titel",fSize: 20,),
          //           CommonText(titel: "subtitel",fSize: 15,),
          //         ],
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
