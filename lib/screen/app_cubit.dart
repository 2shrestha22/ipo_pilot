import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ipo_pilot/api/dto/login_dto.dart';
import 'package:ipo_pilot/api/repo.dart';
import 'package:ipo_pilot/app_exception.dart';
import 'package:ipo_pilot/screen/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(error: null));

  final _repo = Repo();

  Future<void> login({
    required int clientId,
    required String username,
    required String password,
  }) async {
    try {
      emit(state.copyWith(loginStatus: MutationStatus.loading));
      final token = await _repo.login(
        LoginDto(clientId: clientId, username: username, password: password),
      );

      // after login we save token in memory
      emit(
        state.copyWith(
          token: token,

          loginStatus: MutationStatus.success,
          queryStatus: QueryStatus.loading,
        ),
      );

      final user = await _repo.fetchProfile();
      final issues = await _repo.fetchIssues(user.boid);
      final banks = await _repo.fetchBanks();

      emit(
        state.copyWith(
          user: user,
          issues: issues,
          banks: banks,
          queryStatus: QueryStatus.success,
        ),
      );
    } on AppException catch (e) {
      emit(state.copyWith(error: e, token: null));
    }
  }

  Future<void> apply() async {
    final user = state.user!;
    // await _repo.apply(
    //   boid: user.boid,
    //   accountNumber: accountNumber,
    //   customerId: customerId,
    //   accountBranchId: accountBranchId,
    //   accountTypeId: accountTypeId,
    //   appliedKitta: appliedKitta,
    //   crnNumber: crnNumber,
    //   transactionPIN: transactionPIN,
    //   companyShareId: companyShareId,
    //   bankId: bankId,
    // );
  }
}
