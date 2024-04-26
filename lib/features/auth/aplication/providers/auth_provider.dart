import 'package:binance_api/core/data/local/hive_service.dart';
import 'package:binance_api/features/auth/data/user_repository.dart';
import 'package:binance_api/features/auth/domain/form_validate.dart';
import 'package:binance_api/features/auth/domain/user_usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class SwitchAuth extends _$SwitchAuth {
  @override
  bool build() {
    return false;
  }

  changeAuth() {
    state = !state;
  }
}

@riverpod
class FormValidator extends _$FormValidator with Validators {
  @override
  bool build() {
    return false;
  }

  bool validate(String email, String password, String confirmPassword) {
    return validateEmail(email) &&
        validatePassword(password) &&
        validateConfirmPassword(password, confirmPassword);
  }
}

@riverpod
UserUseCases userUsecases(UserUsecasesRef ref) {
  return UserUseCases(ref.read(userRepositoryProvider));
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  return UserRepository(ref.read(hiveServiceProvider));
}

@riverpod
HiveService hiveService(HiveServiceRef ref) {
  return HiveService();
}
