import 'package:dart_mappable/dart_mappable.dart';
import 'package:ipo_pilot/app_exception.dart';
import 'package:ipo_pilot/model/bank.dart';
import 'package:ipo_pilot/model/issue.dart';
import 'package:ipo_pilot/model/user.dart';
part 'app_state.mapper.dart';

@MappableClass()
class AppState with AppStateMappable {
  const AppState({
    this.error,
    this.token,
    this.loginStatus = MutationStatus.idle,
    this.user,
    this.issues,
    this.banks,
    this.queryStatus = QueryStatus.loading,
  });

  final AppException? error;
  final String? token;

  final MutationStatus loginStatus;

  final User? user;
  final List<Issue>? issues;
  final List<Bank>? banks;
  final QueryStatus queryStatus;
}

enum QueryStatus {
  loading,
  success,
  failure;

  bool get isLoading => this == QueryStatus.loading;
  bool get isSuccess => this == QueryStatus.success;
  bool get isFailure => this == QueryStatus.failure;
}

enum MutationStatus {
  idle,
  loading,
  success,
  failure;

  bool get isIdle => this == MutationStatus.idle;
  bool get isLoading => this == MutationStatus.loading;
  bool get isSuccess => this == MutationStatus.success;
  bool get isFailure => this == MutationStatus.failure;
}
