class HomeDemoModel {
  List<HomeDemoData>? homedemoData;

  HomeDemoModel({this.homedemoData});

  HomeDemoModel.fromJson(Map<String, dynamic> json) {
    if (json['demoData'] != null) {
      homedemoData = <HomeDemoData>[];
      json['demoData'].forEach((v) {
        homedemoData!.add(HomeDemoData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homedemoData != null) {
      data['demoData'] = homedemoData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeDemoData {
  String? image;
  String? name;

  HomeDemoData({this.image, this.name});

  HomeDemoData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}
