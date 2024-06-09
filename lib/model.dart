class User {
  final int id;
  final String name;
  final String email;

  User({
    required this.id,
    required this.name,
    required this.email,
  });

  static User fromJson(Map<String, dynamic> data) {
    return User(
      id: data["id"],
      name: data["name"],
      email: data["email"],
    );
  }
}
