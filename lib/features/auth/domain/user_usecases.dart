import 'package:binance_api/features/auth/data/user_repository.dart';
import 'package:binance_api/features/auth/domain/user_model.dart';

class UserUseCases {
  final UserRepository userRepository;

  UserUseCases(this.userRepository);

  Future<void> registerUser(String email, String password) async {
    final newUser = User(email: email, password: password);
    await userRepository.saveUser(newUser);
  }

  User? getUser(String email) {
    return userRepository.getUser(email);
  }
}
