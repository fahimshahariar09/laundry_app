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
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade300,),
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Image.asset(imagesurl),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonText(
                titel: name,
                fColor: Colors.black,
                fSize: 18,
              ),
              SizedBox(height: 3),
              CommonText(
                titel: titel,
                fColor: Colors.blue,
                fSize: 15,
              ),
              SizedBox(height: 3),
              CommonText(
                titel: rating,
                fColor: Colors.amber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
