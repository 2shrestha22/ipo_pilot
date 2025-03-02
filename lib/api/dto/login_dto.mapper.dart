// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'login_dto.dart';

class LoginDtoMapper extends ClassMapperBase<LoginDto> {
  LoginDtoMapper._();

  static LoginDtoMapper? _instance;
  static LoginDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LoginDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LoginDto';

  static int _$clientId(LoginDto v) => v.clientId;
  static const Field<LoginDto, int> _f$clientId = Field('clientId', _$clientId);
  static String _$username(LoginDto v) => v.username;
  static const Field<LoginDto, String> _f$username = Field(
    'username',
    _$username,
  );
  static String _$password(LoginDto v) => v.password;
  static const Field<LoginDto, String> _f$password = Field(
    'password',
    _$password,
  );

  @override
  final MappableFields<LoginDto> fields = const {
    #clientId: _f$clientId,
    #username: _f$username,
    #password: _f$password,
  };

  static LoginDto _instantiate(DecodingData data) {
    return LoginDto(
      clientId: data.dec(_f$clientId),
      username: data.dec(_f$username),
      password: data.dec(_f$password),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static LoginDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LoginDto>(map);
  }

  static LoginDto fromJson(String json) {
    return ensureInitialized().decodeJson<LoginDto>(json);
  }
}

mixin LoginDtoMappable {
  String toJson() {
    return LoginDtoMapper.ensureInitialized().encodeJson<LoginDto>(
      this as LoginDto,
    );
  }

  Map<String, dynamic> toMap() {
    return LoginDtoMapper.ensureInitialized().encodeMap<LoginDto>(
      this as LoginDto,
    );
  }

  LoginDtoCopyWith<LoginDto, LoginDto, LoginDto> get copyWith =>
      _LoginDtoCopyWithImpl(this as LoginDto, $identity, $identity);
  @override
  String toString() {
    return LoginDtoMapper.ensureInitialized().stringifyValue(this as LoginDto);
  }

  @override
  bool operator ==(Object other) {
    return LoginDtoMapper.ensureInitialized().equalsValue(
      this as LoginDto,
      other,
    );
  }

  @override
  int get hashCode {
    return LoginDtoMapper.ensureInitialized().hashValue(this as LoginDto);
  }
}

extension LoginDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, LoginDto, $Out> {
  LoginDtoCopyWith<$R, LoginDto, $Out> get $asLoginDto =>
      $base.as((v, t, t2) => _LoginDtoCopyWithImpl(v, t, t2));
}

abstract class LoginDtoCopyWith<$R, $In extends LoginDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? clientId, String? username, String? password});
  LoginDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LoginDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LoginDto, $Out>
    implements LoginDtoCopyWith<$R, LoginDto, $Out> {
  _LoginDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LoginDto> $mapper =
      LoginDtoMapper.ensureInitialized();
  @override
  $R call({int? clientId, String? username, String? password}) => $apply(
    FieldCopyWithData({
      if (clientId != null) #clientId: clientId,
      if (username != null) #username: username,
      if (password != null) #password: password,
    }),
  );
  @override
  LoginDto $make(CopyWithData data) => LoginDto(
    clientId: data.get(#clientId, or: $value.clientId),
    username: data.get(#username, or: $value.username),
    password: data.get(#password, or: $value.password),
  );

  @override
  LoginDtoCopyWith<$R2, LoginDto, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _LoginDtoCopyWithImpl($value, $cast, t);
}
