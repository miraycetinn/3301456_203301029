class UserModel {
  final String fullName;
  final String email;
  final String password;
  String image;

  UserModel(
      {required this.fullName,
      required this.email,
      required this.password,
      this.image = " "});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        fullName: json["fullName"],
        email: json["email"],
        password: json["password"],
        image: json["image"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["fullName"] = fullName;
    data["email"] = email;
    data["password"] = password;
    data["image"] = image;
    return data;
  }
}
