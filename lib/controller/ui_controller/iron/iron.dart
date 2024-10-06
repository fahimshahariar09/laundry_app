import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/iron/iron.dart';
import 'package:laundry/model/iron/iron.dart';

class IronController extends GetxController {
  RxList<IronCategories> ironcategories = <IronCategories>[].obs;
  RxBool isLoading = true.obs;

  ironFun() async {
    isLoading.value = true;
    var iron = await IronService.ironservice();
    ironcategories.value = iron?.ironcategories ?? [];
    isLoading.value = false;
  }

  @override
  void onInit() {
    ironFun();
    super.onInit();
  }

}
