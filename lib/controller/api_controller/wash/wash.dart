import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/wash/wash.dart';
import 'package:laundry/model/wash/wash.dart';

class WashService {
  static Future<WashModel?> washservice() async {
    try {
      WashModel wash =
          WashModel.fromJson(jsonDecode(jsonEncode(WashList.washList)));
      return wash;
    } catch (e) {
      log("error :$e");
    }
    return null;
  }
}
