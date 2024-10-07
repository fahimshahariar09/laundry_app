

import 'package:get/get.dart';
import 'package:laundry/controller/api_controller/wash/wash.dart';
import 'package:laundry/model/wash/wash.dart';

class WashController extends GetxController{

  RxList<WashCategories> washcategories =<WashCategories>[].obs;
  RxBool isLoading =true.obs;

  washFun()async{
    var wash = WashService.washservice();

  }

}