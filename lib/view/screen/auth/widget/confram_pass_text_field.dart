import 'package:flutter/material.dart';

class ConframPassTextField extends StatelessWidget {
  const ConframPassTextField({
    super.key,
    required this.conframpasswordController,
    this.icon,
  });

  final TextEditingController conframpasswordController;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: conframpasswordController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: "Confram Password",
        suffixIcon: icon ?? const Icon(Icons.visibility),
      ),
      validator: (value) {
        if (value == '' || value == null) {
          return "Confram-Password can't be empty";
        }
        return null;
      },
    );
  }
}
