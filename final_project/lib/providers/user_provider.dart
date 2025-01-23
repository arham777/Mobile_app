import 'package:flutter/foundation.dart';
import '../models/user.dart';

class UserProvider with ChangeNotifier {
  final List<User> _users = [
    // Pre-defined users
    User(
      email: 'admin@food.com',
      password: 'admin123',
      isAdmin: true,
      name: 'Admin',
    ),
    User(
      email: 'arham@gmail.com',
      password: 'arham123',
      isAdmin: false,
      name: 'Arham Athar',
    ),
    User(
      email: 'athar@gmail.com',
      password: 'athar123',
      isAdmin: false,
      name: 'Athar Riaz',
    ),
  ];

  List<User> get users => [..._users];

  User? _currentUser;
  User? get currentUser => _currentUser;

  bool get isAdmin => _currentUser?.email == 'admin@food.com';

  void addUser(User user) {
    if (_users.any((u) => u.email == user.email)) {
      throw Exception('Email already exists');
    }
    _users.add(user);
    notifyListeners();
  }

  bool login(String email, String password) {
    try {
      _currentUser = _users.firstWhere(
        (user) => user.email == email && user.password == password,
      );
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
} 