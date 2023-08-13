class SuccessStories {
  final int? statusCode;
  final bool? success;
  final String? message;
  final List<Model>? model;

  SuccessStories({
    this.statusCode,
    this.success,
    this.message,
    this.model,
  });

  factory SuccessStories.fromJson(Map<String, dynamic> json) => SuccessStories(
        statusCode: json["statusCode"],
        success: json["success"],
        message: json["message"],
        model: json["model"] == null
            ? []
            : List<Model>.from(json["model"]!.map((x) => Model.fromJson(x))),
      );
}

class Model {
  final String? id;
  final String? title;
  final String? image;
  // final DateTime? createdAt;
  final String? createdAt;

  Model({
    this.id,
    this.title,
    this.image,
    this.createdAt,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      // createdAt: json["createdAt"] == null
      //     ? null
      //     : DateTime.parse(json["createdAt"]),
      createdAt: json["createdAt"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        // "createdAt": createdAt?.toIso8601String(),
        "createdAt": createdAt,
      };
}
