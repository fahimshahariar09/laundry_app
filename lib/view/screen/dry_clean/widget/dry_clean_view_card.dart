import 'package:flutter/material.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class DryCleanViewCard extends StatelessWidget {
  const DryCleanViewCard({
    super.key,
    required this.onTap,
    required this.image,
    required this.titel,
    required this.subtitel,
  });

  final String image;
  final String titel;
  final String subtitel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              SizedBox(
                height: 80,
                width: 120,
                child: Image.asset(image,fit: BoxFit.cover,),
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(titel: titel,fSize: 20,),
                  CommonText(titel: subtitel,fSize: 15,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
