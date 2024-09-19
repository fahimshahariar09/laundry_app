import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class CategoryViewCard extends StatelessWidget {
  const CategoryViewCard(
      {super.key,
      required this.imagesurl,
      required this.name,
      required this.titel,
      required this.rating});

  final String imagesurl;
  final String name;
  final String titel;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(
        children: [
          Card(
            elevation: 1,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset(imagesurl),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonText(
                titel: name,
                fSize: 20,
              ),
              CommonText(
                titel: titel,
                fSize: 15,
              ),
              CommonText(titel: rating),
            ],
          )
        ],
      ),
    );
  }
}
