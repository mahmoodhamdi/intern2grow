class User {
  final int id;
  final String username;
  final String password;
  final String gender;
  final String email;
  final String firstName;
  final String lastName;
  User({
    required this.id,
    required this.username,
    required this.password,
    required this.gender,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      password: json['password'],
      gender: json['gender'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
    );
  }
}
