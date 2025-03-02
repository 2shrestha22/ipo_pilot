import 'package:dart_mappable/dart_mappable.dart';
part 'issue.mapper.dart';

@MappableClass()
class Issue with IssueMappable {
  Issue({
    required this.companyShareId,
    required this.subGroup,
    required this.scrip,
    required this.companyName,
    required this.shareTypeName,
    required this.shareGroupName,
    required this.statusName,
    required this.issueOpenDate,
    required this.issueCloseDate,
    required this.minUnit,
    required this.maxUnit,
    required this.multipleOf,
    required this.pricePerUnit,
    required this.canApply,
  });

  final int companyShareId;
  final String subGroup;
  final String scrip;
  final String companyName;
  final String shareTypeName;
  final String shareGroupName;
  final String statusName;
  final String issueOpenDate;
  final String issueCloseDate;
  final int minUnit;
  final int maxUnit;
  final int multipleOf;
  final bool canApply;

  @MappableField(key: 'sharePerUnit')
  final int pricePerUnit;
}
