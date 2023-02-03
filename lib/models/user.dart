class User {
  User({
    this.name,
    this.email,
    this.online,
    this.uid,
  });

  final String? name;
  final String? email;
  final bool? online;
  final String? uid;

  User copyWith({
    String? name,
    String? email,
    bool? online,
    String? uid,
  }) =>
      User(
        name: name ?? this.name,
        email: email ?? this.email,
        online: online ?? this.online,
        uid: uid ?? this.uid,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        online: json["online"],
        uid: json["uid"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "online": online,
        "uid": uid,
      };
}
