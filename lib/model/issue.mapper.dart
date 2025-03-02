// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'issue.dart';

class IssueMapper extends ClassMapperBase<Issue> {
  IssueMapper._();

  static IssueMapper? _instance;
  static IssueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = IssueMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Issue';

  static int _$companyShareId(Issue v) => v.companyShareId;
  static const Field<Issue, int> _f$companyShareId = Field(
    'companyShareId',
    _$companyShareId,
  );
  static String _$subGroup(Issue v) => v.subGroup;
  static const Field<Issue, String> _f$subGroup = Field('subGroup', _$subGroup);
  static String _$scrip(Issue v) => v.scrip;
  static const Field<Issue, String> _f$scrip = Field('scrip', _$scrip);
  static String _$companyName(Issue v) => v.companyName;
  static const Field<Issue, String> _f$companyName = Field(
    'companyName',
    _$companyName,
  );
  static String _$shareTypeName(Issue v) => v.shareTypeName;
  static const Field<Issue, String> _f$shareTypeName = Field(
    'shareTypeName',
    _$shareTypeName,
  );
  static String _$shareGroupName(Issue v) => v.shareGroupName;
  static const Field<Issue, String> _f$shareGroupName = Field(
    'shareGroupName',
    _$shareGroupName,
  );
  static String _$statusName(Issue v) => v.statusName;
  static const Field<Issue, String> _f$statusName = Field(
    'statusName',
    _$statusName,
  );
  static String _$issueOpenDate(Issue v) => v.issueOpenDate;
  static const Field<Issue, String> _f$issueOpenDate = Field(
    'issueOpenDate',
    _$issueOpenDate,
  );
  static String _$issueCloseDate(Issue v) => v.issueCloseDate;
  static const Field<Issue, String> _f$issueCloseDate = Field(
    'issueCloseDate',
    _$issueCloseDate,
  );
  static int _$minUnit(Issue v) => v.minUnit;
  static const Field<Issue, int> _f$minUnit = Field('minUnit', _$minUnit);
  static int _$maxUnit(Issue v) => v.maxUnit;
  static const Field<Issue, int> _f$maxUnit = Field('maxUnit', _$maxUnit);
  static int _$multipleOf(Issue v) => v.multipleOf;
  static const Field<Issue, int> _f$multipleOf = Field(
    'multipleOf',
    _$multipleOf,
  );
  static int _$pricePerUnit(Issue v) => v.pricePerUnit;
  static const Field<Issue, int> _f$pricePerUnit = Field(
    'pricePerUnit',
    _$pricePerUnit,
    key: r'sharePerUnit',
  );
  static bool _$canApply(Issue v) => v.canApply;
  static const Field<Issue, bool> _f$canApply = Field('canApply', _$canApply);

  @override
  final MappableFields<Issue> fields = const {
    #companyShareId: _f$companyShareId,
    #subGroup: _f$subGroup,
    #scrip: _f$scrip,
    #companyName: _f$companyName,
    #shareTypeName: _f$shareTypeName,
    #shareGroupName: _f$shareGroupName,
    #statusName: _f$statusName,
    #issueOpenDate: _f$issueOpenDate,
    #issueCloseDate: _f$issueCloseDate,
    #minUnit: _f$minUnit,
    #maxUnit: _f$maxUnit,
    #multipleOf: _f$multipleOf,
    #pricePerUnit: _f$pricePerUnit,
    #canApply: _f$canApply,
  };

