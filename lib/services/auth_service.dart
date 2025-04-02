import '../models/user.dart';

class AuthService {
  final List<User> _users = [
    User(email: "john.doe@example.com", password: "password123"),
    User(email: "emma.wilson@example.com", password: "secure456"),
  ];

  bool login(String email, String password) {
    return _users
        .any((user) => user.email == email && user.password == password);
  }

  bool register(String email, String password) {
    if (_users.any((user) => user.email == email)) {
      return false;
    }
    _users.add(User(email: email, password: password));
    return true;
  }
}
