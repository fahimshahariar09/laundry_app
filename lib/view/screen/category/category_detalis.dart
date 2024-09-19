import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/category/category_detalis.dart';
import 'package:laundry/view/common_widget/common_text_field.dart';

class CategoryDetalis extends StatelessWidget {
  const CategoryDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryDetalisController categoryDetalisController =Get.put(CategoryDetalisController());
    return Scaffold(
      body: Column(
        children: [
          CommonTextField(searchController: categoryDetalisController.searchController),
        ],
      ),
    );
  }
}

