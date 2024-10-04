
import 'dart:developer';

import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/dry_clean/dry_clean.dart';
import 'package:laundry/model/dry_clean/dry_clean.dart';

class DryCleanController extends GetxController {
  RxList<DryCleanCategories> drycleancategories = <DryCleanCategories>[].obs;

  RxBool isLoading = false.obs;

  dryCleanFun() async {
    isLoading.value = true;
    var dryclean = await DryCleanService.drycleanService();
    drycleancategories.value = dryclean?.drycleancategories ?? [];
    isLoading.value = false;

  }

  @override
  void onInit() {
    dryCleanFun();
    super.onInit();
  }
}
