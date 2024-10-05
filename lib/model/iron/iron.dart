class IronModel {
  List<IronCategories>? ironcategories;

  IronModel({this.ironcategories});

  IronModel.fromJson(Map<String, dynamic> json) {
    if (json['ironcategories'] != null) {
      ironcategories = <IronCategories>[];
      json['ironcategories'].forEach((v) {
        ironcategories!.add(IronCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ironcategories != null) {
      data['ironcategories'] = ironcategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IronCategories {
  String? imageurl;
  String? titel;
  String? subtitel;

  IronCategories({this.imageurl, this.titel, this.subtitel});

  IronCategories.fromJson(Map<String, dynamic> json) {
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
