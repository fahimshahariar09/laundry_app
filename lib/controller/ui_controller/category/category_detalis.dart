

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/category/category_detalis.dart';
import 'package:laundry/model/category_details.dart';

class CategoryDetalisController extends GetxController{
  TextEditingController searchController =TextEditingController();
  RxBool isLoading =true.obs;
  RxList<CategoryDetails> category =<CategoryDetails>[].obs;

  categorydetailsFun()async{
    isLoading.value =true;
    var data = await CategoryDetalisService.categorydetalisService();
    category.value = data?.categoryDetails ??[];
    isLoading.value =false;
  }

  @override
  void onInit() {
    categorydetailsFun();
    super.onInit();
  }

}