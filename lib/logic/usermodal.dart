class User {
  final id;
  final name;
  final username;
  final email;

  User({
    this.id,
    this.name,
    this.username,
    this.email,
  });

  //create album from json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}
