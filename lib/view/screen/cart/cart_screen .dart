import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/ui_controller/category/add_to_cart_show.dart';
import 'package:laundry/view/common_widget/common_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AddToCartShowController addToCartShowController =
        Get.put(AddToCartShowController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add To Cart"),
      ),
      body: Column(
        children: [
          Obx(() => addToCartShowController.isLoading.isFalse
              ? Expanded(
                  child: ListView.builder(
                      itemCount: addToCartShowController.addtocart.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Colors.black12,
                          height: 90,
                          child: Row(
                            children: [
                              Card(
                                elevation: 1,
                                child: SizedBox(
                                  height: 80,
                                  width: 80,
                                  child: Image.asset(
                                    "${addToCartShowController.addtocart[index].image}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 30),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CommonText(
                                        titel:
                                            "${addToCartShowController.addtocart[index].name}",fSize: 18,fWeight: FontWeight.w600,),
                                    CommonText(
                                        titel:
                                            "${addToCartShowController.addtocart[index].price}",fWeight: FontWeight.w500,fSize: 16,fColor: Colors.blue,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                )
              : CircularProgressIndicator()),
        ],
      ),
    );
  }
}
