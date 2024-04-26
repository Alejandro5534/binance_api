import 'package:binance_api/core/data/local/local_storage.dart';
import 'package:binance_api/features/auth/domain/user_model.dart';

class UserRepository {
  final LocalStorage storage;

  UserRepository(this.storage);

  Future<void> saveUser(User user) async {
    await storage.addUser(user);
  }

  User? getUser(String email) {
    return storage.getUserByEmail(email);
  }
}
