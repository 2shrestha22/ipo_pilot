/// Base exception class for the app.
class AppException implements Exception {
  AppException([this.message = 'Something went wrong!']);

  final String message;

  @override
  String toString() {
    return message;
  }
}

/// Denotes API related exception.
class ApiException extends AppException {
  ApiException([super.message]);
}

class AuthException extends AppException {
  @override
  String toString() {
    return 'Login failed!';
  }
}
