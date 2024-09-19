

import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/home/home_demo.dart';
import 'package:laundry/model/home/home_demo_model.dart';

class HomeScreenController extends GetxController{
  RxList<HomeDemoData> homedemoData = <HomeDemoData>[].obs;
  RxBool isLoading = true.obs;

  homedemoFun()async{
    isLoading.value =true;
    var homedemo = await HomeDemoService.homedemoService();
    homedemoData.value = homedemo?.homedemoData ?? [];
    isLoading.value =false;
  }

  @override
  void onInit() {
    homedemoFun();
    super.onInit();
  }
}