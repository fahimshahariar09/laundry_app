import 'dart:convert';
import 'dart:developer';

import 'package:laundry/database/home/home_list.dart';
import 'package:laundry/model/home/home_list_model.dart';

class HomeScreenService {
  static Future<List<HomeListModel>> homescreenService() async {
    try {
      List<HomeListModel> data =[];
      for(var i in HomeList.homeList['homeList'].toList()){
        var decodeData = HomeListModel.formJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      return data;
    } catch (e) {
      log("error :$e");
    }
    return [];
  }
}
