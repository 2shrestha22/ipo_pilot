// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'bank.dart';

class BankMapper extends ClassMapperBase<Bank> {
  BankMapper._();

  static BankMapper? _instance;
  static BankMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BankMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Bank';

  static int _$accountBranchId(Bank v) => v.accountBranchId;
  static const Field<Bank, int> _f$accountBranchId = Field(
    'accountBranchId',
    _$accountBranchId,
  );
  static String _$accountNumber(Bank v) => v.accountNumber;
  static const Field<Bank, String> _f$accountNumber = Field(
    'accountNumber',
    _$accountNumber,
  );
  static int _$accountTypeId(Bank v) => v.accountTypeId;
  static const Field<Bank, int> _f$accountTypeId = Field(
    'accountTypeId',
    _$accountTypeId,
  );
  static String _$accountTypeName(Bank v) => v.accountTypeName;
  static const Field<Bank, String> _f$accountTypeName = Field(
    'accountTypeName',
    _$accountTypeName,
  );
  static String _$branchName(Bank v) => v.branchName;
  static const Field<Bank, String> _f$branchName = Field(
    'branchName',
    _$branchName,
  );
  static int _$id(Bank v) => v.id;
  static const Field<Bank, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<Bank> fields = const {
    #accountBranchId: _f$accountBranchId,
    #accountNumber: _f$accountNumber,
    #accountTypeId: _f$accountTypeId,
    #accountTypeName: _f$accountTypeName,
    #branchName: _f$branchName,
    #id: _f$id,
  };

  static Bank _instantiate(DecodingData data) {
    return Bank(
      accountBranchId: data.dec(_f$accountBranchId),
      accountNumber: data.dec(_f$accountNumber),
      accountTypeId: data.dec(_f$accountTypeId),
      accountTypeName: data.dec(_f$accountTypeName),
      branchName: data.dec(_f$branchName),
      id: data.dec(_f$id),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Bank fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Bank>(map);
  }

  static Bank fromJson(String json) {
    return ensureInitialized().decodeJson<Bank>(json);
  }
}

mixin BankMappable {
  String toJson() {
    return BankMapper.ensureInitialized().encodeJson<Bank>(this as Bank);
  }

  Map<String, dynamic> toMap() {
    return BankMapper.ensureInitialized().encodeMap<Bank>(this as Bank);
  }

  BankCopyWith<Bank, Bank, Bank> get copyWith =>
      _BankCopyWithImpl(this as Bank, $identity, $identity);
  @override
  String toString() {
    return BankMapper.ensureInitialized().stringifyValue(this as Bank);
  }

  @override
  bool operator ==(Object other) {
    return BankMapper.ensureInitialized().equalsValue(this as Bank, other);
  }

  @override
  int get hashCode {
    return BankMapper.ensureInitialized().hashValue(this as Bank);
  }
}

extension BankValueCopy<$R, $Out> on ObjectCopyWith<$R, Bank, $Out> {
  BankCopyWith<$R, Bank, $Out> get $asBank =>
      $base.as((v, t, t2) => _BankCopyWithImpl(v, t, t2));
}

abstract class BankCopyWith<$R, $In extends Bank, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? accountBranchId,
    String? accountNumber,
    int? accountTypeId,
    String? accountTypeName,
    String? branchName,
    int? id,
  });
  BankCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BankCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Bank, $Out>
    implements BankCopyWith<$R, Bank, $Out> {
  _BankCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Bank> $mapper = BankMapper.ensureInitialized();
  @override
  $R call({
    int? accountBranchId,
    String? accountNumber,
    int? accountTypeId,
    String? accountTypeName,
    String? branchName,
    int? id,
  }) => $apply(
    FieldCopyWithData({
      if (accountBranchId != null) #accountBranchId: accountBranchId,
      if (accountNumber != null) #accountNumber: accountNumber,
      if (accountTypeId != null) #accountTypeId: accountTypeId,
      if (accountTypeName != null) #accountTypeName: accountTypeName,
      if (branchName != null) #branchName: branchName,
      if (id != null) #id: id,
    }),
  );
  @override
  Bank $make(CopyWithData data) => Bank(
    accountBranchId: data.get(#accountBranchId, or: $value.accountBranchId),
    accountNumber: data.get(#accountNumber, or: $value.accountNumber),
    accountTypeId: data.get(#accountTypeId, or: $value.accountTypeId),
    accountTypeName: data.get(#accountTypeName, or: $value.accountTypeName),
    branchName: data.get(#branchName, or: $value.branchName),
    id: data.get(#id, or: $value.id),
  );

  @override
  BankCopyWith<$R2, Bank, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BankCopyWithImpl($value, $cast, t);
}