  static Issue _instantiate(DecodingData data) {
    return Issue(
      companyShareId: data.dec(_f$companyShareId),
      subGroup: data.dec(_f$subGroup),
      scrip: data.dec(_f$scrip),
      companyName: data.dec(_f$companyName),
      shareTypeName: data.dec(_f$shareTypeName),
      shareGroupName: data.dec(_f$shareGroupName),
      statusName: data.dec(_f$statusName),
      issueOpenDate: data.dec(_f$issueOpenDate),
      issueCloseDate: data.dec(_f$issueCloseDate),
      minUnit: data.dec(_f$minUnit),
      maxUnit: data.dec(_f$maxUnit),
      multipleOf: data.dec(_f$multipleOf),
      pricePerUnit: data.dec(_f$pricePerUnit),
      canApply: data.dec(_f$canApply),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Issue fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Issue>(map);
  }

  static Issue fromJson(String json) {
    return ensureInitialized().decodeJson<Issue>(json);
  }
}

mixin IssueMappable {
  String toJson() {
    return IssueMapper.ensureInitialized().encodeJson<Issue>(this as Issue);
  }

  Map<String, dynamic> toMap() {
    return IssueMapper.ensureInitialized().encodeMap<Issue>(this as Issue);
  }

  IssueCopyWith<Issue, Issue, Issue> get copyWith =>
      _IssueCopyWithImpl(this as Issue, $identity, $identity);
  @override
  String toString() {
    return IssueMapper.ensureInitialized().stringifyValue(this as Issue);
  }

  @override
  bool operator ==(Object other) {
    return IssueMapper.ensureInitialized().equalsValue(this as Issue, other);
  }

  @override
  int get hashCode {
    return IssueMapper.ensureInitialized().hashValue(this as Issue);
  }
}

extension IssueValueCopy<$R, $Out> on ObjectCopyWith<$R, Issue, $Out> {
  IssueCopyWith<$R, Issue, $Out> get $asIssue =>
      $base.as((v, t, t2) => _IssueCopyWithImpl(v, t, t2));
}

abstract class IssueCopyWith<$R, $In extends Issue, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    int? companyShareId,
    String? subGroup,
    String? scrip,
    String? companyName,
    String? shareTypeName,
    String? shareGroupName,
    String? statusName,
    String? issueOpenDate,
    String? issueCloseDate,
    int? minUnit,
    int? maxUnit,
    int? multipleOf,
    int? pricePerUnit,
    bool? canApply,
  });
  IssueCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _IssueCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Issue, $Out>
    implements IssueCopyWith<$R, Issue, $Out> {
  _IssueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Issue> $mapper = IssueMapper.ensureInitialized();
  @override
  $R call({
    int? companyShareId,
    String? subGroup,
    String? scrip,
    String? companyName,
    String? shareTypeName,
    String? shareGroupName,
    String? statusName,
    String? issueOpenDate,
    String? issueCloseDate,
    int? minUnit,
    int? maxUnit,
    int? multipleOf,
    int? pricePerUnit,
    bool? canApply,
  }) => $apply(
    FieldCopyWithData({
      if (companyShareId != null) #companyShareId: companyShareId,
      if (subGroup != null) #subGroup: subGroup,
      if (scrip != null) #scrip: scrip,
      if (companyName != null) #companyName: companyName,
      if (shareTypeName != null) #shareTypeName: shareTypeName,
      if (shareGroupName != null) #shareGroupName: shareGroupName,
      if (statusName != null) #statusName: statusName,
      if (issueOpenDate != null) #issueOpenDate: issueOpenDate,
      if (issueCloseDate != null) #issueCloseDate: issueCloseDate,
      if (minUnit != null) #minUnit: minUnit,
      if (maxUnit != null) #maxUnit: maxUnit,
      if (multipleOf != null) #multipleOf: multipleOf,
      if (pricePerUnit != null) #pricePerUnit: pricePerUnit,
      if (canApply != null) #canApply: canApply,
    }),
  );
  @override
  Issue $make(CopyWithData data) => Issue(
    companyShareId: data.get(#companyShareId, or: $value.companyShareId),
    subGroup: data.get(#subGroup, or: $value.subGroup),
    scrip: data.get(#scrip, or: $value.scrip),
    companyName: data.get(#companyName, or: $value.companyName),
    shareTypeName: data.get(#shareTypeName, or: $value.shareTypeName),
    shareGroupName: data.get(#shareGroupName, or: $value.shareGroupName),
    statusName: data.get(#statusName, or: $value.statusName),
    issueOpenDate: data.get(#issueOpenDate, or: $value.issueOpenDate),
    issueCloseDate: data.get(#issueCloseDate, or: $value.issueCloseDate),
    minUnit: data.get(#minUnit, or: $value.minUnit),
    maxUnit: data.get(#maxUnit, or: $value.maxUnit),
    multipleOf: data.get(#multipleOf, or: $value.multipleOf),
    pricePerUnit: data.get(#pricePerUnit, or: $value.pricePerUnit),
    canApply: data.get(#canApply, or: $value.canApply),
  );

  @override
  IssueCopyWith<$R2, Issue, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _IssueCopyWithImpl($value, $cast, t);
}
