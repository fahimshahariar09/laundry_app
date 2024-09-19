import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    this.lText,
    required this.searchController,
    this.icon,
  });

  final TextEditingController searchController;

  final String? lText;
  final Icon? icon;

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
          suffixIcon: Icon(Icons.search)),
    );
  }
}
