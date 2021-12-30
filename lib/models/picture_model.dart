class PictureModel {
  final int? height;
  final int? width;
  final String url;

  PictureModel({required this.height, required this.width, required this.url});

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(
        height: json['height'], width: json['width'], url: json['url']);
  }
}

/* {
    "email" = "dsmr.apps@gmail.com",
    "id" = 3003332493073668,
    "name" = "Darwin Morocho",
    "picture" = {
        "data" = {
            "height" = 50,
            "is_silhouette" = 0,
            "url" = "https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3003332493073668",
            "width" = 50,
        },
    }
} */