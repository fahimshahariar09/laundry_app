import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/dry_clean/dry_clean.dart';
import 'package:laundry/model/dry_clean/dry_clean.dart';

class DryCleanService {
  static Future<DryCleanModel?> drycleanService() async {
    try {
      log("message22222222222222222");
      DryCleanModel model = DryCleanModel.fromJson(
          jsonDecode(jsonEncode(DryCleanList.drycleanList)));
      log("55555555555$model");
      return model;
    } catch (e) {
      log("error $e");
    }
    return null;
  }
}
