import 'package:confirmation_success/confirmation_success.dart';
import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class ConframOrder extends StatelessWidget {
  const ConframOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConfirmationSuccess(
                reactColor: Colors.green,
                child: Text("Order Success!",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),)),
            SizedBox(height: 30),
            Text("#2415867 Order No."),
            SizedBox(height: 15),
            Text(
              "We've successfully accepted\nyour order!",
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
