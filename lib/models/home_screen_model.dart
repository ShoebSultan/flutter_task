// To parse this JSON data, do
//
//     final homeScreenModel = homeScreenModelFromJson(jsonString);

import 'dart:convert';

List<HomeScreenModel> homeScreenModelFromJson(String str) =>
    List<HomeScreenModel>.from(
        json.decode(str).map((x) => HomeScreenModel.fromJson(x)));

String homeScreenModelToJson(List<HomeScreenModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeScreenModel {
  HomeScreenModel({
    required this.id,
    required this.title,
    required this.subPaths,
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  final String? id;
  final String? title;
  final List<SubPath>? subPaths;
  final DateTime? createdAt;
  final String? name;
  final String? avatar;

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) =>
      HomeScreenModel(
        id: json["id"],
        title: json["title"],
        subPaths: json["sub_paths"] == null
            ? null
            : List<SubPath>.from(
                json["sub_paths"].map((x) => SubPath.fromJson(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        name: json["name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "sub_paths": subPaths == null
            ? null
            : List<dynamic>.from(subPaths!.map((x) => x.toJson())),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "name": name,
        "avatar": avatar,
      };
}

class SubPath {
  SubPath({
    required this.id,
    required this.title,
    required this.image,
  });

  final String? id;
  final String? title;
  final String? image;

  factory SubPath.fromJson(Map<String, dynamic> json) => SubPath(
        id: json["id"],
        title: json["title"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
      };
}


/* 
path:{
       "id": "String",
       "title": "String",
       "sub_paths": []//every path have list of  sub_paths
}
sub_path:{
               "id": "String",
               "title": "Strings",
               "image": "String"
      

class HomeScreenModel {
  final String? id;
  final String? title;
  // ignore: non_constant_identifier_names
  final SubPath? sub_paths;

  // ignore: non_constant_identifier_names
  HomeScreenModel({this.id, this.title, this.sub_paths});

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) {
    return HomeScreenModel(
      id: json['id'],
      title: json['title'],
      sub_paths: SubPath.fromJson(json['sub_paths']),
    );
  }
}

class SubPath {
  final String? id;
  final String? title;
  final String? image;

  SubPath({this.id, this.title, this.image});

  factory SubPath.fromJson(Map<String, dynamic> json) {
    return SubPath(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
}
*/