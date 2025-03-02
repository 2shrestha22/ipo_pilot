import 'package:dio/dio.dart';
import 'package:ipo_pilot/api/auth_interceptor.dart';
import 'package:ipo_pilot/api/dto/login_dto.dart';
import 'package:ipo_pilot/app_exception.dart';
import 'package:ipo_pilot/model/bank.dart';
import 'package:ipo_pilot/model/issue.dart';
import 'package:ipo_pilot/model/user.dart';
import 'package:ipo_pilot/storage/storage.dart';

final class MeroShareApi {
  final _dio = Dio(BaseOptions(baseUrl: 'https://backend.cdsc.com.np/api'))
    ..interceptors.add(AuthInterceptor(Storage()));

  Future<String> login(LoginDto dto) => _tryCatchDio(() async {
    final response = await _dio.post(
      '/meroShare/auth',
      options: Options(
        headers: {Headers.contentTypeHeader: Headers.jsonContentType},
      ),
      data: dto.toJson(),
    );
    // token is sent through header
    final accessToken = response.headers.value('authorization');
    if (accessToken == null) throw AuthException();

    return accessToken;
  });

  Future<User> ownDetails() => _tryCatchDio(() async {
    final response = await _dio.get(
      '/meroShare/ownDetail',
      options: Options(
        headers: {Headers.contentTypeHeader: Headers.jsonContentType},
      ),
    );

    return UserMapper.fromMap(response.data);
  });

  Future<List<Issue>> getIssues({required String boid}) =>
      _tryCatchDio(() async {
        final issuesResponse = await _dio.post(
          '/meroShare/companyShare/applicableIssue',
          options: Options(
            headers: {Headers.contentTypeHeader: Headers.jsonContentType},
          ),
          data: {
            'filterFieldParams': [],
            'page': 1,
            'size': 10,
            'searchRoleViewConstants': 'VIEW_APPLICABLE_SHARE',
            'filterDateParams': [],
          },
        );

        final issues = ((issuesResponse.data as Map<String, dynamic>)['object']
                as List)
            .map((e) => Map<String, dynamic>.from(e));

        Future<Map<String, dynamic>> getIssueDetails(int id) async {
          final issueDetailResponse = await _dio.get(
            '/meroShare/active/$id',
            options: Options(
              headers: {Headers.contentTypeHeader: Headers.jsonContentType},
            ),
          );

          return issueDetailResponse.data;
        }

        return await Future.wait(
          issues.map((issue) async {
            // merge the issue item from list api and details api
            final Map<String, dynamic> mergedIssue =
                {}
                  ..addAll(issue)
                  ..addAll(await getIssueDetails(issue['companyShareId']))
                  ..addAll({
                    'canApply': await canApply(
                      companyShareId: issue['companyShareId'],
                      boid: boid,
                    ),
                  });

            return IssueMapper.fromMap(mergedIssue);
          }),
        );
      });

  Future<bool> canApply({required int companyShareId, required String boid}) =>
      _tryCatchDio(() async {
        final response = await _dio.get(
          '/meroShare/applicantForm/customerType/$companyShareId/$boid',
          options: Options(
            headers: {Headers.contentTypeHeader: Headers.jsonContentType},
          ),
        );

        if (response.statusCode == 202) {
          return true;
        }

        return false;
      });

  Future<List<Bank>> getBanks() => _tryCatchDio(() async {
    final bankListResponse = await _dio
        .get(
          '/meroShare/bank',
          options: Options(
            headers: {Headers.contentTypeHeader: Headers.jsonContentType},
          ),
        )
        .then((value) => value.data as List);

    /// it returns list of details
    Future<List> getBankDetail(int id) async {
      final bankDetailResponse = await _dio.get(
        '/meroShare/bank/$id',
        options: Options(
          headers: {Headers.contentTypeHeader: Headers.jsonContentType},
        ),
      );

      return bankDetailResponse.data;
    }

    final futures = bankListResponse.map(
      (e) async => await getBankDetail(e['id']),
    );

    final response = await Future.wait(futures).then(
      (value) => value.fold(
        [],
        (previousValue, element) => [...previousValue, ...element],
      ),
    );
    return response.map((e) => BankMapper.fromMap(e)).toList();
  });

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
  }) => _tryCatchDio(() async {
    final response = await _dio.post(
      '/meroShare/applicantForm/share/apply',
      options: Options(
        headers: {Headers.contentTypeHeader: Headers.jsonContentType},
      ),
      data: {
        'demat': '1301650000378793',
        'boid': '00378793',
        'accountNumber': '01301000710003000001',
        'customerId': 1431787,
        'accountBranchId': 3014,
        'accountTypeId': 1,
        'appliedKitta': '10',
        'crnNumber': '00710003',
        'transactionPIN': '7842',
        'companyShareId': '647',
        'bankId': '39',
      },
    );
  });
}

Future<T> _tryCatchDio<T>(Future<T> Function() fun) async {
  try {
    return await fun();
  } on DioException catch (e) {
    if (e.message != null) throw ApiException(e.message!);
    throw ApiException();
  }
}
