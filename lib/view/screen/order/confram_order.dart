import 'package:confirmation_success/confirmation_success.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/view/screen/bottom_navi_bar/bottom_navi_bar.dart';

class ConframOrder extends StatelessWidget {
  const ConframOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Get.off(const BottomNaviBar());
              },
              child: const ConfirmationSuccess(
                  reactColor: Colors.green,
                  child: Text(
                    "Order Success!",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(height: 30),
            const Text("#2415867 Order No."),
            const SizedBox(height: 15),
            const Text(
              "We've successfully accepted\nyour order!",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
