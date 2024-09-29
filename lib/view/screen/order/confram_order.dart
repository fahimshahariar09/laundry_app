import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class ConframOrder extends StatelessWidget {
  const ConframOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: Column(
       children: [
         CommonText(titel: "Order Successful"),
       ],
     ),
    );
  }
}
