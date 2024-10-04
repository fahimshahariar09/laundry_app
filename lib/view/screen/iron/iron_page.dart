import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class IronPage extends StatelessWidget {
  const IronPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Image.asset("assets/icon/dry.png",fit: BoxFit.cover,),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(titel: "titel",fSize: 20,),
                      CommonText(titel: "subtitel",fSize: 15,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
