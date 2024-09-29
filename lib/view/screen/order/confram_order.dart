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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConfirmationSuccess(
                reactColor: Colors.green,
                child: Text("Order Success!",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 20),
            CommonText(
              titel: "We've successfully accepted \n your order!",
              fSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
