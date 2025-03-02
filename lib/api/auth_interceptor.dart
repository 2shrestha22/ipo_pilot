import 'package:dio/dio.dart';
import 'package:ipo_pilot/storage/storage.dart';

class AuthInterceptor extends InterceptorsWrapper {
  AuthInterceptor(this._storage);

  final Storage _storage;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storage.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers.addAll({'Authorization': token});
    }
    super.onRequest(options, handler);
  }
}
