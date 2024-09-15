import 'package:flutter/material.dart';

class SamePassTextField extends StatelessWidget {
  const SamePassTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red,width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: "Confram-Password",
      ),
      validator: (value){
        if(value ==''|| value == null){
          return "Confram-Password can't be empty";
        }
        return null;
      },
    );
  }
}
