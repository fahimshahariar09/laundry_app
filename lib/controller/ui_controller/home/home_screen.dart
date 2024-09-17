

import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/home/home_screen.dart';
import 'package:laundry/model/home/home_list_model.dart';

class HomeScreenController extends GetxController{
  List<HomeListModel> homeList =[];
  RxBool isLoading = true.obs;

  homedemoFun()async{
    isLoading.value =true;
    homeList = await HomeScreenService.homescreenService();
    isLoading.value =false;
  }

  @override
  void onInit() {
    homedemoFun();
    super.onInit();
  }
}