import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ipo_pilot/api/dto/login_dto.dart';
import 'package:ipo_pilot/storage/encrypt_codec.dart';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:sembast/sembast_io.dart' as sembast;

class Storage {
  final _secureStorage = FlutterSecureStorage();
  // final sembast = Sembast

  Future<void> init() async {
    // get the application documents directory
    final dir = await path_provider.getApplicationDocumentsDirectory();
    // make sure it exists
    await dir.create(recursive: true);
    // build the database path
    final dbPath = path.join(dir.path, 'pilot.db');

    final factory = EncryptedDatabaseFactory(
      databaseFactory: sembast.databaseFactoryIo,
      password: 'myPassword',
    );
    // open the database
    final db = await factory.openDatabase(dbPath);
  }

  Future<void> saveLoginInfo(LoginDto loginDto) async {
    await _secureStorage.write(key: 'login_info', value: loginDto.toJson());
  }

  Future<LoginDto?> getLoginInfo() async {
    final res = await _secureStorage.read(key: 'login_info');
    if (res != null) return LoginDtoMapper.fromJson(res);
    return null;
  }

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    final res = await _secureStorage.read(key: 'token');
    return res;
  }
}
