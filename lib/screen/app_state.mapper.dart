// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_state.dart';

class AppStateMapper extends ClassMapperBase<AppState> {
  AppStateMapper._();

  static AppStateMapper? _instance;
  static AppStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppStateMapper._());
      UserMapper.ensureInitialized();
      IssueMapper.ensureInitialized();
      BankMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppState';

  static AppException? _$error(AppState v) => v.error;
  static const Field<AppState, AppException> _f$error = Field(
    'error',
    _$error,
    opt: true,
  );
  static String? _$token(AppState v) => v.token;
  static const Field<AppState, String> _f$token = Field(
    'token',
    _$token,
    opt: true,
  );
  static MutationStatus _$loginStatus(AppState v) => v.loginStatus;
  static const Field<AppState, MutationStatus> _f$loginStatus = Field(
    'loginStatus',
    _$loginStatus,
    opt: true,
    def: MutationStatus.idle,
  );
  static User? _$user(AppState v) => v.user;
  static const Field<AppState, User> _f$user = Field('user', _$user, opt: true);
  static List<Issue>? _$issues(AppState v) => v.issues;
  static const Field<AppState, List<Issue>> _f$issues = Field(
    'issues',
    _$issues,
    opt: true,
  );
  static List<Bank>? _$banks(AppState v) => v.banks;
  static const Field<AppState, List<Bank>> _f$banks = Field(
    'banks',
    _$banks,
    opt: true,
  );
  static QueryStatus _$queryStatus(AppState v) => v.queryStatus;
  static const Field<AppState, QueryStatus> _f$queryStatus = Field(
    'queryStatus',
    _$queryStatus,
    opt: true,
    def: QueryStatus.loading,
  );

  @override
  final MappableFields<AppState> fields = const {
    #error: _f$error,
    #token: _f$token,
    #loginStatus: _f$loginStatus,
    #user: _f$user,
    #issues: _f$issues,
    #banks: _f$banks,
    #queryStatus: _f$queryStatus,
  };

  static AppState _instantiate(DecodingData data) {
    return AppState(
      error: data.dec(_f$error),
      token: data.dec(_f$token),
      loginStatus: data.dec(_f$loginStatus),
      user: data.dec(_f$user),
      issues: data.dec(_f$issues),
      banks: data.dec(_f$banks),
      queryStatus: data.dec(_f$queryStatus),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AppState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppState>(map);
  }

  static AppState fromJson(String json) {
    return ensureInitialized().decodeJson<AppState>(json);
  }
}

mixin AppStateMappable {
  String toJson() {
    return AppStateMapper.ensureInitialized().encodeJson<AppState>(
      this as AppState,
    );
  }

  Map<String, dynamic> toMap() {
    return AppStateMapper.ensureInitialized().encodeMap<AppState>(
      this as AppState,
    );
  }

  AppStateCopyWith<AppState, AppState, AppState> get copyWith =>
      _AppStateCopyWithImpl(this as AppState, $identity, $identity);
  @override
  String toString() {
    return AppStateMapper.ensureInitialized().stringifyValue(this as AppState);
  }

  @override
  bool operator ==(Object other) {
    return AppStateMapper.ensureInitialized().equalsValue(
      this as AppState,
      other,
    );
  }

  @override
  int get hashCode {
    return AppStateMapper.ensureInitialized().hashValue(this as AppState);
  }
}

extension AppStateValueCopy<$R, $Out> on ObjectCopyWith<$R, AppState, $Out> {
  AppStateCopyWith<$R, AppState, $Out> get $asAppState =>
      $base.as((v, t, t2) => _AppStateCopyWithImpl(v, t, t2));
}

abstract class AppStateCopyWith<$R, $In extends AppState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  UserCopyWith<$R, User, User>? get user;
  ListCopyWith<$R, Issue, IssueCopyWith<$R, Issue, Issue>>? get issues;
  ListCopyWith<$R, Bank, BankCopyWith<$R, Bank, Bank>>? get banks;
  $R call({
    AppException? error,
    String? token,
    MutationStatus? loginStatus,
    User? user,
    List<Issue>? issues,
    List<Bank>? banks,
    QueryStatus? queryStatus,
  });
  AppStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppState, $Out>
    implements AppStateCopyWith<$R, AppState, $Out> {
  _AppStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppState> $mapper =
      AppStateMapper.ensureInitialized();
  @override
  UserCopyWith<$R, User, User>? get user =>
      $value.user?.copyWith.$chain((v) => call(user: v));
  @override
  ListCopyWith<$R, Issue, IssueCopyWith<$R, Issue, Issue>>? get issues =>
      $value.issues != null
          ? ListCopyWith(
            $value.issues!,
            (v, t) => v.copyWith.$chain(t),
            (v) => call(issues: v),
          )
          : null;
  @override
  ListCopyWith<$R, Bank, BankCopyWith<$R, Bank, Bank>>? get banks =>
      $value.banks != null
          ? ListCopyWith(
            $value.banks!,
            (v, t) => v.copyWith.$chain(t),
            (v) => call(banks: v),
          )
          : null;
  @override
  $R call({
    Object? error = $none,
    Object? token = $none,
    MutationStatus? loginStatus,
    Object? user = $none,
    Object? issues = $none,
    Object? banks = $none,
    QueryStatus? queryStatus,
  }) => $apply(
    FieldCopyWithData({
      if (error != $none) #error: error,
      if (token != $none) #token: token,
      if (loginStatus != null) #loginStatus: loginStatus,
      if (user != $none) #user: user,
      if (issues != $none) #issues: issues,
      if (banks != $none) #banks: banks,
      if (queryStatus != null) #queryStatus: queryStatus,
    }),
  );
  @override
  AppState $make(CopyWithData data) => AppState(
    error: data.get(#error, or: $value.error),
    token: data.get(#token, or: $value.token),
    loginStatus: data.get(#loginStatus, or: $value.loginStatus),
    user: data.get(#user, or: $value.user),
    issues: data.get(#issues, or: $value.issues),
    banks: data.get(#banks, or: $value.banks),
    queryStatus: data.get(#queryStatus, or: $value.queryStatus),
  );

  @override
  AppStateCopyWith<$R2, AppState, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AppStateCopyWithImpl($value, $cast, t);
}
