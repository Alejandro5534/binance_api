import 'package:binance_api/features/auth/domain/user_model.dart';
import 'package:hive/hive.dart';

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    return User(
      email: reader.readString(),
      password: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.writeString(obj.email);
    writer.writeString(obj.password);
  }
}
