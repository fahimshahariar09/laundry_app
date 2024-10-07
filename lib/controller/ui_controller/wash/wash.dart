import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/wash/wash.dart';
import 'package:laundry/model/wash/wash.dart';

class WashController extends GetxController {
  RxList<WashCategories> washcategories = <WashCategories>[].obs;
  RxBool isLoading = true.obs;

  washFun() async {
    isLoading.value = true;
    var wash = await WashService.washservice();
    washcategories.value = wash?.washcategories ?? [];
    isLoading.value = false;
  }
}
