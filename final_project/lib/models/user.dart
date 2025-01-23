class User {
  final String email;
  final String password;
  final bool isAdmin;
  final String name;

  User({
    required this.email,
    required this.password,
    this.isAdmin = false,
    required this.name,
  });
} 