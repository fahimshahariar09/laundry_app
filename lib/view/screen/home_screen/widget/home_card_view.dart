import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class HomeCardView extends StatelessWidget {
  const HomeCardView({
    super.key,
    required this.imageurl,
    required this.titel,
  });

  final String imageurl;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          color: Colors.cyan,
          child: SizedBox(
            height: 110,
            width: 120,
            child: Image.asset(imageurl),
          ),
        ),
        const SizedBox(height: 5),
        CommonText(
          titel: titel,
          fSize: 18,
          fColor: Colors.black,
          fWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
