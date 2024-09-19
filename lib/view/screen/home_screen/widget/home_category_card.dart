import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class HomeCategoryCard extends StatelessWidget {
  const HomeCategoryCard({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Image.asset("assets/icon/washing.png"),
            ),
            SizedBox(width: 50),
            Column(
              children: [
                CommonText(titel: "name"),
                CommonText(titel: "titel")
              ],
            )
          ],
        ),
      ),
    );
  }
}
