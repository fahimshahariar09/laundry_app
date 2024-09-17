

class HomeListModel{

  String? imageurl;
  String? name;

  HomeListModel(this.imageurl,this.name);


  HomeListModel.formJson(Map<String,dynamic> json){
    imageurl = json["imageurl"];
    name = json["name"];
  }

}