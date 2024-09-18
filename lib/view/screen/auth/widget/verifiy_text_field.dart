import 'package:flutter/material.dart';

class VerifiyTextField extends StatelessWidget {
  const VerifiyTextField({
    super.key,
    required this.verifiyController,
  });

  final TextEditingController verifiyController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        controller: verifiyController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.grey
        ),
      ),
    );
  }
}
