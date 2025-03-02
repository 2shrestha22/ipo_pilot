import 'package:dart_mappable/dart_mappable.dart';
part 'bank.mapper.dart';

@MappableClass()
class Bank with BankMappable {
  Bank({
    required this.accountBranchId,
    required this.accountNumber,
    required this.accountTypeId,
    required this.accountTypeName,
    required this.branchName,
    required this.id,
  });

  final int accountBranchId;
  final String accountNumber;
  final int accountTypeId;
  final String accountTypeName;
  final String branchName;
  final int id;
}
