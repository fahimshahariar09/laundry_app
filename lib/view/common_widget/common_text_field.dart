import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({super.key, this.lText, required this.searchController});

  final TextEditingController searchController;

  final String?  lText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: lText,
      ),
    );
  }
}

