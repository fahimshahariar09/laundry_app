

import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/category/add_to_cart_show.dart';
import 'package:laundry/model/category_detalis/add_to_cart_show_model.dart';

class AddToCartShowController extends GetxController{

  RxBool isLoading =false.obs;
  RxList<AddToCartShow> addtocart = <AddToCartShow>[].obs;
  var  count =0.obs;

  addtocartshowFun()async{
    isLoading.value = true;
   var add = await AddToCartShowService.addtocartService();
   addtocart.value = add?.addtocartShow ?? [];
   isLoading.value =false;
  }

  void increment(){
    count++;
  }

  void decrement(){
    count--;
  }

  @override
  void onInit() {
    addtocartshowFun();
    super.onInit();
  }

}