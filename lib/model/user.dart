import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  User({
    required this.address,
    required this.clientCode,
    required this.customerTypeCode,
    required this.boid,
    required this.dematExpiryDate,
    required this.email,
    required this.expiredDate,
    required this.expiredDateStr,
    required this.id,
    required this.meroShareEmail,
    required this.name,
    required this.renewedDate,
    required this.renewedDateStr,
    required this.username,
  });

  final String address;

  final String clientCode;
  final String customerTypeCode;

  /// It is BOID (16 digit)
  @MappableField(key: 'demat')
  final String boid;
  final DateTime dematExpiryDate;
  final String email;
  final DateTime expiredDate;
  final DateTime expiredDateStr;
  final int id;
  final String meroShareEmail;
  final String name;
  final DateTime renewedDate;
  final DateTime renewedDateStr;
  final String username;
}
