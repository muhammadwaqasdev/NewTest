class UserModel {
  bool? success;
  String? token;
  String? imagePath;
  Data? data;

  UserModel({this.success, this.token, this.imagePath, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    token = json['token'];
    imagePath = json['image_path'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['token'] = this.token;
    data['image_path'] = this.imagePath;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  String? image;
  Null? emailVerifiedAt;
  int? isAdmin;
  int? isVerified;
  int? status;
  String? createdAt;
  String? updatedAt;
  Null? deletedAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.image,
      this.emailVerifiedAt,
      this.isAdmin,
      this.isVerified,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'];
    emailVerifiedAt = json['email_verified_at'];
    isAdmin = json['is_admin'];
    isVerified = json['is_verified'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['image'] = this.image;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['is_admin'] = this.isAdmin;
    data['is_verified'] = this.isVerified;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
