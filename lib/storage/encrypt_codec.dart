import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';
import 'package:hashlib/hashlib.dart';
// ignore: implementation_imports
import 'package:sembast/src/api/v2/sembast.dart';

final _random = () {
  try {
    // Try secure
    return Random.secure();
  } catch (_) {
    return Random();
  }
}();

/// Random bytes generator
Uint8List _randBytes(int length) {
  return Uint8List.fromList(
    List<int>.generate(length, (i) => _random.nextInt(256)),
  );
}

Uint8List _generateEncryptPassword(String password) {
  var blob = Uint8List.fromList(
    argon2id(password.codeUnits, _randBytes(16), hashLength: 16).bytes,
  );
  assert(blob.length == 16);
  return blob;
}

class _EncryptEncoder extends Converter<Object?, String> {

  _EncryptEncoder(this.aes);
  final AES aes;

  @override
  String convert(dynamic input) {
    // Generate random initial value
    final iv = _randBytes(16);
    final ivEncoded = base64.encode(iv);
    assert(ivEncoded.length == 24);

    // Encode the input value
    final encoded =
        Encrypter(aes).encrypt(json.encode(input), iv: IV(iv)).base64;

    // Prepend the initial value
    return '$ivEncoded$encoded';
  }
}

class _EncryptDecoder extends Converter<String, Object?> {

  _EncryptDecoder(this.aes);
  final AES aes;

  @override
  dynamic convert(String input) {
    // Read the initial value that was prepended
    assert(input.length >= 12);
    final iv = base64.decode(input.substring(0, 12));

    // Extract the real input
    input = input.substring(12);

    // Decode the input
    var decoded = json.decode(Encrypter(aes).decrypt64(input, iv: IV(iv)));
    if (decoded is Map) {
      return decoded.cast<String, Object?>();
    }
    return decoded;
  }
}

/// Salsa20 based Codec
class _EncryptCodec extends Codec<Object?, String> {

  _EncryptCodec(Uint8List passwordBytes) {
    var aes = AES(Key(passwordBytes), mode: AESMode.gcm);
    _encoder = _EncryptEncoder(aes);
    _decoder = _EncryptDecoder(aes);
  }
  late _EncryptEncoder _encoder;
  late _EncryptDecoder _decoder;

  @override
  Converter<String, Object?> get decoder => _decoder;

  @override
  Converter<Object?, String> get encoder => _encoder;
}

/// Our plain text signature
const _encryptCodecSignature = 'encrypt';

/// Create a codec to use to open a database with encrypted stored data.
///
/// Hash (md5) of the password is used (but never stored) as a key to encrypt
/// the data using the Salsa20 algorithm with a random (8 bytes) initial value
///
/// This is just used as a demonstration and should not be considered as a
/// reference since its implementation (and storage format) might change.
///
/// No performance metrics has been made to check whether this is a viable
/// solution for big databases.
///
/// The usage is then
///
/// ```dart
/// // Initialize the encryption codec with a user password
/// var codec = getEncryptSembastCodec(password: '[your_user_password]');
/// // Open the database with the codec
/// Database db = await factory.openDatabase(dbPath, codec: codec);
///
/// // ...your database is ready to use
/// ```
SembastCodec getEncryptSembastCodec({required String password}) => SembastCodec(
  signature: _encryptCodecSignature,
  codec: _EncryptCodec(_generateEncryptPassword(password)),
);

/// Wrap a factory to always use the codec
class EncryptedDatabaseFactory implements DatabaseFactory {

  EncryptedDatabaseFactory({
    required this.databaseFactory,
    required String password,
  }) {
    codec = getEncryptSembastCodec(password: password);
  }
  final DatabaseFactory databaseFactory;
  late final SembastCodec codec;

  @override
  Future<void> deleteDatabase(String path) =>
      databaseFactory.deleteDatabase(path);

  @override
  bool get hasStorage => databaseFactory.hasStorage;

  /// To use with codec, null
  @override
  Future<Database> openDatabase(
    String path, {
    int? version,
    OnVersionChangedFunction? onVersionChanged,
    DatabaseMode? mode,
    SembastCodec? codec,
  }) {
    assert(codec == null);
    return databaseFactory.openDatabase(
      path,
      version: version,
      onVersionChanged: onVersionChanged,
      mode: mode,
      codec: this.codec,
    );
  }

  @override
  Future<bool> databaseExists(String path) {
    return databaseFactory.databaseExists(path);
  }
}
