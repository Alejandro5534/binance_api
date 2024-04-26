import 'package:binance_api/features/auth/data/user_adapter.dart';
import 'package:binance_api/features/auth/domain/user_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveInit {
  static Future<void> initializeHive() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter(UserAdapter());
    await Hive.openBox<User>('userBox');
  }
}
