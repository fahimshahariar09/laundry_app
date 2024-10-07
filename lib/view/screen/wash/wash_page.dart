import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';
import 'package:laundry/view/screen/wash/widget/wash_view_card.dart';

class WashPage extends StatelessWidget {
  const WashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(itemBuilder: (context, index) {
            return WashViewCard(
                onTap: () {},
                image: "image",
                titel: "titel",
                subtitel: "subtitel");
          })
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
    );
  }
}
