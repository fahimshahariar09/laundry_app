import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/category/category_detalis.dart';
import 'package:laundry/view/common_widget/common_button.dart';
import 'package:laundry/view/common_widget/common_text_field.dart';
import 'package:laundry/view/screen/category/widget/category_view_card.dart';

class CategoryDetalis extends StatelessWidget {
  const CategoryDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryDetalisController categoryDetalisController =
        Get.put(CategoryDetalisController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            CommonTextField(
                searchController: categoryDetalisController.searchController),
            SizedBox(height: 20),
            Obx(() => categoryDetalisController.isLoading.isFalse
                ? Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: categoryDetalisController.category.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CategoryViewCard(
                                imagesurl:
                                    "${categoryDetalisController.category[index].image}",
                                name:
                                    "Name: ${categoryDetalisController.category[index].name}",
                                titel:
                                    "Price: ${categoryDetalisController.category[index].price}",
                                rating:
                                    "Rating: ${categoryDetalisController.category[index].rating}"),
                          );
                        }),
                  )
                : CircularProgressIndicator()),
            CommonButton(buttonName: "Add To Cart", onTap: () {})
          ],
        ),
      ),
    );
  }
}
