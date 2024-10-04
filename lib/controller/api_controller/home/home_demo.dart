import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/home/home_demo_list.dart';
import 'package:laundry/model/home/home_demo_model.dart';

class HomeDemoService {
  static Future<HomeDemoModel?> homedemoService() async {
    try {
      HomeDemoModel data = HomeDemoModel.fromJson(
          jsonDecode(jsonEncode(HomeDemoList.homedemoList)));
      return data;
    } catch (e) {
      log("error :$e");
    }
    return null;
  }
}
