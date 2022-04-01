import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

abstract class Exceptions {
  static String socketException() {
    return "Please check your internet";
  }

  static String authException(FirebaseAuthException e) {
    if (e.code == 'network-request-failed') {
      return 'Please check your internet!';
    } else if (e.code == 'user-not-found') {
      return 'User not found!';
    } else if (e.code == 'wrong-password') {
      return 'Invalid password!';
    } else if (e.code == 'email-already-in-use') {
      return 'This email already in use!';
    } else {
      return e.code.toString();
    }
  }
}

// code => 500
@immutable
class InternalServerErrorException implements Exception {
  const InternalServerErrorException();
}

// code => 400
@immutable
class BadRequestException implements Exception {
  const BadRequestException();
}

// code => 401
@immutable
class UnauthorizedException implements Exception {
  const UnauthorizedException();
}

// code => 404
@immutable
class NotFoundException implements Exception {
  const NotFoundException();
}

// code 405
@immutable
class MethodNotAllowedException implements Exception {
  const MethodNotAllowedException();
}

// code 422
@immutable
class CustomException implements Exception {
  const CustomException({this.data});
  final dynamic data;
}

// code 408
@immutable
class ConnectionTimeoutException implements Exception {
  const ConnectionTimeoutException();
}

// socketException
@immutable
class NoInternetConnectionException implements Exception {
  const NoInternetConnectionException();
}

// HttpException
@immutable
class MyHttpException implements Exception {
  const MyHttpException();
}

// FormatException
@immutable
class MyFormatException implements Exception {
  const MyFormatException();
}

@immutable
class UnknownException implements Exception {
  const UnknownException();
}

@immutable
class AuthenticationException implements Exception {
  const AuthenticationException({required this.message});

  final String message;
}
