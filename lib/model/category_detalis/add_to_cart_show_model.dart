class AddToCartShowModel {
  List<AddToCartShow>? addtocartShow;

  AddToCartShowModel({this.addtocartShow});

  AddToCartShowModel.fromJson(Map<String, dynamic> json) {
    if (json['addtocartShow'] != null) {
      addtocartShow = <AddToCartShow>[];
      json['addtocartShow'].forEach((v) {
        addtocartShow!.add(AddToCartShow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (addtocartShow != null) {
      data['addtocartShow'] = addtocartShow!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AddToCartShow {
  String? image;
  String? name;
  String? price;

  AddToCartShow({this.image, this.name, this.price});

  AddToCartShow.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}
