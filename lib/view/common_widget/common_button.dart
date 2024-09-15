import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.buttonName,
      this.buttonColor,
      this.textColor,
      this.buttonHeight,
      this.buttonWidth, required this.onTap});

  final String buttonName;
  final Color? buttonColor;
  final Color? textColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: buttonHeight ?? 50,
        width: buttonWidth ?? MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor ?? Colors.blue,

        ),
        child: Center(
          child: CommonText(
            titel: buttonName,
            fColor: textColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
