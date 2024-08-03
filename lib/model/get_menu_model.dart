class GetMenuModel {
  bool? success;
  String? message;
  List<MenuData>? data;

  GetMenuModel({this.success, this.message, this.data});

  GetMenuModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <MenuData>[];
      json['data'].forEach((v) {
        data!.add(MenuData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuData {
  String? sId;
  String? name;
  String? description;
  int? price;
  String? category;
  String? restaurantId;
  int? estimatedTime;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? photo;

  MenuData(
      {this.sId,
      this.name,
      this.description,
      this.price,
      this.category,
      this.restaurantId,
      this.estimatedTime,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.photo});

  MenuData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    restaurantId = json['restaurantId'];
    estimatedTime = json['estimatedTime'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category'] = this.category;
    data['restaurantId'] = this.restaurantId;
    data['estimatedTime'] = this.estimatedTime;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['photo'] = this.photo;
    return data;
  }
}
