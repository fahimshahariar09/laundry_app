class WashModel {
  List<WashCategories>? washcategories;

  WashModel({this.washcategories});

  WashModel.fromJson(Map<String, dynamic> json) {
    if (json['washcategories'] != null) {
      washcategories = <WashCategories>[];
      json['washcategories'].forEach((v) {
        washcategories!.add(WashCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (washcategories != null) {
      data['washcategories'] = washcategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class WashCategories {
  String? imageurl;
  String? titel;
  String? subtitel;

  WashCategories({this.imageurl, this.titel, this.subtitel});

  WashCategories.fromJson(Map<String, dynamic> json) {
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
