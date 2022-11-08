class GalleryModel {
  bool? success;
  List<Gallery>? gallery;
  String? imagePath;

  GalleryModel({this.success, this.gallery, this.imagePath});

  GalleryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['gallery'] != null) {
      gallery = <Gallery>[];
      json['gallery'].forEach((v) {
        gallery!.add(new Gallery.fromJson(v));
      });
    }
    imagePath = json['image_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.gallery != null) {
      data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();
    }
    data['image_path'] = this.imagePath;
    return data;
  }
}

class Gallery {
  int? id;
  String? name;
  String? image;
  String? createdAt;
  String? updatedAt;

  Gallery({this.id, this.name, this.image, this.createdAt, this.updatedAt});

  Gallery.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
