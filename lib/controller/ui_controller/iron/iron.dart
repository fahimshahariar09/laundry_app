

import 'package:get/get.dart';
import 'package:laundry/model/iron/iron.dart';

class IronController extends GetxController{
  RxList<IronCategories> ironcategories =<IronCategories>[].obs;
  RxBool isLoading =true.obs;
}