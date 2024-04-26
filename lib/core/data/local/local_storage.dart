import 'package:binance_api/features/auth/domain/user_model.dart';

abstract class LocalStorage {
  Future<void> addUser(User user);
  User? getUserByEmail(String email);
}
