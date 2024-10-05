import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/iron/iron.dart';
import 'package:laundry/model/iron/iron.dart';

class IronService {
  static Future<IronModel?> ironservice() async {
    try {
      IronModel iron =
          IronModel.fromJson(jsonDecode(jsonEncode(IronList.ironList)));
      return iron;
    } catch (e) {
      log(" error $e");
    }
    return null;
  }
}
