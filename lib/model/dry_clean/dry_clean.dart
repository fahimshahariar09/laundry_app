class DryCleanModel {
  List<DryCleanCategories>? drycleancategories;

  DryCleanModel({this.drycleancategories});

  DryCleanModel.fromJson(Map<String, dynamic> json) {
    if (json['homecategories'] != null) {
      drycleancategories = <DryCleanCategories>[];
      json['homecategories'].forEach((v) {
        drycleancategories!.add(DryCleanCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (drycleancategories != null) {
      data['homecategories'] = drycleancategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DryCleanCategories {
  String? imageurl;
  String? titel;
  String? subtitel;

  DryCleanCategories({this.imageurl, this.titel, this.subtitel});

  DryCleanCategories.fromJson(Map<String, dynamic> json) {
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
