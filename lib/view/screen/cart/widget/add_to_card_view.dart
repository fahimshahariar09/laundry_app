import 'package:flutter/material.dart';

class AddToCardView extends StatelessWidget {
  const AddToCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 100,
            child: Image.asset("name"),
          ),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("data"),
              Text("data"),
            ],
          ),

        ],
      ),
    );
  }
}
