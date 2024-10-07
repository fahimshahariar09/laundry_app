
import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/home/home_category.dart';
import 'package:laundry/model/home/home_category_model.dart';
class HomeScreenController extends GetxController {
  RxList<HomeCategories> homecategories = <HomeCategories>[].obs;
  RxBool isLoading = true.obs;



  homecategoryFun() async {
    isLoading.value = true;
    var category = await HomeCategoryService.homecategoryService();
    homecategories.value = category?.homecategories ?? [];
    isLoading.value = false;
  }


  @override
  void onInit() {
    homecategoryFun();
    super.onInit();
  }
}
