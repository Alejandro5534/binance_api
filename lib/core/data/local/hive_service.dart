import 'package:binance_api/core/data/local/local_storage.dart';
import 'package:binance_api/features/auth/domain/user_model.dart';
import 'package:hive/hive.dart';

class HiveService implements LocalStorage {
  Box<User> get userBox => Hive.box<User>('userBox');

  @override
  Future<void> addUser(User user) async {
    await userBox.add(user);
  }

  @override
  User? getUserByEmail(String email) {
    for (User user in userBox.values) {
      if (user.email == email) {
        return user;
      }
    }
    return null;
  }
}
