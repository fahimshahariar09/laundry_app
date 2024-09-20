import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/category_detalis/category_details.dart';
import 'package:laundry/model/category_detalis/category_details.dart';

class CategoryDetalisService {
  static Future<CategoryDetailsModel?> categorydetalisService() async {
    try {
      CategoryDetailsModel categoryDetalis = CategoryDetailsModel.fromJson(
          jsonDecode(jsonEncode(CategoryDetailsList.categoryDetailsList)));
      return categoryDetalis;
    } catch (e) {
      log("error $e");
    }
    return null;
  }
}
