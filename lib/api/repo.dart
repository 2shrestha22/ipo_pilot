import 'package:ipo_pilot/api/api.dart';
import 'package:ipo_pilot/api/dto/login_dto.dart';
import 'package:ipo_pilot/model/bank.dart';
import 'package:ipo_pilot/model/issue.dart';
import 'package:ipo_pilot/model/user.dart';
import 'package:ipo_pilot/storage/storage.dart';

class Repo {
  final _apiService = MeroShareApi();
  final _storage = Storage();

  Future<String> login(LoginDto loginDto) async {
    final accessToken = await _apiService.login(loginDto);
    await _storage.saveToken(accessToken);
    return accessToken;
  }

  Future<User> fetchProfile() async {
    return await _apiService.ownDetails();
  }

  Future<List<Issue>> fetchIssues(String boid) async {
    return await _apiService.getIssues(boid: boid);
  }

  Future<List<Bank>> fetchBanks() async {
    return await _apiService.getBanks();
  }

  Future<void> apply({
    required String boid,
    required String accountNumber,
    required int customerId,
    required int accountBranchId,
    required int accountTypeId,
    required int appliedKitta,
    required String crnNumber,
    required String transactionPIN,
    required String companyShareId,
    required String bankId,
  }) async {
    await _apiService.apply(
      boid: boid,
      accountNumber: accountNumber,
      customerId: customerId,
      accountBranchId: accountBranchId,
      accountTypeId: accountTypeId,
      appliedKitta: appliedKitta,
      crnNumber: crnNumber,
      transactionPIN: transactionPIN,
      companyShareId: companyShareId,
      bankId: bankId,
    );
  }
}
