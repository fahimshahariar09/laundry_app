import 'dart:convert';
import 'dart:developer';
import 'package:laundry/database/home/home_category_list.dart';
import 'package:laundry/model/home/home_category_model.dart';

class HomeCategoryService {
  static Future<HomeCategoryModel?> homecategoryService() async {
    try {

      HomeCategoryModel homeCategoryModel = HomeCategoryModel.fromJson(
          jsonDecode(jsonEncode(HomeCategoryList.homecategoryList)));
      return homeCategoryModel;
    } catch (e) {
      log("error :$e");
    }
    return null;
  }
}
