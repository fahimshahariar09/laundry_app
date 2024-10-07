import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/wash/wash.dart';
import 'package:laundry/model/wash/wash.dart';

class WashService {
  static Future<WashModel?> washservice() async {
    try {
      WashModel data =
          WashModel.fromJson(jsonDecode(jsonEncode(WashList.washList)));
      return data;
    } catch (e) {
      log("error :$e");
    }
    return null;
  }
}
