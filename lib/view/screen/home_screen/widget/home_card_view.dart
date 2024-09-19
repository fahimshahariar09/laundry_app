import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class HomeCardView extends StatelessWidget {
  const HomeCardView({
    super.key,
    required this.image,
    required this.titel,
  });

  final String image;
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
            child: Image.asset(image),
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
