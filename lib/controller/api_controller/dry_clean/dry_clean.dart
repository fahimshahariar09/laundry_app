import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/dry_clean/dry_clean.dart';
import 'package:laundry/model/dry_clean/dry_clean.dart';

class DryCleanService {
  static Future<DryCleanModel?> drycleanService() async {
    try {
      DryCleanModel model = DryCleanModel.fromJson(
          jsonDecode(jsonEncode(DryCleanList.drycleanList)));
      return model;
    } catch (e) {
      log("error $e");
    }
    return null;
  }
}
