import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/iron/iron.dart';
import 'package:laundry/view/screen/iron/widget/iron_view_card.dart';

class IronPage extends StatelessWidget {
  const IronPage({super.key});

  @override
  Widget build(BuildContext context) {
    IronController ironController = Get.put(IronController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(()=>Expanded(
              child: ListView.builder(
                  itemCount: ironController.ironcategories.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var data = ironController.ironcategories[index];
                    return IronViewCard(
                        onTap: () {},
                        image: "${data.imageurl}",
                        titel: "${data.titel}",
                        subtitel: "${data.subtitel}");
                  }),
            )),
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
            //       const Column(
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
      ),
    );
  }
}
