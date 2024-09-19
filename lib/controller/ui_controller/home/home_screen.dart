
import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/home/home_category.dart';
import 'package:laundry/controller/api_controller/home/home_demo.dart';
import 'package:laundry/model/home/home_category_model.dart';
import 'package:laundry/model/home/home_demo_model.dart';

class HomeScreenController extends GetxController {
  RxList<HomeCategories> homecategories = <HomeCategories>[].obs;
  RxList<HomeDemoData> homedemoData = <HomeDemoData>[].obs;
  RxBool isLoading = true.obs;



  homecategoryFun() async {
    isLoading.value = true;
    var category = await HomeCategoryService.homecategoryService();
    homecategories.value = category?.homecategories ?? [];
    isLoading.value = false;
  }


  homedemoFun() async {
    isLoading.value = true;
    var homedemo = await HomeDemoService.homedemoService();
    homedemoData.value = homedemo?.homedemoData ?? [];
    isLoading.value = false;
  }


  @override
  void onInit() {
    homecategoryFun();
    homedemoFun();
    super.onInit();
  }
}
