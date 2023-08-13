class UserModel {
  String? id;
  String? name;
  String? age;
  DateTime? birthday;
  UserModel({
    this.age,
    this.birthday,
    this.id,
    this.name,
  });
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "birthday": birthday,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        age: json["age"],
        birthday: json["birthday"].toDate(),
        id: json["id"],
      );
}
