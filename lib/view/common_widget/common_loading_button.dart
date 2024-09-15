import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonLoadingButton extends StatelessWidget {
  const CommonLoadingButton({super.key, this.buttonHeight, this.buttonWidth});

  final double? buttonHeight;
  final double? buttonWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight ?? 50,
      width: buttonWidth ?? MediaQuery.sizeOf(context).width,
      child: CircularProgressIndicator(
        backgroundColor: Colors.orange,
        color: Colors.black,
      ),
    );
  }
}
