class HomeCategoryModel {
  List<HomeCategories>? homecategories;

  HomeCategoryModel({this.homecategories});

  HomeCategoryModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      homecategories = <HomeCategories>[];
      json['categories'].forEach((v) {
        homecategories!.add(HomeCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homecategories != null) {
      data['categories'] = homecategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeCategories {
  String? image;
  String? name;
  String? tittle;

  HomeCategories({this.image, this.name, this.tittle});

  HomeCategories.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    tittle = json['tittle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['tittle'] = tittle;
    return data;
  }
}
