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

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}

class AllUsers {
  final List<User> users;

  AllUsers({this.users});

  factory AllUsers.fromJson(List<dynamic> json) {
    List<User> users = new List<User>();
    users = json.map((i) => User.fromJson(i)).toList();
    return new AllUsers(
      users: users,
    );
  }
}
