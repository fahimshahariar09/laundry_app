class HomeCategoryModel {
  List<HomeCategories>? homecategories;

  HomeCategoryModel({this.homecategories});

  HomeCategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['homecategories'] != null) {
      homecategories = <HomeCategories>[];
      json['homecategories'].forEach((v) {
        homecategories!.add(HomeCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homecategories != null) {
      data['homecategories'] = homecategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeCategories {
  String? imageurl;
  String? titel;
  String? subtitel;

  HomeCategories({this.imageurl, this.titel, this.subtitel});

  HomeCategories.fromJson(Map<String, dynamic> json) {
    imageurl = json['imageurl'];
    titel = json['titel'];
    subtitel = json['subtitel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageurl'] = imageurl;
    data['titel'] = titel;
    data['subtitel'] = subtitel;
    return data;
  }
}
