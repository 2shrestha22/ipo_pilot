// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user.dart';

class UserMapper extends ClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static String _$address(User v) => v.address;
  static const Field<User, String> _f$address = Field('address', _$address);
  static String _$clientCode(User v) => v.clientCode;
  static const Field<User, String> _f$clientCode = Field(
    'clientCode',
    _$clientCode,
  );
  static String _$customerTypeCode(User v) => v.customerTypeCode;
  static const Field<User, String> _f$customerTypeCode = Field(
    'customerTypeCode',
    _$customerTypeCode,
  );
  static String _$boid(User v) => v.boid;
  static const Field<User, String> _f$boid = Field(
    'boid',
    _$boid,
    key: r'demat',
  );
  static DateTime _$dematExpiryDate(User v) => v.dematExpiryDate;
  static const Field<User, DateTime> _f$dematExpiryDate = Field(
    'dematExpiryDate',
    _$dematExpiryDate,
  );
  static String _$email(User v) => v.email;
  static const Field<User, String> _f$email = Field('email', _$email);
  static DateTime _$expiredDate(User v) => v.expiredDate;
  static const Field<User, DateTime> _f$expiredDate = Field(
    'expiredDate',
    _$expiredDate,
  );
  static DateTime _$expiredDateStr(User v) => v.expiredDateStr;
  static const Field<User, DateTime> _f$expiredDateStr = Field(
    'expiredDateStr',
    _$expiredDateStr,
  );
  static int _$id(User v) => v.id;
  static const Field<User, int> _f$id = Field('id', _$id);
  static String _$meroShareEmail(User v) => v.meroShareEmail;
  static const Field<User, String> _f$meroShareEmail = Field(
    'meroShareEmail',
    _$meroShareEmail,
  );
  static String _$name(User v) => v.name;
  static const Field<User, String> _f$name = Field('name', _$name);
  static DateTime _$renewedDate(User v) => v.renewedDate;
  static const Field<User, DateTime> _f$renewedDate = Field(
    'renewedDate',
    _$renewedDate,
  );
  static DateTime _$renewedDateStr(User v) => v.renewedDateStr;
  static const Field<User, DateTime> _f$renewedDateStr = Field(
    'renewedDateStr',
    _$renewedDateStr,
  );
  static String _$username(User v) => v.username;
  static const Field<User, String> _f$username = Field('username', _$username);

  @override
  final MappableFields<User> fields = const {
    #address: _f$address,
    #clientCode: _f$clientCode,
    #customerTypeCode: _f$customerTypeCode,
    #boid: _f$boid,
    #dematExpiryDate: _f$dematExpiryDate,
    #email: _f$email,
    #expiredDate: _f$expiredDate,
    #expiredDateStr: _f$expiredDateStr,
    #id: _f$id,
    #meroShareEmail: _f$meroShareEmail,
    #name: _f$name,
    #renewedDate: _f$renewedDate,
    #renewedDateStr: _f$renewedDateStr,
    #username: _f$username,
  };

  static User _instantiate(DecodingData data) {
    return User(
      address: data.dec(_f$address),
      clientCode: data.dec(_f$clientCode),
      customerTypeCode: data.dec(_f$customerTypeCode),
      boid: data.dec(_f$boid),
      dematExpiryDate: data.dec(_f$dematExpiryDate),
      email: data.dec(_f$email),
      expiredDate: data.dec(_f$expiredDate),
      expiredDateStr: data.dec(_f$expiredDateStr),
      id: data.dec(_f$id),
      meroShareEmail: data.dec(_f$meroShareEmail),
      name: data.dec(_f$name),
      renewedDate: data.dec(_f$renewedDate),
      renewedDateStr: data.dec(_f$renewedDateStr),
      username: data.dec(_f$username),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? address,
    String? clientCode,
    String? customerTypeCode,
    String? boid,
    DateTime? dematExpiryDate,
    String? email,
    DateTime? expiredDate,
    DateTime? expiredDateStr,
    int? id,
    String? meroShareEmail,
    String? name,
    DateTime? renewedDate,
    DateTime? renewedDateStr,
    String? username,
  });
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  $R call({
    String? address,
    String? clientCode,
    String? customerTypeCode,
    String? boid,
    DateTime? dematExpiryDate,
    String? email,
    DateTime? expiredDate,
    DateTime? expiredDateStr,
    int? id,
    String? meroShareEmail,
    String? name,
    DateTime? renewedDate,
    DateTime? renewedDateStr,
    String? username,
  }) => $apply(
    FieldCopyWithData({
      if (address != null) #address: address,
      if (clientCode != null) #clientCode: clientCode,
      if (customerTypeCode != null) #customerTypeCode: customerTypeCode,
      if (boid != null) #boid: boid,
      if (dematExpiryDate != null) #dematExpiryDate: dematExpiryDate,
      if (email != null) #email: email,
      if (expiredDate != null) #expiredDate: expiredDate,
      if (expiredDateStr != null) #expiredDateStr: expiredDateStr,
      if (id != null) #id: id,
      if (meroShareEmail != null) #meroShareEmail: meroShareEmail,
      if (name != null) #name: name,
      if (renewedDate != null) #renewedDate: renewedDate,
      if (renewedDateStr != null) #renewedDateStr: renewedDateStr,
      if (username != null) #username: username,
    }),
  );
  @override
  User $make(CopyWithData data) => User(
    address: data.get(#address, or: $value.address),
    clientCode: data.get(#clientCode, or: $value.clientCode),
    customerTypeCode: data.get(#customerTypeCode, or: $value.customerTypeCode),
    boid: data.get(#boid, or: $value.boid),
    dematExpiryDate: data.get(#dematExpiryDate, or: $value.dematExpiryDate),
    email: data.get(#email, or: $value.email),
    expiredDate: data.get(#expiredDate, or: $value.expiredDate),
    expiredDateStr: data.get(#expiredDateStr, or: $value.expiredDateStr),
    id: data.get(#id, or: $value.id),
    meroShareEmail: data.get(#meroShareEmail, or: $value.meroShareEmail),
    name: data.get(#name, or: $value.name),
    renewedDate: data.get(#renewedDate, or: $value.renewedDate),
    renewedDateStr: data.get(#renewedDateStr, or: $value.renewedDateStr),
    username: data.get(#username, or: $value.username),
  );

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl($value, $cast, t);
}
